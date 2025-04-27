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
  -- ** Authentication
  , SwaggyJenkinsAuth(..)
  , clientAuth
  , Protected
  ) where

import           SwaggyJenkins.Types

import           Control.Monad.Catch                (Exception, MonadThrow, throwM)
import           Control.Monad.Except               (ExceptT, runExceptT)
import           Control.Monad.IO.Class
import           Control.Monad.Trans.Reader         (ReaderT (..))
import           Data.Aeson                         (Value)
import qualified Data.Aeson                         as Aeson
import           Data.ByteString                    (ByteString)
import qualified Data.ByteString.Lazy               as BSL
import           Data.Coerce                        (coerce)
import           Data.Data                          (Data)
import           Data.Function                      ((&))
import qualified Data.Map                           as Map
import           Data.Monoid                        ((<>))
import           Data.Proxy                         (Proxy (..))
import           Data.Set                           (Set)
import           Data.Text                          (Text)
import qualified Data.Text                          as T
import qualified Data.Text.Encoding                 as T
import           Data.Time
import           Data.UUID                          (UUID)
import           GHC.Exts                           (IsString (..))
import           GHC.Generics                       (Generic)
import           Network.HTTP.Client                (Manager, newManager)
import           Network.HTTP.Client.TLS            (tlsManagerSettings)
import           Network.HTTP.Types.Method          (methodOptions)
import           Network.Wai                        (Middleware, Request, requestHeaders)
import qualified Network.Wai.Handler.Warp           as Warp
import           Network.Wai.Middleware.HttpAuth    (extractBasicAuth)
import           Servant                            (ServerError, serveWithContextT, throwError)
import           Servant.API                        hiding (addHeader)
import           Servant.API.BasicAuth              (BasicAuthData (..))
import           Servant.API.Verbs                  (StdMethod (..), Verb)
import           Servant.API.Experimental.Auth      (AuthProtect)
import           Servant.Client                     (ClientEnv, Scheme (Http), ClientError, client,
                                                     mkClientEnv, parseBaseUrl)
import           Servant.Client.Core                (baseUrlPort, baseUrlHost, basicAuthReq, AuthClientData, AuthenticatedRequest, addHeader, mkAuthenticatedRequest, AuthClientData, AuthenticatedRequest, addHeader, mkAuthenticatedRequest)
import           Servant.Client.Internal.HttpClient (ClientM (..))
import           Servant.Server                     (Handler (..), Application, Context ((:.), EmptyContext))
import           Servant.Server.Experimental.Auth   (AuthHandler, AuthServerData, mkAuthHandler)
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

newtype JSONQueryParam a = JSONQueryParam
  { fromJsonQueryParam :: a
  } deriving (Functor, Foldable, Traversable)

instance Aeson.ToJSON a => ToHttpApiData (JSONQueryParam a) where
  toQueryParam = T.decodeUtf8 . BSL.toStrict . Aeson.encode . fromJsonQueryParam

instance Aeson.FromJSON a => FromHttpApiData (JSONQueryParam a) where
  parseQueryParam = either (Left . T.pack) (Right . JSONQueryParam) . Aeson.eitherDecodeStrict . T.encodeUtf8


-- | Servant type-level API, generated from the OpenAPI spec for SwaggyJenkins.
type SwaggyJenkinsAPI
    =    Protected :> "crumbIssuer" :> "api" :> "json" :> Verb 'GET 200 '[JSON] DefaultCrumbIssuer -- 'getCrumb' route
    :<|> Protected :> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "pipeline" Text :> "queue" :> Capture "queue" Text :> Verb 'DELETE 200 '[JSON] NoContent -- 'deletePipelineQueueItem' route
    :<|> Protected :> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "user" :> Verb 'GET 200 '[JSON] User -- 'getAuthenticatedUser' route
    :<|> Protected :> "blue" :> "rest" :> "classes" :> Capture "class" Text :> Verb 'GET 200 '[JSON] Text -- 'getClasses' route
    :<|> "jwt-auth" :> "jwks" :> Capture "key" Int :> Verb 'GET 200 '[JSON] Text -- 'getJsonWebKey' route
    :<|> "jwt-auth" :> "token" :> QueryParam "expiryTimeInMins" Int :> QueryParam "maxExpiryTimeInMins" Int :> Verb 'GET 200 '[JSON] Text -- 'getJsonWebToken' route
    :<|> Protected :> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> Verb 'GET 200 '[JSON] Organisation -- 'getOrganisation' route
    :<|> Protected :> "blue" :> "rest" :> "organizations" :> Verb 'GET 200 '[JSON] [Organisation] -- 'getOrganisations' route
    :<|> Protected :> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "pipeline" Text :> Verb 'GET 200 '[JSON] Pipeline -- 'getPipeline' route
    :<|> Protected :> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "pipeline" Text :> "activities" :> Verb 'GET 200 '[JSON] [PipelineActivity] -- 'getPipelineActivities' route
    :<|> Protected :> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "pipeline" Text :> "branches" :> Capture "branch" Text :> Verb 'GET 200 '[JSON] BranchImpl -- 'getPipelineBranch' route
    :<|> Protected :> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "pipeline" Text :> "branches" :> Capture "branch" Text :> "runs" :> Capture "run" Text :> Verb 'GET 200 '[JSON] PipelineRun -- 'getPipelineBranchRun' route
    :<|> Protected :> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "pipeline" Text :> "branches" :> Verb 'GET 200 '[JSON] MultibranchPipeline -- 'getPipelineBranches' route
    :<|> Protected :> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "folder" Text :> Verb 'GET 200 '[JSON] PipelineFolderImpl -- 'getPipelineFolder' route
    :<|> Protected :> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "folder" Text :> "pipelines" :> Capture "pipeline" Text :> Verb 'GET 200 '[JSON] PipelineImpl -- 'getPipelineFolderPipeline' route
    :<|> Protected :> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "pipeline" Text :> "queue" :> Verb 'GET 200 '[JSON] [QueueItemImpl] -- 'getPipelineQueue' route
    :<|> Protected :> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "pipeline" Text :> "runs" :> Capture "run" Text :> Verb 'GET 200 '[JSON] PipelineRun -- 'getPipelineRun' route
    :<|> Protected :> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "pipeline" Text :> "runs" :> Capture "run" Text :> "log" :> QueryParam "start" Int :> QueryParam "download" Bool :> Verb 'GET 200 '[JSON] Text -- 'getPipelineRunLog' route
    :<|> Protected :> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "pipeline" Text :> "runs" :> Capture "run" Text :> "nodes" :> Capture "node" Text :> Verb 'GET 200 '[JSON] PipelineRunNode -- 'getPipelineRunNode' route
    :<|> Protected :> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "pipeline" Text :> "runs" :> Capture "run" Text :> "nodes" :> Capture "node" Text :> "steps" :> Capture "step" Text :> Verb 'GET 200 '[JSON] PipelineStepImpl -- 'getPipelineRunNodeStep' route
    :<|> Protected :> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "pipeline" Text :> "runs" :> Capture "run" Text :> "nodes" :> Capture "node" Text :> "steps" :> Capture "step" Text :> "log" :> Verb 'GET 200 '[JSON] Text -- 'getPipelineRunNodeStepLog' route
    :<|> Protected :> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "pipeline" Text :> "runs" :> Capture "run" Text :> "nodes" :> Capture "node" Text :> "steps" :> Verb 'GET 200 '[JSON] [PipelineStepImpl] -- 'getPipelineRunNodeSteps' route
    :<|> Protected :> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "pipeline" Text :> "runs" :> Capture "run" Text :> "nodes" :> Verb 'GET 200 '[JSON] [PipelineRunNode] -- 'getPipelineRunNodes' route
    :<|> Protected :> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "pipeline" Text :> "runs" :> Verb 'GET 200 '[JSON] [PipelineRun] -- 'getPipelineRuns' route
    :<|> Protected :> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Verb 'GET 200 '[JSON] [Pipeline] -- 'getPipelines' route
    :<|> Protected :> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "scm" :> Capture "scm" Text :> Verb 'GET 200 '[JSON] GithubScm -- 'getSCM' route
    :<|> Protected :> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "scm" :> Capture "scm" Text :> "organizations" :> Capture "scmOrganisation" Text :> "repositories" :> QueryParam "credentialId" Text :> QueryParam "pageSize" Int :> QueryParam "pageNumber" Int :> Verb 'GET 200 '[JSON] [GithubOrganization] -- 'getSCMOrganisationRepositories' route
    :<|> Protected :> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "scm" :> Capture "scm" Text :> "organizations" :> Capture "scmOrganisation" Text :> "repositories" :> Capture "repository" Text :> QueryParam "credentialId" Text :> Verb 'GET 200 '[JSON] [GithubOrganization] -- 'getSCMOrganisationRepository' route
    :<|> Protected :> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "scm" :> Capture "scm" Text :> "organizations" :> QueryParam "credentialId" Text :> Verb 'GET 200 '[JSON] [GithubOrganization] -- 'getSCMOrganisations' route
    :<|> Protected :> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "users" :> Capture "user" Text :> Verb 'GET 200 '[JSON] User -- 'getUser' route
    :<|> Protected :> "blue" :> "rest" :> "users" :> Capture "user" Text :> "favorites" :> Verb 'GET 200 '[JSON] [FavoriteImpl] -- 'getUserFavorites' route
    :<|> Protected :> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "users" :> Verb 'GET 200 '[JSON] User -- 'getUsers' route
    :<|> Protected :> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "pipeline" Text :> "runs" :> Capture "run" Text :> "replay" :> Verb 'POST 200 '[JSON] QueueItemImpl -- 'postPipelineRun' route
    :<|> Protected :> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "pipeline" Text :> "runs" :> Verb 'POST 200 '[JSON] QueueItemImpl -- 'postPipelineRuns' route
    :<|> Protected :> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "pipeline" Text :> "favorite" :> ReqBody '[JSON] Bool :> Verb 'PUT 200 '[JSON] FavoriteImpl -- 'putPipelineFavorite' route
    :<|> Protected :> "blue" :> "rest" :> "organizations" :> Capture "organization" Text :> "pipelines" :> Capture "pipeline" Text :> "runs" :> Capture "run" Text :> "stop" :> QueryParam "blocking" Text :> QueryParam "timeOutInSecs" Int :> Verb 'PUT 200 '[JSON] PipelineRun -- 'putPipelineRun' route
    :<|> Protected :> "blue" :> "rest" :> "search" :> QueryParam "q" Text :> Verb 'GET 200 '[JSON] Text -- 'search' route
    :<|> Protected :> "blue" :> "rest" :> "classes" :> QueryParam "q" Text :> Verb 'GET 200 '[JSON] Text -- 'searchClasses' route
    :<|> Protected :> "computer" :> "api" :> "json" :> QueryParam "depth" Int :> Verb 'GET 200 '[JSON] ComputerSet -- 'getComputer' route
    :<|> Protected :> "api" :> "json" :> Verb 'GET 200 '[JSON] Hudson -- 'getJenkins' route
    :<|> Protected :> "job" :> Capture "name" Text :> "api" :> "json" :> Verb 'GET 200 '[JSON] FreeStyleProject -- 'getJob' route
    :<|> Protected :> "job" :> Capture "name" Text :> "config.xml" :> Verb 'GET 200 '[JSON] Text -- 'getJobConfig' route
    :<|> Protected :> "job" :> Capture "name" Text :> "lastBuild" :> "api" :> "json" :> Verb 'GET 200 '[JSON] FreeStyleBuild -- 'getJobLastBuild' route
    :<|> Protected :> "job" :> Capture "name" Text :> Capture "number" Text :> "logText" :> "progressiveText" :> QueryParam "start" Text :> Verb 'GET 200 '[JSON] NoContent -- 'getJobProgressiveText' route
    :<|> Protected :> "queue" :> "api" :> "json" :> Verb 'GET 200 '[JSON] Queue -- 'getQueue' route
    :<|> Protected :> "queue" :> "item" :> Capture "number" Text :> "api" :> "json" :> Verb 'GET 200 '[JSON] Queue -- 'getQueueItem' route
    :<|> Protected :> "view" :> Capture "name" Text :> "api" :> "json" :> Verb 'GET 200 '[JSON] ListView -- 'getView' route
    :<|> Protected :> "view" :> Capture "name" Text :> "config.xml" :> Verb 'GET 200 '[JSON] Text -- 'getViewConfig' route
    :<|> Protected :> "api" :> "json" :> Verb 'HEAD 200 '[JSON] (Headers '[Header "x-jenkins" Text] NoContent) -- 'headJenkins' route
    :<|> Protected :> "createItem" :> QueryParam "name" Text :> QueryParam "from" Text :> QueryParam "mode" Text :> ReqBody '[JSON] Text :> Header "Jenkins-Crumb" Text :> Header "Content-Type" Text :> Verb 'POST 200 '[JSON] NoContent -- 'postCreateItem' route
    :<|> Protected :> "createView" :> QueryParam "name" Text :> ReqBody '[JSON] Text :> Header "Jenkins-Crumb" Text :> Header "Content-Type" Text :> Verb 'POST 200 '[JSON] NoContent -- 'postCreateView' route
    :<|> Protected :> "job" :> Capture "name" Text :> "build" :> QueryParam "json" Text :> QueryParam "token" Text :> Header "Jenkins-Crumb" Text :> Verb 'POST 200 '[JSON] NoContent -- 'postJobBuild' route
    :<|> Protected :> "job" :> Capture "name" Text :> "config.xml" :> ReqBody '[JSON] Text :> Header "Jenkins-Crumb" Text :> Verb 'POST 200 '[JSON] NoContent -- 'postJobConfig' route
    :<|> Protected :> "job" :> Capture "name" Text :> "doDelete" :> Header "Jenkins-Crumb" Text :> Verb 'POST 200 '[JSON] NoContent -- 'postJobDelete' route
    :<|> Protected :> "job" :> Capture "name" Text :> "disable" :> Header "Jenkins-Crumb" Text :> Verb 'POST 200 '[JSON] NoContent -- 'postJobDisable' route
    :<|> Protected :> "job" :> Capture "name" Text :> "enable" :> Header "Jenkins-Crumb" Text :> Verb 'POST 200 '[JSON] NoContent -- 'postJobEnable' route
    :<|> Protected :> "job" :> Capture "name" Text :> "lastBuild" :> "stop" :> Header "Jenkins-Crumb" Text :> Verb 'POST 200 '[JSON] NoContent -- 'postJobLastBuildStop' route
    :<|> Protected :> "view" :> Capture "name" Text :> "config.xml" :> ReqBody '[JSON] Text :> Header "Jenkins-Crumb" Text :> Verb 'POST 200 '[JSON] NoContent -- 'postViewConfig' route
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
data SwaggyJenkinsBackend a m = SwaggyJenkinsBackend
  { getCrumb :: a -> m DefaultCrumbIssuer{- ^ Retrieve CSRF protection token -}
  , deletePipelineQueueItem :: a -> Text -> Text -> Text -> m NoContent{- ^ Delete queue item from an organization pipeline queue -}
  , getAuthenticatedUser :: a -> Text -> m User{- ^ Retrieve authenticated user details for an organization -}
  , getClasses :: a -> Text -> m Text{- ^ Get a list of class names supported by a given class -}
  , getJsonWebKey :: Int -> m Text{- ^ Retrieve JSON Web Key -}
  , getJsonWebToken :: Maybe Int -> Maybe Int -> m Text{- ^ Retrieve JSON Web Token -}
  , getOrganisation :: a -> Text -> m Organisation{- ^ Retrieve organization details -}
  , getOrganisations :: a -> m [Organisation]{- ^ Retrieve all organizations details -}
  , getPipeline :: a -> Text -> Text -> m Pipeline{- ^ Retrieve pipeline details for an organization -}
  , getPipelineActivities :: a -> Text -> Text -> m [PipelineActivity]{- ^ Retrieve all activities details for an organization pipeline -}
  , getPipelineBranch :: a -> Text -> Text -> Text -> m BranchImpl{- ^ Retrieve branch details for an organization pipeline -}
  , getPipelineBranchRun :: a -> Text -> Text -> Text -> Text -> m PipelineRun{- ^ Retrieve branch run details for an organization pipeline -}
  , getPipelineBranches :: a -> Text -> Text -> m MultibranchPipeline{- ^ Retrieve all branches details for an organization pipeline -}
  , getPipelineFolder :: a -> Text -> Text -> m PipelineFolderImpl{- ^ Retrieve pipeline folder for an organization -}
  , getPipelineFolderPipeline :: a -> Text -> Text -> Text -> m PipelineImpl{- ^ Retrieve pipeline details for an organization folder -}
  , getPipelineQueue :: a -> Text -> Text -> m [QueueItemImpl]{- ^ Retrieve queue details for an organization pipeline -}
  , getPipelineRun :: a -> Text -> Text -> Text -> m PipelineRun{- ^ Retrieve run details for an organization pipeline -}
  , getPipelineRunLog :: a -> Text -> Text -> Text -> Maybe Int -> Maybe Bool -> m Text{- ^ Get log for a pipeline run -}
  , getPipelineRunNode :: a -> Text -> Text -> Text -> Text -> m PipelineRunNode{- ^ Retrieve run node details for an organization pipeline -}
  , getPipelineRunNodeStep :: a -> Text -> Text -> Text -> Text -> Text -> m PipelineStepImpl{- ^ Retrieve run node details for an organization pipeline -}
  , getPipelineRunNodeStepLog :: a -> Text -> Text -> Text -> Text -> Text -> m Text{- ^ Get log for a pipeline run node step -}
  , getPipelineRunNodeSteps :: a -> Text -> Text -> Text -> Text -> m [PipelineStepImpl]{- ^ Retrieve run node steps details for an organization pipeline -}
  , getPipelineRunNodes :: a -> Text -> Text -> Text -> m [PipelineRunNode]{- ^ Retrieve run nodes details for an organization pipeline -}
  , getPipelineRuns :: a -> Text -> Text -> m [PipelineRun]{- ^ Retrieve all runs details for an organization pipeline -}
  , getPipelines :: a -> Text -> m [Pipeline]{- ^ Retrieve all pipelines details for an organization -}
  , getSCM :: a -> Text -> Text -> m GithubScm{- ^ Retrieve SCM details for an organization -}
  , getSCMOrganisationRepositories :: a -> Text -> Text -> Text -> Maybe Text -> Maybe Int -> Maybe Int -> m [GithubOrganization]{- ^ Retrieve SCM organization repositories details for an organization -}
  , getSCMOrganisationRepository :: a -> Text -> Text -> Text -> Text -> Maybe Text -> m [GithubOrganization]{- ^ Retrieve SCM organization repository details for an organization -}
  , getSCMOrganisations :: a -> Text -> Text -> Maybe Text -> m [GithubOrganization]{- ^ Retrieve SCM organizations details for an organization -}
  , getUser :: a -> Text -> Text -> m User{- ^ Retrieve user details for an organization -}
  , getUserFavorites :: a -> Text -> m [FavoriteImpl]{- ^ Retrieve user favorites details for an organization -}
  , getUsers :: a -> Text -> m User{- ^ Retrieve users details for an organization -}
  , postPipelineRun :: a -> Text -> Text -> Text -> m QueueItemImpl{- ^ Replay an organization pipeline run -}
  , postPipelineRuns :: a -> Text -> Text -> m QueueItemImpl{- ^ Start a build for an organization pipeline -}
  , putPipelineFavorite :: a -> Text -> Text -> Bool -> m FavoriteImpl{- ^ Favorite/unfavorite a pipeline -}
  , putPipelineRun :: a -> Text -> Text -> Text -> Maybe Text -> Maybe Int -> m PipelineRun{- ^ Stop a build of an organization pipeline -}
  , search :: a -> Maybe Text -> m Text{- ^ Search for any resource details -}
  , searchClasses :: a -> Maybe Text -> m Text{- ^ Get classes details -}
  , getComputer :: a -> Maybe Int -> m ComputerSet{- ^ Retrieve computer details -}
  , getJenkins :: a -> m Hudson{- ^ Retrieve Jenkins details -}
  , getJob :: a -> Text -> m FreeStyleProject{- ^ Retrieve job details -}
  , getJobConfig :: a -> Text -> m Text{- ^ Retrieve job configuration -}
  , getJobLastBuild :: a -> Text -> m FreeStyleBuild{- ^ Retrieve job's last build details -}
  , getJobProgressiveText :: a -> Text -> Text -> Maybe Text -> m NoContent{- ^ Retrieve job's build progressive text output -}
  , getQueue :: a -> m Queue{- ^ Retrieve queue details -}
  , getQueueItem :: a -> Text -> m Queue{- ^ Retrieve queued item details -}
  , getView :: a -> Text -> m ListView{- ^ Retrieve view details -}
  , getViewConfig :: a -> Text -> m Text{- ^ Retrieve view configuration -}
  , headJenkins :: a -> m (Headers '[Header "x-jenkins" Text] NoContent){- ^ Retrieve Jenkins headers -}
  , postCreateItem :: a -> Maybe Text -> Maybe Text -> Maybe Text -> Text -> Maybe Text -> Maybe Text -> m NoContent{- ^ Create a new job using job configuration, or copied from an existing job -}
  , postCreateView :: a -> Maybe Text -> Text -> Maybe Text -> Maybe Text -> m NoContent{- ^ Create a new view using view configuration -}
  , postJobBuild :: a -> Text -> Maybe Text -> Maybe Text -> Maybe Text -> m NoContent{- ^ Build a job -}
  , postJobConfig :: a -> Text -> Text -> Maybe Text -> m NoContent{- ^ Update job configuration -}
  , postJobDelete :: a -> Text -> Maybe Text -> m NoContent{- ^ Delete a job -}
  , postJobDisable :: a -> Text -> Maybe Text -> m NoContent{- ^ Disable a job -}
  , postJobEnable :: a -> Text -> Maybe Text -> m NoContent{- ^ Enable a job -}
  , postJobLastBuildStop :: a -> Text -> Maybe Text -> m NoContent{- ^ Stop a job -}
  , postViewConfig :: a -> Text -> Text -> Maybe Text -> m NoContent{- ^ Update view configuration -}
  }

-- | Authentication settings for SwaggyJenkins.
-- lookupUser is used to retrieve a user given a header value. The data type can be specified by providing an
-- type instance for AuthServerData. authError is a function that given a request returns a custom error that
-- is returned when the header is not found.
data SwaggyJenkinsAuth = SwaggyJenkinsAuth
  { lookupUser :: BasicAuthData -> Handler AuthServer
  , authError :: Request -> ServerError
  }
-- | Authentication settings for SwaggyJenkins.
-- lookupUser is used to retrieve a user given a header value. The data type can be specified by providing an
-- type instance for AuthServerData. authError is a function that given a request returns a custom error that
-- is returned when the header is not found.
data SwaggyJenkinsAuth = SwaggyJenkinsAuth
  { lookupUser :: ByteString -> Handler AuthServer
  , authError :: Request -> ServerError
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

createSwaggyJenkinsClient :: SwaggyJenkinsBackend AuthClient SwaggyJenkinsClient
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
  => Config -> SwaggyJenkinsAuth -> SwaggyJenkinsBackend AuthServer (ExceptT ServerError IO) -> m ()
runSwaggyJenkinsServer config auth backend = runSwaggyJenkinsMiddlewareServer config requestMiddlewareId auth backend

-- | Run the SwaggyJenkins server at the provided host and port.
runSwaggyJenkinsMiddlewareServer
  :: (MonadIO m, MonadThrow m)
  => Config -> Middleware -> SwaggyJenkinsAuth -> SwaggyJenkinsBackend AuthServer (ExceptT ServerError IO) -> m ()
runSwaggyJenkinsMiddlewareServer Config{..} middleware auth backend = do
  url <- parseBaseUrl configUrl
  let warpSettings = Warp.defaultSettings
        & Warp.setPort (baseUrlPort url)
        & Warp.setHost (fromString $ baseUrlHost url)
  liftIO $ Warp.runSettings warpSettings $ middleware $ serverWaiApplicationSwaggyJenkins auth backend

-- | Plain "Network.Wai" Application for the SwaggyJenkins server.
--
-- Can be used to implement e.g. tests that call the API without a full webserver.
serverWaiApplicationSwaggyJenkins :: SwaggyJenkinsAuth -> SwaggyJenkinsBackend AuthServer (ExceptT ServerError IO) -> Application
serverWaiApplicationSwaggyJenkins auth backend = serveWithContextT (Proxy :: Proxy SwaggyJenkinsAPI) context id (serverFromBackend backend)
  where
    context = serverContext auth
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

-- Authentication is implemented with servants generalized authentication:
-- https://docs.servant.dev/en/stable/tutorial/Authentication.html#generalized-authentication

authHandler :: SwaggyJenkinsAuth -> AuthHandler Request AuthServer
authHandler SwaggyJenkinsAuth{..} = mkAuthHandler handler
  where
    handler req = case lookup "Authorization" (requestHeaders req) of
      Just header -> case extractBasicAuth header of
        Just (user, password) -> lookupUser (BasicAuthData user password)
        Nothing -> throwError (authError req)
      Nothing -> throwError (authError req)

type Protected = AuthProtect "basic"
type AuthServer = AuthServerData Protected
type AuthClient = AuthenticatedRequest Protected
type instance AuthClientData Protected = BasicAuthData

clientAuth :: BasicAuthData -> AuthClient
clientAuth key = mkAuthenticatedRequest key basicAuthReq
-- Authentication is implemented with servants generalized authentication:
-- https://docs.servant.dev/en/stable/tutorial/Authentication.html#generalized-authentication

authHandler :: SwaggyJenkinsAuth -> AuthHandler Request AuthServer
authHandler SwaggyJenkinsAuth{..} = mkAuthHandler handler
  where
    handler req = case lookup "Authorization" (requestHeaders req) of
      Just header -> lookupUser header
      Nothing -> throwError (authError req)

type Protected = AuthProtect "apikey"
type AuthServer = AuthServerData Protected
type AuthClient = AuthenticatedRequest Protected
type instance AuthClientData Protected = Text

clientAuth :: Text -> AuthClient
clientAuth key = mkAuthenticatedRequest key (addHeader "Authorization")

serverContext :: SwaggyJenkinsAuth -> Context (AuthHandler Request AuthServer ': '[])
serverContext auth = authHandler auth :. EmptyContext
