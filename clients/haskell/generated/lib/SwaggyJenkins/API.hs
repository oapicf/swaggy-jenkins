{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DeriveTraversable #-}
{-# LANGUAGE FlexibleContexts #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE ViewPatterns #-}
{-# OPTIONS_GHC
-fno-warn-unused-binds -fno-warn-unused-imports -fcontext-stack=328 #-}

module SwaggyJenkins.API
  -- * Client and Server
  ( ServerConfig(..)
  , SwaggyJenkinsBackend
  , createSwaggyJenkinsClient
  , runSwaggyJenkinsServer
  , runSwaggyJenkinsClient
  , runSwaggyJenkinsClientWithManager
  , SwaggyJenkinsClient
  -- ** Servant
  , SwaggyJenkinsAPI
  ) where

import SwaggyJenkins.Types

import Control.Monad.Except (ExceptT)
import Control.Monad.IO.Class
import Data.Aeson (Value)
import Data.Coerce (coerce)
import Data.Function ((&))
import qualified Data.Map as Map
import Data.Monoid ((<>))
import Data.Proxy (Proxy(..))
import Data.Text (Text)
import qualified Data.Text as T
import GHC.Exts (IsString(..))
import GHC.Generics (Generic)
import Network.HTTP.Client (Manager, defaultManagerSettings, newManager)
import Network.HTTP.Types.Method (methodOptions)
import qualified Network.Wai.Handler.Warp as Warp
import Servant (ServantErr, serve)
import Servant.API
import Servant.API.Verbs (StdMethod(..), Verb)
import Servant.Client (Scheme(Http), ServantError, client)
import Servant.Common.BaseUrl (BaseUrl(..))
import Web.HttpApiData




-- For the form data code generation.
lookupEither :: FromHttpApiData b => Text -> [(Text, Text)] -> Either String b
lookupEither key assocs =
  case lookup key assocs of
    Nothing -> Left $ "Could not find parameter " <> (T.unpack key) <> " in form data"
    Just value ->
      case parseQueryParam value of
        Left result -> Left $ T.unpack result
        Right result -> Right $ result

-- | Servant type-level API, generated from the Swagger spec for SwaggyJenkins.
type SwaggyJenkinsAPI
    =    "blue" :> "rest" :> "organizations" :> Capture "organisation" Text :> "user" :> Verb 'GET 200 '[JSON] SwaggyjenkinsUser -- 'getAuthenticatedUser' route
    :<|> "blue" :> "rest" :> "classes" :> Capture "class" Text :> Verb 'GET 200 '[JSON] Text -- 'getClasses' route
    :<|> "blue" :> "rest" :> "organizations" :> Capture "organisation" Text :> Verb 'GET 200 '[JSON] SwaggyjenkinsOrganisation -- 'getOrganisation' route
    :<|> "blue" :> "rest" :> "organizations" :> Verb 'GET 200 '[JSON] GetOrganisations -- 'getOrganisations' route
    :<|> "blue" :> "rest" :> "organizations" :> Capture "organisation" Text :> "pipelines" :> Capture "pipeline" Text :> "branches" :> Capture "branch" Text :> Verb 'GET 200 '[JSON] IojenkinsblueoceanrestimplpipelineBranchImpl -- 'getPipelineBranchByOrg' route
    :<|> "blue" :> "rest" :> "organizations" :> Capture "organisation" Text :> "pipelines" :> Capture "pipeline" Text :> "branches" :> Verb 'GET 200 '[JSON] GetMultibranchPipeline -- 'getPipelineBranchesByOrg' route
    :<|> "blue" :> "rest" :> "organizations" :> Capture "organisation" Text :> "pipelines" :> Capture "pipeline" Text :> Verb 'GET 200 '[JSON] SwaggyjenkinsPipeline -- 'getPipelineByOrg' route
    :<|> "blue" :> "rest" :> "organizations" :> Capture "organisation" Text :> "pipelines" :> Capture "folder" Text :> Verb 'GET 200 '[JSON] IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl -- 'getPipelineFolderByOrg' route
    :<|> "blue" :> "rest" :> "organizations" :> Capture "organisation" Text :> "pipelines" :> Capture "folder" Text :> "pipelines" :> Capture "pipeline" Text :> Verb 'GET 200 '[JSON] IojenkinsblueoceanserviceembeddedrestPipelineImpl -- 'getPipelineFolderByOrg_0' route
    :<|> "blue" :> "rest" :> "organizations" :> Capture "organisation" Text :> "pipelines" :> Verb 'GET 200 '[JSON] GetPipelines -- 'getPipelinesByOrg' route
    :<|> "blue" :> "rest" :> "organizations" :> Capture "organisation" Text :> "users" :> Capture "user" Text :> Verb 'GET 200 '[JSON] SwaggyjenkinsUser -- 'getUser' route
    :<|> "blue" :> "rest" :> "organizations" :> Capture "organisation" Text :> "users" :> Verb 'GET 200 '[JSON] SwaggyjenkinsUser -- 'getUsers' route
    :<|> "blue" :> "rest" :> "classes" :> QueryParam "q" Text :> Verb 'GET 200 '[JSON] Text -- 'search' route
    :<|> "blue" :> "rest" :> "search" :> QueryParam "q" Text :> Verb 'GET 200 '[JSON] Text -- 'search_0' route
    :<|> "computer" :> "api" :> "json?depth=1" :> Verb 'GET 200 '[JSON] HudsonmodelComputerSet -- 'getComputer' route
    :<|> "crumbIssuer" :> "api" :> "json" :> Verb 'GET 200 '[JSON] HudsonsecuritycsrfDefaultCrumbIssuer -- 'getCrumb' route
    :<|> "api" :> "json" :> Verb 'GET 200 '[JSON] HudsonmodelHudson -- 'getJenkins' route
    :<|> "job" :> Capture "name" Text :> "api" :> "json" :> Verb 'GET 200 '[JSON] HudsonmodelFreeStyleProject -- 'getJob' route
    :<|> "job" :> Capture "name" Text :> "config.xml" :> Verb 'GET 200 '[JSON] Text -- 'getJobConfig' route
    :<|> "job" :> Capture "name" Text :> "lastBuild" :> "api" :> "json" :> Verb 'GET 200 '[JSON] HudsonmodelFreeStyleBuild -- 'getJobLastBuild' route
    :<|> "job" :> Capture "name" Text :> Capture "number" Text :> "logText" :> "progressiveText" :> QueryParam "start" Text :> Verb 'GET 200 '[JSON] () -- 'getJobProgressiveText' route
    :<|> "queue" :> "api" :> "json" :> Verb 'GET 200 '[JSON] HudsonmodelQueue -- 'getQueue' route
    :<|> "queue" :> "item" :> Capture "number" Text :> "api" :> "json" :> Verb 'GET 200 '[JSON] HudsonmodelQueue -- 'getQueueItem' route
    :<|> "view" :> Capture "name" Text :> "api" :> "json" :> Verb 'GET 200 '[JSON] HudsonmodelListView -- 'getView' route
    :<|> "view" :> Capture "name" Text :> "config.xml" :> Verb 'GET 200 '[JSON] Text -- 'getViewConfig' route
    :<|> "api" :> "json" :> Verb 'HEAD 200 '[JSON] () -- 'headJenkins' route
    :<|> "createItem" :> QueryParam "name" Text :> QueryParam "from" Text :> QueryParam "mode" Text :> ReqBody '[JSON] Text :> Header "Jenkins-Crumb" Text :> Header "Content-Type" Text :> Verb 'POST 200 '[JSON] () -- 'postCreateItem' route
    :<|> "createView" :> QueryParam "name" Text :> ReqBody '[JSON] Text :> Header "Jenkins-Crumb" Text :> Header "Content-Type" Text :> Verb 'POST 200 '[JSON] () -- 'postCreateView' route
    :<|> "job" :> Capture "name" Text :> "build" :> QueryParam "json" Text :> QueryParam "token" Text :> Header "Jenkins-Crumb" Text :> Verb 'POST 200 '[JSON] () -- 'postJobBuild' route
    :<|> "job" :> Capture "name" Text :> "config.xml" :> ReqBody '[JSON] Text :> Header "Jenkins-Crumb" Text :> Verb 'POST 200 '[JSON] () -- 'postJobConfig' route
    :<|> "job" :> Capture "name" Text :> "doDelete" :> Header "Jenkins-Crumb" Text :> Verb 'POST 200 '[JSON] () -- 'postJobDelete' route
    :<|> "job" :> Capture "name" Text :> "disable" :> Header "Jenkins-Crumb" Text :> Verb 'POST 200 '[JSON] () -- 'postJobDisable' route
    :<|> "job" :> Capture "name" Text :> "enable" :> Header "Jenkins-Crumb" Text :> Verb 'POST 200 '[JSON] () -- 'postJobEnable' route
    :<|> "job" :> Capture "name" Text :> "lastBuild" :> "stop" :> Header "Jenkins-Crumb" Text :> Verb 'POST 200 '[JSON] () -- 'postJobLastBuildStop' route
    :<|> "view" :> Capture "name" Text :> "config.xml" :> ReqBody '[JSON] Text :> Header "Jenkins-Crumb" Text :> Verb 'POST 200 '[JSON] () -- 'postViewConfig' route

-- | Server or client configuration, specifying the host and port to query or serve on.
data ServerConfig = ServerConfig
  { configHost :: String  -- ^ Hostname to serve on, e.g. "127.0.0.1"
  , configPort :: Int      -- ^ Port to serve on, e.g. 8080
  } deriving (Eq, Ord, Show, Read)

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


-- | Backend for SwaggyJenkins.
-- The backend can be used both for the client and the server. The client generated from the SwaggyJenkins Swagger spec
-- is a backend that executes actions by sending HTTP requests (see @createSwaggyJenkinsClient@). Alternatively, provided
-- a backend, the API can be served using @runSwaggyJenkinsServer@.
data SwaggyJenkinsBackend m = SwaggyJenkinsBackend
  { getAuthenticatedUser :: Text -> m SwaggyjenkinsUser{- ^ Retrieve authenticated user details for an organisation -}
  , getClasses :: Text -> m Text{- ^ Get a list of class names supported by a given class -}
  , getOrganisation :: Text -> m SwaggyjenkinsOrganisation{- ^ Retrieve organisation details -}
  , getOrganisations :: m GetOrganisations{- ^ Retrieve all organisations details -}
  , getPipelineBranchByOrg :: Text -> Text -> Text -> m IojenkinsblueoceanrestimplpipelineBranchImpl{- ^ Retrieve branch details for an organisation pipeline -}
  , getPipelineBranchesByOrg :: Text -> Text -> m GetMultibranchPipeline{- ^ Retrieve all branches details for an organisation pipeline -}
  , getPipelineByOrg :: Text -> Text -> m SwaggyjenkinsPipeline{- ^ Retrieve pipeline details for an organisation -}
  , getPipelineFolderByOrg :: Text -> Text -> m IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl{- ^ Retrieve pipeline folder for an organisation -}
  , getPipelineFolderByOrg_0 :: Text -> Text -> Text -> m IojenkinsblueoceanserviceembeddedrestPipelineImpl{- ^ Retrieve pipeline details for an organisation folder -}
  , getPipelinesByOrg :: Text -> m GetPipelines{- ^ Retrieve all pipelines details for an organisation -}
  , getUser :: Text -> Text -> m SwaggyjenkinsUser{- ^ Retrieve user details for an organisation -}
  , getUsers :: Text -> m SwaggyjenkinsUser{- ^ Retrieve users details for an organisation -}
  , search :: Maybe Text -> m Text{- ^ Get classes details -}
  , search_0 :: Maybe Text -> m Text{- ^ Search for any resource details -}
  , getComputer :: m HudsonmodelComputerSet{- ^ Retrieve computer details -}
  , getCrumb :: m HudsonsecuritycsrfDefaultCrumbIssuer{- ^ Retrieve CSRF protection token -}
  , getJenkins :: m HudsonmodelHudson{- ^ Retrieve Jenkins details -}
  , getJob :: Text -> m HudsonmodelFreeStyleProject{- ^ Retrieve job details -}
  , getJobConfig :: Text -> m Text{- ^ Retrieve job configuration -}
  , getJobLastBuild :: Text -> m HudsonmodelFreeStyleBuild{- ^ Retrieve job's last build details -}
  , getJobProgressiveText :: Text -> Text -> Maybe Text -> m (){- ^ Retrieve job's build progressive text output -}
  , getQueue :: m HudsonmodelQueue{- ^ Retrieve queue details -}
  , getQueueItem :: Text -> m HudsonmodelQueue{- ^ Retrieve queued item details -}
  , getView :: Text -> m HudsonmodelListView{- ^ Retrieve view details -}
  , getViewConfig :: Text -> m Text{- ^ Retrieve view configuration -}
  , headJenkins :: m (){- ^ Retrieve Jenkins headers -}
  , postCreateItem :: Maybe Text -> Maybe Text -> Maybe Text -> Text -> Maybe Text -> Maybe Text -> m (){- ^ Create a new job using job configuration, or copied from an existing job -}
  , postCreateView :: Maybe Text -> Text -> Maybe Text -> Maybe Text -> m (){- ^ Create a new view using view configuration -}
  , postJobBuild :: Text -> Maybe Text -> Maybe Text -> Maybe Text -> m (){- ^ Build a job -}
  , postJobConfig :: Text -> Text -> Maybe Text -> m (){- ^ Update job configuration -}
  , postJobDelete :: Text -> Maybe Text -> m (){- ^ Delete a job -}
  , postJobDisable :: Text -> Maybe Text -> m (){- ^ Disable a job -}
  , postJobEnable :: Text -> Maybe Text -> m (){- ^ Enable a job -}
  , postJobLastBuildStop :: Text -> Maybe Text -> m (){- ^ Stop a job -}
  , postViewConfig :: Text -> Text -> Maybe Text -> m (){- ^ Update view configuration -}
  }

newtype SwaggyJenkinsClient a = SwaggyJenkinsClient
  { runClient :: Manager -> BaseUrl -> ExceptT ServantError IO a
  } deriving Functor

instance Applicative SwaggyJenkinsClient where
  pure x = SwaggyJenkinsClient (\_ _ -> pure x)
  (SwaggyJenkinsClient f) <*> (SwaggyJenkinsClient x) =
    SwaggyJenkinsClient (\manager url -> f manager url <*> x manager url)

instance Monad SwaggyJenkinsClient where
  (SwaggyJenkinsClient a) >>= f =
    SwaggyJenkinsClient (\manager url -> do
      value <- a manager url
      runClient (f value) manager url)

instance MonadIO SwaggyJenkinsClient where
  liftIO io = SwaggyJenkinsClient (\_ _ -> liftIO io)

createSwaggyJenkinsClient :: SwaggyJenkinsBackend SwaggyJenkinsClient
createSwaggyJenkinsClient = SwaggyJenkinsBackend{..}
  where
    ((coerce -> getAuthenticatedUser) :<|>
     (coerce -> getClasses) :<|>
     (coerce -> getOrganisation) :<|>
     (coerce -> getOrganisations) :<|>
     (coerce -> getPipelineBranchByOrg) :<|>
     (coerce -> getPipelineBranchesByOrg) :<|>
     (coerce -> getPipelineByOrg) :<|>
     (coerce -> getPipelineFolderByOrg) :<|>
     (coerce -> getPipelineFolderByOrg_0) :<|>
     (coerce -> getPipelinesByOrg) :<|>
     (coerce -> getUser) :<|>
     (coerce -> getUsers) :<|>
     (coerce -> search) :<|>
     (coerce -> search_0) :<|>
     (coerce -> getComputer) :<|>
     (coerce -> getCrumb) :<|>
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
     (coerce -> postViewConfig)) = client (Proxy :: Proxy SwaggyJenkinsAPI)

-- | Run requests in the SwaggyJenkinsClient monad.
runSwaggyJenkinsClient :: ServerConfig -> SwaggyJenkinsClient a -> ExceptT ServantError IO a
runSwaggyJenkinsClient clientConfig cl = do
  manager <- liftIO $ newManager defaultManagerSettings
  runSwaggyJenkinsClientWithManager manager clientConfig cl

-- | Run requests in the SwaggyJenkinsClient monad using a custom manager.
runSwaggyJenkinsClientWithManager :: Manager -> ServerConfig -> SwaggyJenkinsClient a -> ExceptT ServantError IO a
runSwaggyJenkinsClientWithManager manager clientConfig cl =
  runClient cl manager $ BaseUrl Http (configHost clientConfig) (configPort clientConfig) ""

-- | Run the SwaggyJenkins server at the provided host and port.
runSwaggyJenkinsServer :: MonadIO m => ServerConfig -> SwaggyJenkinsBackend (ExceptT ServantErr IO)  -> m ()
runSwaggyJenkinsServer ServerConfig{..} backend =
  liftIO $ Warp.runSettings warpSettings $ serve (Proxy :: Proxy SwaggyJenkinsAPI) (serverFromBackend backend)
  where
    warpSettings = Warp.defaultSettings & Warp.setPort configPort & Warp.setHost (fromString configHost)
    serverFromBackend SwaggyJenkinsBackend{..} =
      (coerce getAuthenticatedUser :<|>
       coerce getClasses :<|>
       coerce getOrganisation :<|>
       coerce getOrganisations :<|>
       coerce getPipelineBranchByOrg :<|>
       coerce getPipelineBranchesByOrg :<|>
       coerce getPipelineByOrg :<|>
       coerce getPipelineFolderByOrg :<|>
       coerce getPipelineFolderByOrg_0 :<|>
       coerce getPipelinesByOrg :<|>
       coerce getUser :<|>
       coerce getUsers :<|>
       coerce search :<|>
       coerce search_0 :<|>
       coerce getComputer :<|>
       coerce getCrumb :<|>
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
       coerce postViewConfig)
