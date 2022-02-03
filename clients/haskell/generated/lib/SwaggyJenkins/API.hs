{-# LANGUAGE DataKinds                  #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE DeriveTraversable          #-}
{-# LANGUAGE FlexibleContexts           #-}
{-# LANGUAGE FlexibleInstances          #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE OverloadedStrings          #-}
{-# LANGUAGE RecordWildCards            #-}
{-# LANGUAGE TypeFamilies               #-}
{-# LANGUAGE TypeOperators              #-}
{-# LANGUAGE ViewPatterns               #-}
{-# OPTIONS_GHC
-fno-warn-unused-binds -fno-warn-unused-imports -freduction-depth=328 #-}

module SwaggyJenkins.API
  ( -- * Client and Server
    Config(..)
  , SwaggyJenkinsBackend(..)
  , createSwaggyJenkinsClient
  , runSwaggyJenkinsServer
  , runSwaggyJenkinsMiddlewareServer
  , runSwaggyJenkinsClient
  , runSwaggyJenkinsClientWithManager
  , callSwaggyJenkins
  , SwaggyJenkinsClient
  , SwaggyJenkinsClientError(..)
  -- ** Servant
  , SwaggyJenkinsAPI
  -- ** Plain WAI Application
  , serverWaiApplicationSwaggyJenkins
  ) where

import           SwaggyJenkins.Types

import           Control.Monad.Catch                (Exception, MonadThrow, throwM)
import           Control.Monad.Except               (ExceptT, runExceptT)
import           Control.Monad.IO.Class
import           Control.Monad.Trans.Reader         (ReaderT (..))
import           Data.Aeson                         (Value)
import           Data.Coerce                        (coerce)
import           Data.Data                          (Data)
import           Data.Function                      ((&))
import qualified Data.Map                           as Map
import           Data.Monoid                        ((<>))
import           Data.Proxy                         (Proxy (..))
import           Data.Set                           (Set)
import           Data.Text                          (Text)
import qualified Data.Text                          as T
import           Data.Time
import           Data.UUID                          (UUID)
import           GHC.Exts                           (IsString (..))
import           GHC.Generics                       (Generic)
import           Network.HTTP.Client                (Manager, newManager)
import           Network.HTTP.Client.TLS            (tlsManagerSettings)
import           Network.HTTP.Types.Method          (methodOptions)
import           Network.Wai                        (Middleware)
import qualified Network.Wai.Handler.Warp           as Warp
import           Servant                            (ServerError, serve)
import           Servant.API
import           Servant.API.Verbs                  (StdMethod (..), Verb)
import           Servant.Client                     (ClientEnv, Scheme (Http), ClientError, client,
                                                     mkClientEnv, parseBaseUrl)
import           Servant.Client.Core                (baseUrlPort, baseUrlHost)
import           Servant.Client.Internal.HttpClient (ClientM (..))
import           Servant.Server                     (Handler (..), Application)
import           Servant.Server.StaticFiles         (serveDirectoryFileServer)
import           Web.FormUrlEncoded
import           Web.HttpApiData




-- | List of elements parsed from a query.
newtype QueryList (p :: CollectionFormat) a = QueryList
  { fromQueryList :: [a]
  } deriving (Functor, Applicative, Monad, Foldable, Traversable)

-- | Formats in which a list can be encoded into a HTTP path.
data CollectionFormat
  = CommaSeparated -- ^ CSV format for multiple parameters.
  | SpaceSeparated -- ^ Also called "SSV"
  | TabSeparated -- ^ Also called "TSV"
  | PipeSeparated -- ^ `value1|value2|value2`
  | MultiParamArray -- ^ Using multiple GET parameters, e.g. `foo=bar&foo=baz`. Only for GET params.

instance FromHttpApiData a => FromHttpApiData (QueryList 'CommaSeparated a) where
  parseQueryParam = parseSeparatedQueryList ','

instance FromHttpApiData a => FromHttpApiData (QueryList 'TabSeparated a) where
  parseQueryParam = parseSeparatedQueryList '\t'

instance FromHttpApiData a => FromHttpApiData (QueryList 'SpaceSeparated a) where
  parseQueryParam = parseSeparatedQueryList ' '

instance FromHttpApiData a => FromHttpApiData (QueryList 'PipeSeparated a) where
  parseQueryParam = parseSeparatedQueryList '|'

instance FromHttpApiData a => FromHttpApiData (QueryList 'MultiParamArray a) where
  parseQueryParam = error "unimplemented FromHttpApiData for MultiParamArray collection format"

parseSeparatedQueryList :: FromHttpApiData a => Char -> Text -> Either Text (QueryList p a)
parseSeparatedQueryList char = fmap QueryList . mapM parseQueryParam . T.split (== char)

instance ToHttpApiData a => ToHttpApiData (QueryList 'CommaSeparated a) where
  toQueryParam = formatSeparatedQueryList ','

instance ToHttpApiData a => ToHttpApiData (QueryList 'TabSeparated a) where
  toQueryParam = formatSeparatedQueryList '\t'

instance ToHttpApiData a => ToHttpApiData (QueryList 'SpaceSeparated a) where
  toQueryParam = formatSeparatedQueryList ' '

instance ToHttpApiData a => ToHttpApiData (QueryList 'PipeSeparated a) where
  toQueryParam = formatSeparatedQueryList '|'

instance ToHttpApiData a => ToHttpApiData (QueryList 'MultiParamArray a) where
  toQueryParam = error "unimplemented ToHttpApiData for MultiParamArray collection format"

formatSeparatedQueryList :: ToHttpApiData a => Char ->  QueryList p a -> Text
formatSeparatedQueryList char = T.intercalate (T.singleton char) . map toQueryParam . fromQueryList


-- | Servant type-level API, generated from the OpenAPI spec for SwaggyJenkins.
type SwaggyJenkinsAPI
    =    "crumbIssuer" :> "api" :> "json" :> Verb 'GET 200 '[JSON] DefaultCrumbIssuer -- 'getCrumb' route
    :<|> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "pipeline" Text :> "queue" :> Capture "queue" Text :> Verb 'DELETE 200 '[JSON] NoContent -- 'deletePipelineQueueItem' route
    :<|> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "user" :> Verb 'GET 200 '[JSON] User -- 'getAuthenticatedUser' route
    :<|> "blue" :> "rest" :> "classes" :> Capture "class" Text :> Verb 'GET 200 '[JSON] Text -- 'getClasses' route
    :<|> "jwt-auth" :> "jwks" :> Capture "key" Int :> Verb 'GET 200 '[JSON] Text -- 'getJsonWebKey' route
    :<|> "jwt-auth" :> "token" :> QueryParam "expiryTimeInMins" Int :> QueryParam "maxExpiryTimeInMins" Int :> Verb 'GET 200 '[JSON] Text -- 'getJsonWebToken' route
    :<|> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> Verb 'GET 200 '[JSON] Organisation -- 'getOrganisation' route
    :<|> "blue" :> "rest" :> "organizations" :> Verb 'GET 200 '[JSON] [Organisation] -- 'getOrganisations' route
    :<|> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "pipeline" Text :> Verb 'GET 200 '[JSON] Pipeline -- 'getPipeline' route
    :<|> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "pipeline" Text :> "activities" :> Verb 'GET 200 '[JSON] [PipelineActivity] -- 'getPipelineActivities' route
    :<|> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "pipeline" Text :> "branches" :> Capture "branch" Text :> Verb 'GET 200 '[JSON] BranchImpl -- 'getPipelineBranch' route
    :<|> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "pipeline" Text :> "branches" :> Capture "branch" Text :> "runs" :> Capture "run" Text :> Verb 'GET 200 '[JSON] PipelineRun -- 'getPipelineBranchRun' route
    :<|> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "pipeline" Text :> "branches" :> Verb 'GET 200 '[JSON] MultibranchPipeline -- 'getPipelineBranches' route
    :<|> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "folder" Text :> Verb 'GET 200 '[JSON] PipelineFolderImpl -- 'getPipelineFolder' route
    :<|> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "folder" Text :> "pipelines" :> Capture "pipeline" Text :> Verb 'GET 200 '[JSON] PipelineImpl -- 'getPipelineFolderPipeline' route
    :<|> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "pipeline" Text :> "queue" :> Verb 'GET 200 '[JSON] [QueueItemImpl] -- 'getPipelineQueue' route
    :<|> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "pipeline" Text :> "runs" :> Capture "run" Text :> Verb 'GET 200 '[JSON] PipelineRun -- 'getPipelineRun' route
    :<|> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "pipeline" Text :> "runs" :> Capture "run" Text :> "log" :> QueryParam "start" Int :> QueryParam "download" Bool :> Verb 'GET 200 '[JSON] Text -- 'getPipelineRunLog' route
    :<|> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "pipeline" Text :> "runs" :> Capture "run" Text :> "nodes" :> Capture "node" Text :> Verb 'GET 200 '[JSON] PipelineRunNode -- 'getPipelineRunNode' route
    :<|> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "pipeline" Text :> "runs" :> Capture "run" Text :> "nodes" :> Capture "node" Text :> "steps" :> Capture "step" Text :> Verb 'GET 200 '[JSON] PipelineStepImpl -- 'getPipelineRunNodeStep' route
    :<|> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "pipeline" Text :> "runs" :> Capture "run" Text :> "nodes" :> Capture "node" Text :> "steps" :> Capture "step" Text :> "log" :> Verb 'GET 200 '[JSON] Text -- 'getPipelineRunNodeStepLog' route
    :<|> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "pipeline" Text :> "runs" :> Capture "run" Text :> "nodes" :> Capture "node" Text :> "steps" :> Verb 'GET 200 '[JSON] [PipelineStepImpl] -- 'getPipelineRunNodeSteps' route
    :<|> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "pipeline" Text :> "runs" :> Capture "run" Text :> "nodes" :> Verb 'GET 200 '[JSON] [PipelineRunNode] -- 'getPipelineRunNodes' route
    :<|> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "pipeline" Text :> "runs" :> Verb 'GET 200 '[JSON] [PipelineRun] -- 'getPipelineRuns' route
    :<|> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Verb 'GET 200 '[JSON] [Pipeline] -- 'getPipelines' route
    :<|> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "scm" :> Capture "scm" Text :> Verb 'GET 200 '[JSON] GithubScm -- 'getSCM' route
    :<|> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "scm" :> Capture "scm" Text :> "organizations" :> Capture "scmOrganisation" Text :> "repositories" :> QueryParam "credentialId" Text :> QueryParam "pageSize" Int :> QueryParam "pageNumber" Int :> Verb 'GET 200 '[JSON] [GithubOrganization] -- 'getSCMOrganisationRepositories' route
    :<|> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "scm" :> Capture "scm" Text :> "organizations" :> Capture "scmOrganisation" Text :> "repositories" :> Capture "repository" Text :> QueryParam "credentialId" Text :> Verb 'GET 200 '[JSON] [GithubOrganization] -- 'getSCMOrganisationRepository' route
    :<|> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "scm" :> Capture "scm" Text :> "organizations" :> QueryParam "credentialId" Text :> Verb 'GET 200 '[JSON] [GithubOrganization] -- 'getSCMOrganisations' route
    :<|> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "users" :> Capture "user" Text :> Verb 'GET 200 '[JSON] User -- 'getUser' route
    :<|> "blue" :> "rest" :> "users" :> Capture "user" Text :> "favorites" :> Verb 'GET 200 '[JSON] [FavoriteImpl] -- 'getUserFavorites' route
    :<|> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "users" :> Verb 'GET 200 '[JSON] User -- 'getUsers' route
    :<|> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "pipeline" Text :> "runs" :> Capture "run" Text :> "replay" :> Verb 'POST 200 '[JSON] QueueItemImpl -- 'postPipelineRun' route
    :<|> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "pipeline" Text :> "runs" :> Verb 'POST 200 '[JSON] QueueItemImpl -- 'postPipelineRuns' route
    :<|> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "pipeline" Text :> "favorite" :> ReqBody '[JSON] UNKNOWN_BASE_TYPE :> Verb 'PUT 200 '[JSON] FavoriteImpl -- 'putPipelineFavorite' route
    :<|> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "pipeline" Text :> "runs" :> Capture "run" Text :> "stop" :> QueryParam "blocking" Text :> QueryParam "timeOutInSecs" Int :> Verb 'PUT 200 '[JSON] PipelineRun -- 'putPipelineRun' route
    :<|> "blue" :> "rest" :> "search" :> QueryParam "q" Text :> Verb 'GET 200 '[JSON] Text -- 'search' route
    :<|> "blue" :> "rest" :> "classes" :> QueryParam "q" Text :> Verb 'GET 200 '[JSON] Text -- 'searchClasses' route
    :<|> "computer" :> "api" :> "json" :> QueryParam "depth" Int :> Verb 'GET 200 '[JSON] ComputerSet -- 'getComputer' route
    :<|> "api" :> "json" :> Verb 'GET 200 '[JSON] Hudson -- 'getJenkins' route
    :<|> "job" :> Capture "name" Text :> "api" :> "json" :> Verb 'GET 200 '[JSON] FreeStyleProject -- 'getJob' route
    :<|> "job" :> Capture "name" Text :> "config.xml" :> Verb 'GET 200 '[JSON] Text -- 'getJobConfig' route
    :<|> "job" :> Capture "name" Text :> "lastBuild" :> "api" :> "json" :> Verb 'GET 200 '[JSON] FreeStyleBuild -- 'getJobLastBuild' route
    :<|> "job" :> Capture "name" Text :> Capture "number" Text :> "logText" :> "progressiveText" :> QueryParam "start" Text :> Verb 'GET 200 '[JSON] NoContent -- 'getJobProgressiveText' route
    :<|> "queue" :> "api" :> "json" :> Verb 'GET 200 '[JSON] Queue -- 'getQueue' route
    :<|> "queue" :> "item" :> Capture "number" Text :> "api" :> "json" :> Verb 'GET 200 '[JSON] Queue -- 'getQueueItem' route
    :<|> "view" :> Capture "name" Text :> "api" :> "json" :> Verb 'GET 200 '[JSON] ListView -- 'getView' route
    :<|> "view" :> Capture "name" Text :> "config.xml" :> Verb 'GET 200 '[JSON] Text -- 'getViewConfig' route
    :<|> "api" :> "json" :> Verb 'HEAD 200 '[JSON] NoContent -- 'headJenkins' route
    :<|> "createItem" :> QueryParam "name" Text :> QueryParam "from" Text :> QueryParam "mode" Text :> ReqBody '[JSON] Text :> Header "Jenkins-Crumb" Text :> Header "Content-Type" Text :> Verb 'POST 200 '[JSON] NoContent -- 'postCreateItem' route
    :<|> "createView" :> QueryParam "name" Text :> ReqBody '[JSON] Text :> Header "Jenkins-Crumb" Text :> Header "Content-Type" Text :> Verb 'POST 200 '[JSON] NoContent -- 'postCreateView' route
    :<|> "job" :> Capture "name" Text :> "build" :> QueryParam "json" Text :> QueryParam "token" Text :> Header "Jenkins-Crumb" Text :> Verb 'POST 200 '[JSON] NoContent -- 'postJobBuild' route
    :<|> "job" :> Capture "name" Text :> "config.xml" :> ReqBody '[JSON] Text :> Header "Jenkins-Crumb" Text :> Verb 'POST 200 '[JSON] NoContent -- 'postJobConfig' route
    :<|> "job" :> Capture "name" Text :> "doDelete" :> Header "Jenkins-Crumb" Text :> Verb 'POST 200 '[JSON] NoContent -- 'postJobDelete' route
    :<|> "job" :> Capture "name" Text :> "disable" :> Header "Jenkins-Crumb" Text :> Verb 'POST 200 '[JSON] NoContent -- 'postJobDisable' route
    :<|> "job" :> Capture "name" Text :> "enable" :> Header "Jenkins-Crumb" Text :> Verb 'POST 200 '[JSON] NoContent -- 'postJobEnable' route
    :<|> "job" :> Capture "name" Text :> "lastBuild" :> "stop" :> Header "Jenkins-Crumb" Text :> Verb 'POST 200 '[JSON] NoContent -- 'postJobLastBuildStop' route
    :<|> "view" :> Capture "name" Text :> "config.xml" :> ReqBody '[JSON] Text :> Header "Jenkins-Crumb" Text :> Verb 'POST 200 '[JSON] NoContent -- 'postViewConfig' route
    :<|> Raw 


-- | Server or client configuration, specifying the host and port to query or serve on.
data Config = Config
  { configUrl :: String  -- ^ scheme://hostname:port/path, e.g. "http://localhost:8080/"
  } deriving (Eq, Ord, Show, Read)


-- | Custom exception type for our errors.
newtype SwaggyJenkinsClientError = SwaggyJenkinsClientError ClientError
  deriving (Show, Exception)
-- | Configuration, specifying the full url of the service.


-- | Backend for SwaggyJenkins.
-- The backend can be used both for the client and the server. The client generated from the SwaggyJenkins OpenAPI spec
-- is a backend that executes actions by sending HTTP requests (see @createSwaggyJenkinsClient@). Alternatively, provided
-- a backend, the API can be served using @runSwaggyJenkinsMiddlewareServer@.
data SwaggyJenkinsBackend m = SwaggyJenkinsBackend
  { getCrumb :: m DefaultCrumbIssuer{- ^ Retrieve CSRF protection token -}
  , deletePipelineQueueItem :: Text -> Text -> Text -> m NoContent{- ^ Delete queue item from an organization pipeline queue -}
  , getAuthenticatedUser :: Text -> m User{- ^ Retrieve authenticated user details for an organization -}
  , getClasses :: Text -> m Text{- ^ Get a list of class names supported by a given class -}
  , getJsonWebKey :: Int -> m Text{- ^ Retrieve JSON Web Key -}
  , getJsonWebToken :: Maybe Int -> Maybe Int -> m Text{- ^ Retrieve JSON Web Token -}
  , getOrganisation :: Text -> m Organisation{- ^ Retrieve organization details -}
  , getOrganisations :: m [Organisation]{- ^ Retrieve all organizations details -}
  , getPipeline :: Text -> Text -> m Pipeline{- ^ Retrieve pipeline details for an organization -}
  , getPipelineActivities :: Text -> Text -> m [PipelineActivity]{- ^ Retrieve all activities details for an organization pipeline -}
  , getPipelineBranch :: Text -> Text -> Text -> m BranchImpl{- ^ Retrieve branch details for an organization pipeline -}
  , getPipelineBranchRun :: Text -> Text -> Text -> Text -> m PipelineRun{- ^ Retrieve branch run details for an organization pipeline -}
  , getPipelineBranches :: Text -> Text -> m MultibranchPipeline{- ^ Retrieve all branches details for an organization pipeline -}
  , getPipelineFolder :: Text -> Text -> m PipelineFolderImpl{- ^ Retrieve pipeline folder for an organization -}
  , getPipelineFolderPipeline :: Text -> Text -> Text -> m PipelineImpl{- ^ Retrieve pipeline details for an organization folder -}
  , getPipelineQueue :: Text -> Text -> m [QueueItemImpl]{- ^ Retrieve queue details for an organization pipeline -}
  , getPipelineRun :: Text -> Text -> Text -> m PipelineRun{- ^ Retrieve run details for an organization pipeline -}
  , getPipelineRunLog :: Text -> Text -> Text -> Maybe Int -> Maybe Bool -> m Text{- ^ Get log for a pipeline run -}
  , getPipelineRunNode :: Text -> Text -> Text -> Text -> m PipelineRunNode{- ^ Retrieve run node details for an organization pipeline -}
  , getPipelineRunNodeStep :: Text -> Text -> Text -> Text -> Text -> m PipelineStepImpl{- ^ Retrieve run node details for an organization pipeline -}
  , getPipelineRunNodeStepLog :: Text -> Text -> Text -> Text -> Text -> m Text{- ^ Get log for a pipeline run node step -}
  , getPipelineRunNodeSteps :: Text -> Text -> Text -> Text -> m [PipelineStepImpl]{- ^ Retrieve run node steps details for an organization pipeline -}
  , getPipelineRunNodes :: Text -> Text -> Text -> m [PipelineRunNode]{- ^ Retrieve run nodes details for an organization pipeline -}
  , getPipelineRuns :: Text -> Text -> m [PipelineRun]{- ^ Retrieve all runs details for an organization pipeline -}
  , getPipelines :: Text -> m [Pipeline]{- ^ Retrieve all pipelines details for an organization -}
  , getSCM :: Text -> Text -> m GithubScm{- ^ Retrieve SCM details for an organization -}
  , getSCMOrganisationRepositories :: Text -> Text -> Text -> Maybe Text -> Maybe Int -> Maybe Int -> m [GithubOrganization]{- ^ Retrieve SCM organization repositories details for an organization -}
  , getSCMOrganisationRepository :: Text -> Text -> Text -> Text -> Maybe Text -> m [GithubOrganization]{- ^ Retrieve SCM organization repository details for an organization -}
  , getSCMOrganisations :: Text -> Text -> Maybe Text -> m [GithubOrganization]{- ^ Retrieve SCM organizations details for an organization -}
  , getUser :: Text -> Text -> m User{- ^ Retrieve user details for an organization -}
  , getUserFavorites :: Text -> m [FavoriteImpl]{- ^ Retrieve user favorites details for an organization -}
  , getUsers :: Text -> m User{- ^ Retrieve users details for an organization -}
  , postPipelineRun :: Text -> Text -> Text -> m QueueItemImpl{- ^ Replay an organization pipeline run -}
  , postPipelineRuns :: Text -> Text -> m QueueItemImpl{- ^ Start a build for an organization pipeline -}
  , putPipelineFavorite :: Text -> Text -> UNKNOWN_BASE_TYPE -> m FavoriteImpl{- ^ Favorite/unfavorite a pipeline -}
  , putPipelineRun :: Text -> Text -> Text -> Maybe Text -> Maybe Int -> m PipelineRun{- ^ Stop a build of an organization pipeline -}
  , search :: Maybe Text -> m Text{- ^ Search for any resource details -}
  , searchClasses :: Maybe Text -> m Text{- ^ Get classes details -}
  , getComputer :: Maybe Int -> m ComputerSet{- ^ Retrieve computer details -}
  , getJenkins :: m Hudson{- ^ Retrieve Jenkins details -}
  , getJob :: Text -> m FreeStyleProject{- ^ Retrieve job details -}
  , getJobConfig :: Text -> m Text{- ^ Retrieve job configuration -}
  , getJobLastBuild :: Text -> m FreeStyleBuild{- ^ Retrieve job's last build details -}
  , getJobProgressiveText :: Text -> Text -> Maybe Text -> m NoContent{- ^ Retrieve job's build progressive text output -}
  , getQueue :: m Queue{- ^ Retrieve queue details -}
  , getQueueItem :: Text -> m Queue{- ^ Retrieve queued item details -}
  , getView :: Text -> m ListView{- ^ Retrieve view details -}
  , getViewConfig :: Text -> m Text{- ^ Retrieve view configuration -}
  , headJenkins :: m NoContent{- ^ Retrieve Jenkins headers -}
  , postCreateItem :: Maybe Text -> Maybe Text -> Maybe Text -> Text -> Maybe Text -> Maybe Text -> m NoContent{- ^ Create a new job using job configuration, or copied from an existing job -}
  , postCreateView :: Maybe Text -> Text -> Maybe Text -> Maybe Text -> m NoContent{- ^ Create a new view using view configuration -}
  , postJobBuild :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> m NoContent{- ^ Build a job -}
  , postJobConfig :: Text -> Text -> Maybe Text -> m NoContent{- ^ Update job configuration -}
  , postJobDelete :: Text -> Maybe Text -> m NoContent{- ^ Delete a job -}
  , postJobDisable :: Text -> Maybe Text -> m NoContent{- ^ Disable a job -}
  , postJobEnable :: Text -> Maybe Text -> m NoContent{- ^ Enable a job -}
  , postJobLastBuildStop :: Text -> Maybe Text -> m NoContent{- ^ Stop a job -}
  , postViewConfig :: Text -> Text -> Maybe Text -> m NoContent{- ^ Update view configuration -}
  }

newtype SwaggyJenkinsClient a = SwaggyJenkinsClient
  { runClient :: ClientEnv -> ExceptT ClientError IO a
  } deriving Functor

instance Applicative SwaggyJenkinsClient where
  pure x = SwaggyJenkinsClient (\_ -> pure x)
  (SwaggyJenkinsClient f) <*> (SwaggyJenkinsClient x) =
    SwaggyJenkinsClient (\env -> f env <*> x env)

instance Monad SwaggyJenkinsClient where
  (SwaggyJenkinsClient a) >>= f =
    SwaggyJenkinsClient (\env -> do
      value <- a env
      runClient (f value) env)

instance MonadIO SwaggyJenkinsClient where
  liftIO io = SwaggyJenkinsClient (\_ -> liftIO io)

createSwaggyJenkinsClient :: SwaggyJenkinsBackend SwaggyJenkinsClient
createSwaggyJenkinsClient = SwaggyJenkinsBackend{..}
  where
    ((coerce -> getCrumb) :<|>
     (coerce -> deletePipelineQueueItem) :<|>
     (coerce -> getAuthenticatedUser) :<|>
     (coerce -> getClasses) :<|>
     (coerce -> getJsonWebKey) :<|>
     (coerce -> getJsonWebToken) :<|>
     (coerce -> getOrganisation) :<|>
     (coerce -> getOrganisations) :<|>
     (coerce -> getPipeline) :<|>
     (coerce -> getPipelineActivities) :<|>
     (coerce -> getPipelineBranch) :<|>
     (coerce -> getPipelineBranchRun) :<|>
     (coerce -> getPipelineBranches) :<|>
     (coerce -> getPipelineFolder) :<|>
     (coerce -> getPipelineFolderPipeline) :<|>
     (coerce -> getPipelineQueue) :<|>
     (coerce -> getPipelineRun) :<|>
     (coerce -> getPipelineRunLog) :<|>
     (coerce -> getPipelineRunNode) :<|>
     (coerce -> getPipelineRunNodeStep) :<|>
     (coerce -> getPipelineRunNodeStepLog) :<|>
     (coerce -> getPipelineRunNodeSteps) :<|>
     (coerce -> getPipelineRunNodes) :<|>
     (coerce -> getPipelineRuns) :<|>
     (coerce -> getPipelines) :<|>
     (coerce -> getSCM) :<|>
     (coerce -> getSCMOrganisationRepositories) :<|>
     (coerce -> getSCMOrganisationRepository) :<|>
     (coerce -> getSCMOrganisations) :<|>
     (coerce -> getUser) :<|>
     (coerce -> getUserFavorites) :<|>
     (coerce -> getUsers) :<|>
     (coerce -> postPipelineRun) :<|>
     (coerce -> postPipelineRuns) :<|>
     (coerce -> putPipelineFavorite) :<|>
     (coerce -> putPipelineRun) :<|>
     (coerce -> search) :<|>
     (coerce -> searchClasses) :<|>
     (coerce -> getComputer) :<|>
     (coerce -> getJenkins) :<|>
     (coerce -> getJob) :<|>
     (coerce -> getJobConfig) :<|>
     (coerce -> getJobLastBuild) :<|>
     (coerce -> getJobProgressiveText) :<|>
     (coerce -> getQueue) :<|>
     (coerce -> getQueueItem) :<|>
     (coerce -> getView) :<|>
     (coerce -> getViewConfig) :<|>
     (coerce -> headJenkins) :<|>
     (coerce -> postCreateItem) :<|>
     (coerce -> postCreateView) :<|>
     (coerce -> postJobBuild) :<|>
     (coerce -> postJobConfig) :<|>
     (coerce -> postJobDelete) :<|>
     (coerce -> postJobDisable) :<|>
     (coerce -> postJobEnable) :<|>
     (coerce -> postJobLastBuildStop) :<|>
     (coerce -> postViewConfig) :<|>
     _) = client (Proxy :: Proxy SwaggyJenkinsAPI)

-- | Run requests in the SwaggyJenkinsClient monad.
runSwaggyJenkinsClient :: Config -> SwaggyJenkinsClient a -> ExceptT ClientError IO a
runSwaggyJenkinsClient clientConfig cl = do
  manager <- liftIO $ newManager tlsManagerSettings
  runSwaggyJenkinsClientWithManager manager clientConfig cl

-- | Run requests in the SwaggyJenkinsClient monad using a custom manager.
runSwaggyJenkinsClientWithManager :: Manager -> Config -> SwaggyJenkinsClient a -> ExceptT ClientError IO a
runSwaggyJenkinsClientWithManager manager Config{..} cl = do
  url <- parseBaseUrl configUrl
  runClient cl $ mkClientEnv manager url

-- | Like @runClient@, but returns the response or throws
--   a SwaggyJenkinsClientError
callSwaggyJenkins
  :: (MonadIO m, MonadThrow m)
  => ClientEnv -> SwaggyJenkinsClient a -> m a
callSwaggyJenkins env f = do
  res <- liftIO $ runExceptT $ runClient f env
  case res of
    Left err       -> throwM (SwaggyJenkinsClientError err)
    Right response -> pure response


requestMiddlewareId :: Application -> Application
requestMiddlewareId a = a

-- | Run the SwaggyJenkins server at the provided host and port.
runSwaggyJenkinsServer
  :: (MonadIO m, MonadThrow m)
  => Config -> SwaggyJenkinsBackend (ExceptT ServerError IO) -> m ()
runSwaggyJenkinsServer config backend = runSwaggyJenkinsMiddlewareServer config requestMiddlewareId backend

-- | Run the SwaggyJenkins server at the provided host and port.
runSwaggyJenkinsMiddlewareServer
  :: (MonadIO m, MonadThrow m)
  => Config -> Middleware -> SwaggyJenkinsBackend (ExceptT ServerError IO) -> m ()
runSwaggyJenkinsMiddlewareServer Config{..} middleware backend = do
  url <- parseBaseUrl configUrl
  let warpSettings = Warp.defaultSettings
        & Warp.setPort (baseUrlPort url)
        & Warp.setHost (fromString $ baseUrlHost url)
  liftIO $ Warp.runSettings warpSettings $ middleware $ serverWaiApplicationSwaggyJenkins backend

-- | Plain "Network.Wai" Application for the SwaggyJenkins server.
--
-- Can be used to implement e.g. tests that call the API without a full webserver.
serverWaiApplicationSwaggyJenkins :: SwaggyJenkinsBackend (ExceptT ServerError IO) -> Application
serverWaiApplicationSwaggyJenkins backend = serve (Proxy :: Proxy SwaggyJenkinsAPI) (serverFromBackend backend)
  where
    serverFromBackend SwaggyJenkinsBackend{..} =
      (coerce getCrumb :<|>
       coerce deletePipelineQueueItem :<|>
       coerce getAuthenticatedUser :<|>
       coerce getClasses :<|>
       coerce getJsonWebKey :<|>
       coerce getJsonWebToken :<|>
       coerce getOrganisation :<|>
       coerce getOrganisations :<|>
       coerce getPipeline :<|>
       coerce getPipelineActivities :<|>
       coerce getPipelineBranch :<|>
       coerce getPipelineBranchRun :<|>
       coerce getPipelineBranches :<|>
       coerce getPipelineFolder :<|>
       coerce getPipelineFolderPipeline :<|>
       coerce getPipelineQueue :<|>
       coerce getPipelineRun :<|>
       coerce getPipelineRunLog :<|>
       coerce getPipelineRunNode :<|>
       coerce getPipelineRunNodeStep :<|>
       coerce getPipelineRunNodeStepLog :<|>
       coerce getPipelineRunNodeSteps :<|>
       coerce getPipelineRunNodes :<|>
       coerce getPipelineRuns :<|>
       coerce getPipelines :<|>
       coerce getSCM :<|>
       coerce getSCMOrganisationRepositories :<|>
       coerce getSCMOrganisationRepository :<|>
       coerce getSCMOrganisations :<|>
       coerce getUser :<|>
       coerce getUserFavorites :<|>
       coerce getUsers :<|>
       coerce postPipelineRun :<|>
       coerce postPipelineRuns :<|>
       coerce putPipelineFavorite :<|>
       coerce putPipelineRun :<|>
       coerce search :<|>
       coerce searchClasses :<|>
       coerce getComputer :<|>
       coerce getJenkins :<|>
       coerce getJob :<|>
       coerce getJobConfig :<|>
       coerce getJobLastBuild :<|>
       coerce getJobProgressiveText :<|>
       coerce getQueue :<|>
       coerce getQueueItem :<|>
       coerce getView :<|>
       coerce getViewConfig :<|>
       coerce headJenkins :<|>
       coerce postCreateItem :<|>
       coerce postCreateView :<|>
       coerce postJobBuild :<|>
       coerce postJobConfig :<|>
       coerce postJobDelete :<|>
       coerce postJobDisable :<|>
       coerce postJobEnable :<|>
       coerce postJobLastBuildStop :<|>
       coerce postViewConfig :<|>
       serveDirectoryFileServer "static")
