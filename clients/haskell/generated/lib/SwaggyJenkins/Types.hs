{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveDataTypeable         #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module SwaggyJenkins.Types (
  AllView (..),
  BranchImpl (..),
  BranchImpllinks (..),
  BranchImplpermissions (..),
  CauseAction (..),
  CauseUserIdCause (..),
  ClassesByClass (..),
  ClockDifference (..),
  ComputerSet (..),
  DefaultCrumbIssuer (..),
  DiskSpaceMonitorDescriptorDiskSpace (..),
  EmptyChangeLogSet (..),
  ExtensionClassContainerImpl1 (..),
  ExtensionClassContainerImpl1links (..),
  ExtensionClassContainerImpl1map (..),
  ExtensionClassImpl (..),
  ExtensionClassImpllinks (..),
  FavoriteImpl (..),
  FavoriteImpllinks (..),
  FreeStyleBuild (..),
  FreeStyleProject (..),
  FreeStyleProjectactions (..),
  FreeStyleProjecthealthReport (..),
  GenericResource (..),
  GithubContent (..),
  GithubFile (..),
  GithubOrganization (..),
  GithubOrganizationlinks (..),
  GithubRepositories (..),
  GithubRepositorieslinks (..),
  GithubRepository (..),
  GithubRepositorylinks (..),
  GithubRepositorypermissions (..),
  GithubRespositoryContainer (..),
  GithubRespositoryContainerlinks (..),
  GithubScm (..),
  GithubScmlinks (..),
  Hudson (..),
  HudsonMasterComputer (..),
  HudsonMasterComputerexecutors (..),
  HudsonMasterComputermonitorData (..),
  HudsonassignedLabels (..),
  InputStepImpl (..),
  InputStepImpllinks (..),
  Label1 (..),
  Link (..),
  ListView (..),
  MultibranchPipeline (..),
  NullSCM (..),
  Organisation (..),
  Pipeline (..),
  PipelineActivity (..),
  PipelineActivityartifacts (..),
  PipelineBranchesitem (..),
  PipelineBranchesitemlatestRun (..),
  PipelineBranchesitempullRequest (..),
  PipelineBranchesitempullRequestlinks (..),
  PipelineFolderImpl (..),
  PipelineImpl (..),
  PipelineImpllinks (..),
  PipelineRun (..),
  PipelineRunImpl (..),
  PipelineRunImpllinks (..),
  PipelineRunNode (..),
  PipelineRunNodeedges (..),
  PipelineRunartifacts (..),
  PipelineStepImpl (..),
  PipelineStepImpllinks (..),
  PipelinelatestRun (..),
  PipelinelatestRunartifacts (..),
  Queue (..),
  QueueBlockedItem (..),
  QueueItemImpl (..),
  QueueLeftItem (..),
  ResponseTimeMonitorData (..),
  StringParameterDefinition (..),
  StringParameterValue (..),
  SwapSpaceMonitorMemoryUsage2 (..),
  UnlabeledLoadStatistics (..),
  User (..),
  ) where

import Data.Data (Data)
import Data.UUID (UUID)
import Data.List (lookup)
import Data.Maybe (fromMaybe)
import Data.Aeson (Value, FromJSON(..), ToJSON(..), genericToJSON, genericParseJSON)
import Data.Aeson.Types (Options(..), defaultOptions)
import Data.Set (Set)
import Data.Text (Text)
import Data.Time
import Data.Swagger (ToSchema, declareNamedSchema)
import qualified Data.Swagger as Swagger
import qualified Data.Char as Char
import qualified Data.Text as T
import qualified Data.Map as Map
import GHC.Generics (Generic)


-- | 
data AllView = AllView
  { allViewUnderscoreclass :: Maybe Text -- ^ 
  , allViewName :: Maybe Text -- ^ 
  , allViewUrl :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON AllView where
  parseJSON = genericParseJSON optionsAllView
instance ToJSON AllView where
  toJSON = genericToJSON optionsAllView
instance ToSchema AllView where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsAllView

optionsAllView :: Options
optionsAllView =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("allViewUnderscoreclass", "_class")
      , ("allViewName", "name")
      , ("allViewUrl", "url")
      ]


-- | 
data BranchImpl = BranchImpl
  { branchImplUnderscoreclass :: Maybe Text -- ^ 
  , branchImplDisplayName :: Maybe Text -- ^ 
  , branchImplEstimatedDurationInMillis :: Maybe Int -- ^ 
  , branchImplFullDisplayName :: Maybe Text -- ^ 
  , branchImplFullName :: Maybe Text -- ^ 
  , branchImplName :: Maybe Text -- ^ 
  , branchImplOrganization :: Maybe Text -- ^ 
  , branchImplParameters :: Maybe [StringParameterDefinition] -- ^ 
  , branchImplPermissions :: Maybe BranchImplpermissions -- ^ 
  , branchImplWeatherScore :: Maybe Int -- ^ 
  , branchImplPullRequest :: Maybe Text -- ^ 
  , branchImplUnderscorelinks :: Maybe BranchImpllinks -- ^ 
  , branchImplLatestRun :: Maybe PipelineRunImpl -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON BranchImpl where
  parseJSON = genericParseJSON optionsBranchImpl
instance ToJSON BranchImpl where
  toJSON = genericToJSON optionsBranchImpl
instance ToSchema BranchImpl where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsBranchImpl

optionsBranchImpl :: Options
optionsBranchImpl =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("branchImplUnderscoreclass", "_class")
      , ("branchImplDisplayName", "displayName")
      , ("branchImplEstimatedDurationInMillis", "estimatedDurationInMillis")
      , ("branchImplFullDisplayName", "fullDisplayName")
      , ("branchImplFullName", "fullName")
      , ("branchImplName", "name")
      , ("branchImplOrganization", "organization")
      , ("branchImplParameters", "parameters")
      , ("branchImplPermissions", "permissions")
      , ("branchImplWeatherScore", "weatherScore")
      , ("branchImplPullRequest", "pullRequest")
      , ("branchImplUnderscorelinks", "_links")
      , ("branchImplLatestRun", "latestRun")
      ]


-- | 
data BranchImpllinks = BranchImpllinks
  { branchImpllinksSelf :: Maybe Link -- ^ 
  , branchImpllinksActions :: Maybe Link -- ^ 
  , branchImpllinksRuns :: Maybe Link -- ^ 
  , branchImpllinksQueue :: Maybe Link -- ^ 
  , branchImpllinksUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON BranchImpllinks where
  parseJSON = genericParseJSON optionsBranchImpllinks
instance ToJSON BranchImpllinks where
  toJSON = genericToJSON optionsBranchImpllinks
instance ToSchema BranchImpllinks where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsBranchImpllinks

optionsBranchImpllinks :: Options
optionsBranchImpllinks =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("branchImpllinksSelf", "self")
      , ("branchImpllinksActions", "actions")
      , ("branchImpllinksRuns", "runs")
      , ("branchImpllinksQueue", "queue")
      , ("branchImpllinksUnderscoreclass", "_class")
      ]


-- | 
data BranchImplpermissions = BranchImplpermissions
  { branchImplpermissionsCreate :: Maybe Bool -- ^ 
  , branchImplpermissionsRead :: Maybe Bool -- ^ 
  , branchImplpermissionsStart :: Maybe Bool -- ^ 
  , branchImplpermissionsStop :: Maybe Bool -- ^ 
  , branchImplpermissionsUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON BranchImplpermissions where
  parseJSON = genericParseJSON optionsBranchImplpermissions
instance ToJSON BranchImplpermissions where
  toJSON = genericToJSON optionsBranchImplpermissions
instance ToSchema BranchImplpermissions where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsBranchImplpermissions

optionsBranchImplpermissions :: Options
optionsBranchImplpermissions =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("branchImplpermissionsCreate", "create")
      , ("branchImplpermissionsRead", "read")
      , ("branchImplpermissionsStart", "start")
      , ("branchImplpermissionsStop", "stop")
      , ("branchImplpermissionsUnderscoreclass", "_class")
      ]


-- | 
data CauseAction = CauseAction
  { causeActionUnderscoreclass :: Maybe Text -- ^ 
  , causeActionCauses :: Maybe [CauseUserIdCause] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CauseAction where
  parseJSON = genericParseJSON optionsCauseAction
instance ToJSON CauseAction where
  toJSON = genericToJSON optionsCauseAction
instance ToSchema CauseAction where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsCauseAction

optionsCauseAction :: Options
optionsCauseAction =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("causeActionUnderscoreclass", "_class")
      , ("causeActionCauses", "causes")
      ]


-- | 
data CauseUserIdCause = CauseUserIdCause
  { causeUserIdCauseUnderscoreclass :: Maybe Text -- ^ 
  , causeUserIdCauseShortDescription :: Maybe Text -- ^ 
  , causeUserIdCauseUserId :: Maybe Text -- ^ 
  , causeUserIdCauseUserName :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON CauseUserIdCause where
  parseJSON = genericParseJSON optionsCauseUserIdCause
instance ToJSON CauseUserIdCause where
  toJSON = genericToJSON optionsCauseUserIdCause
instance ToSchema CauseUserIdCause where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsCauseUserIdCause

optionsCauseUserIdCause :: Options
optionsCauseUserIdCause =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("causeUserIdCauseUnderscoreclass", "_class")
      , ("causeUserIdCauseShortDescription", "shortDescription")
      , ("causeUserIdCauseUserId", "userId")
      , ("causeUserIdCauseUserName", "userName")
      ]


-- | 
data ClassesByClass = ClassesByClass
  { classesByClassClasses :: Maybe [Text] -- ^ 
  , classesByClassUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ClassesByClass where
  parseJSON = genericParseJSON optionsClassesByClass
instance ToJSON ClassesByClass where
  toJSON = genericToJSON optionsClassesByClass
instance ToSchema ClassesByClass where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsClassesByClass

optionsClassesByClass :: Options
optionsClassesByClass =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("classesByClassClasses", "classes")
      , ("classesByClassUnderscoreclass", "_class")
      ]


-- | 
data ClockDifference = ClockDifference
  { clockDifferenceUnderscoreclass :: Maybe Text -- ^ 
  , clockDifferenceDiff :: Maybe Int -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ClockDifference where
  parseJSON = genericParseJSON optionsClockDifference
instance ToJSON ClockDifference where
  toJSON = genericToJSON optionsClockDifference
instance ToSchema ClockDifference where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsClockDifference

optionsClockDifference :: Options
optionsClockDifference =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("clockDifferenceUnderscoreclass", "_class")
      , ("clockDifferenceDiff", "diff")
      ]


-- | 
data ComputerSet = ComputerSet
  { computerSetUnderscoreclass :: Maybe Text -- ^ 
  , computerSetBusyExecutors :: Maybe Int -- ^ 
  , computerSetComputer :: Maybe [HudsonMasterComputer] -- ^ 
  , computerSetDisplayName :: Maybe Text -- ^ 
  , computerSetTotalExecutors :: Maybe Int -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ComputerSet where
  parseJSON = genericParseJSON optionsComputerSet
instance ToJSON ComputerSet where
  toJSON = genericToJSON optionsComputerSet
instance ToSchema ComputerSet where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsComputerSet

optionsComputerSet :: Options
optionsComputerSet =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("computerSetUnderscoreclass", "_class")
      , ("computerSetBusyExecutors", "busyExecutors")
      , ("computerSetComputer", "computer")
      , ("computerSetDisplayName", "displayName")
      , ("computerSetTotalExecutors", "totalExecutors")
      ]


-- | 
data DefaultCrumbIssuer = DefaultCrumbIssuer
  { defaultCrumbIssuerUnderscoreclass :: Maybe Text -- ^ 
  , defaultCrumbIssuerCrumb :: Maybe Text -- ^ 
  , defaultCrumbIssuerCrumbRequestField :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON DefaultCrumbIssuer where
  parseJSON = genericParseJSON optionsDefaultCrumbIssuer
instance ToJSON DefaultCrumbIssuer where
  toJSON = genericToJSON optionsDefaultCrumbIssuer
instance ToSchema DefaultCrumbIssuer where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsDefaultCrumbIssuer

optionsDefaultCrumbIssuer :: Options
optionsDefaultCrumbIssuer =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("defaultCrumbIssuerUnderscoreclass", "_class")
      , ("defaultCrumbIssuerCrumb", "crumb")
      , ("defaultCrumbIssuerCrumbRequestField", "crumbRequestField")
      ]


-- | 
data DiskSpaceMonitorDescriptorDiskSpace = DiskSpaceMonitorDescriptorDiskSpace
  { diskSpaceMonitorDescriptorDiskSpaceUnderscoreclass :: Maybe Text -- ^ 
  , diskSpaceMonitorDescriptorDiskSpaceTimestamp :: Maybe Int -- ^ 
  , diskSpaceMonitorDescriptorDiskSpacePath :: Maybe Text -- ^ 
  , diskSpaceMonitorDescriptorDiskSpaceSize :: Maybe Int -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON DiskSpaceMonitorDescriptorDiskSpace where
  parseJSON = genericParseJSON optionsDiskSpaceMonitorDescriptorDiskSpace
instance ToJSON DiskSpaceMonitorDescriptorDiskSpace where
  toJSON = genericToJSON optionsDiskSpaceMonitorDescriptorDiskSpace
instance ToSchema DiskSpaceMonitorDescriptorDiskSpace where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsDiskSpaceMonitorDescriptorDiskSpace

optionsDiskSpaceMonitorDescriptorDiskSpace :: Options
optionsDiskSpaceMonitorDescriptorDiskSpace =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("diskSpaceMonitorDescriptorDiskSpaceUnderscoreclass", "_class")
      , ("diskSpaceMonitorDescriptorDiskSpaceTimestamp", "timestamp")
      , ("diskSpaceMonitorDescriptorDiskSpacePath", "path")
      , ("diskSpaceMonitorDescriptorDiskSpaceSize", "size")
      ]


-- | 
data EmptyChangeLogSet = EmptyChangeLogSet
  { emptyChangeLogSetUnderscoreclass :: Maybe Text -- ^ 
  , emptyChangeLogSetKind :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON EmptyChangeLogSet where
  parseJSON = genericParseJSON optionsEmptyChangeLogSet
instance ToJSON EmptyChangeLogSet where
  toJSON = genericToJSON optionsEmptyChangeLogSet
instance ToSchema EmptyChangeLogSet where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsEmptyChangeLogSet

optionsEmptyChangeLogSet :: Options
optionsEmptyChangeLogSet =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("emptyChangeLogSetUnderscoreclass", "_class")
      , ("emptyChangeLogSetKind", "kind")
      ]


-- | 
data ExtensionClassContainerImpl1 = ExtensionClassContainerImpl1
  { extensionClassContainerImpl1Underscoreclass :: Maybe Text -- ^ 
  , extensionClassContainerImpl1Underscorelinks :: Maybe ExtensionClassContainerImpl1links -- ^ 
  , extensionClassContainerImpl1Map :: Maybe ExtensionClassContainerImpl1map -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ExtensionClassContainerImpl1 where
  parseJSON = genericParseJSON optionsExtensionClassContainerImpl1
instance ToJSON ExtensionClassContainerImpl1 where
  toJSON = genericToJSON optionsExtensionClassContainerImpl1
instance ToSchema ExtensionClassContainerImpl1 where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsExtensionClassContainerImpl1

optionsExtensionClassContainerImpl1 :: Options
optionsExtensionClassContainerImpl1 =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("extensionClassContainerImpl1Underscoreclass", "_class")
      , ("extensionClassContainerImpl1Underscorelinks", "_links")
      , ("extensionClassContainerImpl1Map", "map")
      ]


-- | 
data ExtensionClassContainerImpl1links = ExtensionClassContainerImpl1links
  { extensionClassContainerImpl1linksSelf :: Maybe Link -- ^ 
  , extensionClassContainerImpl1linksUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ExtensionClassContainerImpl1links where
  parseJSON = genericParseJSON optionsExtensionClassContainerImpl1links
instance ToJSON ExtensionClassContainerImpl1links where
  toJSON = genericToJSON optionsExtensionClassContainerImpl1links
instance ToSchema ExtensionClassContainerImpl1links where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsExtensionClassContainerImpl1links

optionsExtensionClassContainerImpl1links :: Options
optionsExtensionClassContainerImpl1links =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("extensionClassContainerImpl1linksSelf", "self")
      , ("extensionClassContainerImpl1linksUnderscoreclass", "_class")
      ]


-- | 
data ExtensionClassContainerImpl1map = ExtensionClassContainerImpl1map
  { extensionClassContainerImpl1mapIoPeriodjenkinsPeriodblueoceanPeriodservicePeriodembeddedPeriodrestPeriodPipelineImpl :: Maybe ExtensionClassImpl -- ^ 
  , extensionClassContainerImpl1mapIoPeriodjenkinsPeriodblueoceanPeriodservicePeriodembeddedPeriodrestPeriodMultiBranchPipelineImpl :: Maybe ExtensionClassImpl -- ^ 
  , extensionClassContainerImpl1mapUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ExtensionClassContainerImpl1map where
  parseJSON = genericParseJSON optionsExtensionClassContainerImpl1map
instance ToJSON ExtensionClassContainerImpl1map where
  toJSON = genericToJSON optionsExtensionClassContainerImpl1map
instance ToSchema ExtensionClassContainerImpl1map where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsExtensionClassContainerImpl1map

optionsExtensionClassContainerImpl1map :: Options
optionsExtensionClassContainerImpl1map =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("extensionClassContainerImpl1mapIoPeriodjenkinsPeriodblueoceanPeriodservicePeriodembeddedPeriodrestPeriodPipelineImpl", "io.jenkins.blueocean.service.embedded.rest.PipelineImpl")
      , ("extensionClassContainerImpl1mapIoPeriodjenkinsPeriodblueoceanPeriodservicePeriodembeddedPeriodrestPeriodMultiBranchPipelineImpl", "io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineImpl")
      , ("extensionClassContainerImpl1mapUnderscoreclass", "_class")
      ]


-- | 
data ExtensionClassImpl = ExtensionClassImpl
  { extensionClassImplUnderscoreclass :: Maybe Text -- ^ 
  , extensionClassImplUnderscorelinks :: Maybe ExtensionClassImpllinks -- ^ 
  , extensionClassImplClasses :: Maybe [Text] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ExtensionClassImpl where
  parseJSON = genericParseJSON optionsExtensionClassImpl
instance ToJSON ExtensionClassImpl where
  toJSON = genericToJSON optionsExtensionClassImpl
instance ToSchema ExtensionClassImpl where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsExtensionClassImpl

optionsExtensionClassImpl :: Options
optionsExtensionClassImpl =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("extensionClassImplUnderscoreclass", "_class")
      , ("extensionClassImplUnderscorelinks", "_links")
      , ("extensionClassImplClasses", "classes")
      ]


-- | 
data ExtensionClassImpllinks = ExtensionClassImpllinks
  { extensionClassImpllinksSelf :: Maybe Link -- ^ 
  , extensionClassImpllinksUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ExtensionClassImpllinks where
  parseJSON = genericParseJSON optionsExtensionClassImpllinks
instance ToJSON ExtensionClassImpllinks where
  toJSON = genericToJSON optionsExtensionClassImpllinks
instance ToSchema ExtensionClassImpllinks where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsExtensionClassImpllinks

optionsExtensionClassImpllinks :: Options
optionsExtensionClassImpllinks =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("extensionClassImpllinksSelf", "self")
      , ("extensionClassImpllinksUnderscoreclass", "_class")
      ]


-- | 
data FavoriteImpl = FavoriteImpl
  { favoriteImplUnderscoreclass :: Maybe Text -- ^ 
  , favoriteImplUnderscorelinks :: Maybe FavoriteImpllinks -- ^ 
  , favoriteImplItem :: Maybe PipelineImpl -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON FavoriteImpl where
  parseJSON = genericParseJSON optionsFavoriteImpl
instance ToJSON FavoriteImpl where
  toJSON = genericToJSON optionsFavoriteImpl
instance ToSchema FavoriteImpl where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsFavoriteImpl

optionsFavoriteImpl :: Options
optionsFavoriteImpl =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("favoriteImplUnderscoreclass", "_class")
      , ("favoriteImplUnderscorelinks", "_links")
      , ("favoriteImplItem", "item")
      ]


-- | 
data FavoriteImpllinks = FavoriteImpllinks
  { favoriteImpllinksSelf :: Maybe Link -- ^ 
  , favoriteImpllinksUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON FavoriteImpllinks where
  parseJSON = genericParseJSON optionsFavoriteImpllinks
instance ToJSON FavoriteImpllinks where
  toJSON = genericToJSON optionsFavoriteImpllinks
instance ToSchema FavoriteImpllinks where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsFavoriteImpllinks

optionsFavoriteImpllinks :: Options
optionsFavoriteImpllinks =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("favoriteImpllinksSelf", "self")
      , ("favoriteImpllinksUnderscoreclass", "_class")
      ]


-- | 
data FreeStyleBuild = FreeStyleBuild
  { freeStyleBuildUnderscoreclass :: Maybe Text -- ^ 
  , freeStyleBuildNumber :: Maybe Int -- ^ 
  , freeStyleBuildUrl :: Maybe Text -- ^ 
  , freeStyleBuildActions :: Maybe [CauseAction] -- ^ 
  , freeStyleBuildBuilding :: Maybe Bool -- ^ 
  , freeStyleBuildDescription :: Maybe Text -- ^ 
  , freeStyleBuildDisplayName :: Maybe Text -- ^ 
  , freeStyleBuildDuration :: Maybe Int -- ^ 
  , freeStyleBuildEstimatedDuration :: Maybe Int -- ^ 
  , freeStyleBuildExecutor :: Maybe Text -- ^ 
  , freeStyleBuildFullDisplayName :: Maybe Text -- ^ 
  , freeStyleBuildId :: Maybe Text -- ^ 
  , freeStyleBuildKeepLog :: Maybe Bool -- ^ 
  , freeStyleBuildQueueId :: Maybe Int -- ^ 
  , freeStyleBuildResult :: Maybe Text -- ^ 
  , freeStyleBuildTimestamp :: Maybe Int -- ^ 
  , freeStyleBuildBuiltOn :: Maybe Text -- ^ 
  , freeStyleBuildChangeSet :: Maybe EmptyChangeLogSet -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON FreeStyleBuild where
  parseJSON = genericParseJSON optionsFreeStyleBuild
instance ToJSON FreeStyleBuild where
  toJSON = genericToJSON optionsFreeStyleBuild
instance ToSchema FreeStyleBuild where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsFreeStyleBuild

optionsFreeStyleBuild :: Options
optionsFreeStyleBuild =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("freeStyleBuildUnderscoreclass", "_class")
      , ("freeStyleBuildNumber", "number")
      , ("freeStyleBuildUrl", "url")
      , ("freeStyleBuildActions", "actions")
      , ("freeStyleBuildBuilding", "building")
      , ("freeStyleBuildDescription", "description")
      , ("freeStyleBuildDisplayName", "displayName")
      , ("freeStyleBuildDuration", "duration")
      , ("freeStyleBuildEstimatedDuration", "estimatedDuration")
      , ("freeStyleBuildExecutor", "executor")
      , ("freeStyleBuildFullDisplayName", "fullDisplayName")
      , ("freeStyleBuildId", "id")
      , ("freeStyleBuildKeepLog", "keepLog")
      , ("freeStyleBuildQueueId", "queueId")
      , ("freeStyleBuildResult", "result")
      , ("freeStyleBuildTimestamp", "timestamp")
      , ("freeStyleBuildBuiltOn", "builtOn")
      , ("freeStyleBuildChangeSet", "changeSet")
      ]


-- | 
data FreeStyleProject = FreeStyleProject
  { freeStyleProjectUnderscoreclass :: Maybe Text -- ^ 
  , freeStyleProjectName :: Maybe Text -- ^ 
  , freeStyleProjectUrl :: Maybe Text -- ^ 
  , freeStyleProjectColor :: Maybe Text -- ^ 
  , freeStyleProjectActions :: Maybe [FreeStyleProjectactions] -- ^ 
  , freeStyleProjectDescription :: Maybe Text -- ^ 
  , freeStyleProjectDisplayName :: Maybe Text -- ^ 
  , freeStyleProjectDisplayNameOrNull :: Maybe Text -- ^ 
  , freeStyleProjectFullDisplayName :: Maybe Text -- ^ 
  , freeStyleProjectFullName :: Maybe Text -- ^ 
  , freeStyleProjectBuildable :: Maybe Bool -- ^ 
  , freeStyleProjectBuilds :: Maybe [FreeStyleBuild] -- ^ 
  , freeStyleProjectFirstBuild :: Maybe FreeStyleBuild -- ^ 
  , freeStyleProjectHealthReport :: Maybe [FreeStyleProjecthealthReport] -- ^ 
  , freeStyleProjectInQueue :: Maybe Bool -- ^ 
  , freeStyleProjectKeepDependencies :: Maybe Bool -- ^ 
  , freeStyleProjectLastBuild :: Maybe FreeStyleBuild -- ^ 
  , freeStyleProjectLastCompletedBuild :: Maybe FreeStyleBuild -- ^ 
  , freeStyleProjectLastFailedBuild :: Maybe Text -- ^ 
  , freeStyleProjectLastStableBuild :: Maybe FreeStyleBuild -- ^ 
  , freeStyleProjectLastSuccessfulBuild :: Maybe FreeStyleBuild -- ^ 
  , freeStyleProjectLastUnstableBuild :: Maybe Text -- ^ 
  , freeStyleProjectLastUnsuccessfulBuild :: Maybe Text -- ^ 
  , freeStyleProjectNextBuildNumber :: Maybe Int -- ^ 
  , freeStyleProjectQueueItem :: Maybe Text -- ^ 
  , freeStyleProjectConcurrentBuild :: Maybe Bool -- ^ 
  , freeStyleProjectScm :: Maybe NullSCM -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON FreeStyleProject where
  parseJSON = genericParseJSON optionsFreeStyleProject
instance ToJSON FreeStyleProject where
  toJSON = genericToJSON optionsFreeStyleProject
instance ToSchema FreeStyleProject where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsFreeStyleProject

optionsFreeStyleProject :: Options
optionsFreeStyleProject =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("freeStyleProjectUnderscoreclass", "_class")
      , ("freeStyleProjectName", "name")
      , ("freeStyleProjectUrl", "url")
      , ("freeStyleProjectColor", "color")
      , ("freeStyleProjectActions", "actions")
      , ("freeStyleProjectDescription", "description")
      , ("freeStyleProjectDisplayName", "displayName")
      , ("freeStyleProjectDisplayNameOrNull", "displayNameOrNull")
      , ("freeStyleProjectFullDisplayName", "fullDisplayName")
      , ("freeStyleProjectFullName", "fullName")
      , ("freeStyleProjectBuildable", "buildable")
      , ("freeStyleProjectBuilds", "builds")
      , ("freeStyleProjectFirstBuild", "firstBuild")
      , ("freeStyleProjectHealthReport", "healthReport")
      , ("freeStyleProjectInQueue", "inQueue")
      , ("freeStyleProjectKeepDependencies", "keepDependencies")
      , ("freeStyleProjectLastBuild", "lastBuild")
      , ("freeStyleProjectLastCompletedBuild", "lastCompletedBuild")
      , ("freeStyleProjectLastFailedBuild", "lastFailedBuild")
      , ("freeStyleProjectLastStableBuild", "lastStableBuild")
      , ("freeStyleProjectLastSuccessfulBuild", "lastSuccessfulBuild")
      , ("freeStyleProjectLastUnstableBuild", "lastUnstableBuild")
      , ("freeStyleProjectLastUnsuccessfulBuild", "lastUnsuccessfulBuild")
      , ("freeStyleProjectNextBuildNumber", "nextBuildNumber")
      , ("freeStyleProjectQueueItem", "queueItem")
      , ("freeStyleProjectConcurrentBuild", "concurrentBuild")
      , ("freeStyleProjectScm", "scm")
      ]


-- | 
data FreeStyleProjectactions = FreeStyleProjectactions
  { freeStyleProjectactionsUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON FreeStyleProjectactions where
  parseJSON = genericParseJSON optionsFreeStyleProjectactions
instance ToJSON FreeStyleProjectactions where
  toJSON = genericToJSON optionsFreeStyleProjectactions
instance ToSchema FreeStyleProjectactions where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsFreeStyleProjectactions

optionsFreeStyleProjectactions :: Options
optionsFreeStyleProjectactions =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("freeStyleProjectactionsUnderscoreclass", "_class")
      ]


-- | 
data FreeStyleProjecthealthReport = FreeStyleProjecthealthReport
  { freeStyleProjecthealthReportDescription :: Maybe Text -- ^ 
  , freeStyleProjecthealthReportIconClassName :: Maybe Text -- ^ 
  , freeStyleProjecthealthReportIconUrl :: Maybe Text -- ^ 
  , freeStyleProjecthealthReportScore :: Maybe Int -- ^ 
  , freeStyleProjecthealthReportUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON FreeStyleProjecthealthReport where
  parseJSON = genericParseJSON optionsFreeStyleProjecthealthReport
instance ToJSON FreeStyleProjecthealthReport where
  toJSON = genericToJSON optionsFreeStyleProjecthealthReport
instance ToSchema FreeStyleProjecthealthReport where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsFreeStyleProjecthealthReport

optionsFreeStyleProjecthealthReport :: Options
optionsFreeStyleProjecthealthReport =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("freeStyleProjecthealthReportDescription", "description")
      , ("freeStyleProjecthealthReportIconClassName", "iconClassName")
      , ("freeStyleProjecthealthReportIconUrl", "iconUrl")
      , ("freeStyleProjecthealthReportScore", "score")
      , ("freeStyleProjecthealthReportUnderscoreclass", "_class")
      ]


-- | 
data GenericResource = GenericResource
  { genericResourceUnderscoreclass :: Maybe Text -- ^ 
  , genericResourceDisplayName :: Maybe Text -- ^ 
  , genericResourceDurationInMillis :: Maybe Int -- ^ 
  , genericResourceId :: Maybe Text -- ^ 
  , genericResourceResult :: Maybe Text -- ^ 
  , genericResourceStartTime :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON GenericResource where
  parseJSON = genericParseJSON optionsGenericResource
instance ToJSON GenericResource where
  toJSON = genericToJSON optionsGenericResource
instance ToSchema GenericResource where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsGenericResource

optionsGenericResource :: Options
optionsGenericResource =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("genericResourceUnderscoreclass", "_class")
      , ("genericResourceDisplayName", "displayName")
      , ("genericResourceDurationInMillis", "durationInMillis")
      , ("genericResourceId", "id")
      , ("genericResourceResult", "result")
      , ("genericResourceStartTime", "startTime")
      ]


-- | 
data GithubContent = GithubContent
  { githubContentName :: Maybe Text -- ^ 
  , githubContentSha :: Maybe Text -- ^ 
  , githubContentUnderscoreclass :: Maybe Text -- ^ 
  , githubContentRepo :: Maybe Text -- ^ 
  , githubContentSize :: Maybe Int -- ^ 
  , githubContentOwner :: Maybe Text -- ^ 
  , githubContentPath :: Maybe Text -- ^ 
  , githubContentBase64Data :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON GithubContent where
  parseJSON = genericParseJSON optionsGithubContent
instance ToJSON GithubContent where
  toJSON = genericToJSON optionsGithubContent
instance ToSchema GithubContent where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsGithubContent

optionsGithubContent :: Options
optionsGithubContent =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("githubContentName", "name")
      , ("githubContentSha", "sha")
      , ("githubContentUnderscoreclass", "_class")
      , ("githubContentRepo", "repo")
      , ("githubContentSize", "size")
      , ("githubContentOwner", "owner")
      , ("githubContentPath", "path")
      , ("githubContentBase64Data", "base64Data")
      ]


-- | 
data GithubFile = GithubFile
  { githubFileContent :: Maybe GithubContent -- ^ 
  , githubFileUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON GithubFile where
  parseJSON = genericParseJSON optionsGithubFile
instance ToJSON GithubFile where
  toJSON = genericToJSON optionsGithubFile
instance ToSchema GithubFile where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsGithubFile

optionsGithubFile :: Options
optionsGithubFile =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("githubFileContent", "content")
      , ("githubFileUnderscoreclass", "_class")
      ]


-- | 
data GithubOrganization = GithubOrganization
  { githubOrganizationUnderscoreclass :: Maybe Text -- ^ 
  , githubOrganizationUnderscorelinks :: Maybe GithubOrganizationlinks -- ^ 
  , githubOrganizationJenkinsOrganizationPipeline :: Maybe Bool -- ^ 
  , githubOrganizationName :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON GithubOrganization where
  parseJSON = genericParseJSON optionsGithubOrganization
instance ToJSON GithubOrganization where
  toJSON = genericToJSON optionsGithubOrganization
instance ToSchema GithubOrganization where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsGithubOrganization

optionsGithubOrganization :: Options
optionsGithubOrganization =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("githubOrganizationUnderscoreclass", "_class")
      , ("githubOrganizationUnderscorelinks", "_links")
      , ("githubOrganizationJenkinsOrganizationPipeline", "jenkinsOrganizationPipeline")
      , ("githubOrganizationName", "name")
      ]


-- | 
data GithubOrganizationlinks = GithubOrganizationlinks
  { githubOrganizationlinksRepositories :: Maybe Link -- ^ 
  , githubOrganizationlinksSelf :: Maybe Link -- ^ 
  , githubOrganizationlinksUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON GithubOrganizationlinks where
  parseJSON = genericParseJSON optionsGithubOrganizationlinks
instance ToJSON GithubOrganizationlinks where
  toJSON = genericToJSON optionsGithubOrganizationlinks
instance ToSchema GithubOrganizationlinks where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsGithubOrganizationlinks

optionsGithubOrganizationlinks :: Options
optionsGithubOrganizationlinks =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("githubOrganizationlinksRepositories", "repositories")
      , ("githubOrganizationlinksSelf", "self")
      , ("githubOrganizationlinksUnderscoreclass", "_class")
      ]


-- | 
data GithubRepositories = GithubRepositories
  { githubRepositoriesUnderscoreclass :: Maybe Text -- ^ 
  , githubRepositoriesUnderscorelinks :: Maybe GithubRepositorieslinks -- ^ 
  , githubRepositoriesItems :: Maybe [GithubRepository] -- ^ 
  , githubRepositoriesLastPage :: Maybe Int -- ^ 
  , githubRepositoriesNextPage :: Maybe Int -- ^ 
  , githubRepositoriesPageSize :: Maybe Int -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON GithubRepositories where
  parseJSON = genericParseJSON optionsGithubRepositories
instance ToJSON GithubRepositories where
  toJSON = genericToJSON optionsGithubRepositories
instance ToSchema GithubRepositories where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsGithubRepositories

optionsGithubRepositories :: Options
optionsGithubRepositories =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("githubRepositoriesUnderscoreclass", "_class")
      , ("githubRepositoriesUnderscorelinks", "_links")
      , ("githubRepositoriesItems", "items")
      , ("githubRepositoriesLastPage", "lastPage")
      , ("githubRepositoriesNextPage", "nextPage")
      , ("githubRepositoriesPageSize", "pageSize")
      ]


-- | 
data GithubRepositorieslinks = GithubRepositorieslinks
  { githubRepositorieslinksSelf :: Maybe Link -- ^ 
  , githubRepositorieslinksUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON GithubRepositorieslinks where
  parseJSON = genericParseJSON optionsGithubRepositorieslinks
instance ToJSON GithubRepositorieslinks where
  toJSON = genericToJSON optionsGithubRepositorieslinks
instance ToSchema GithubRepositorieslinks where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsGithubRepositorieslinks

optionsGithubRepositorieslinks :: Options
optionsGithubRepositorieslinks =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("githubRepositorieslinksSelf", "self")
      , ("githubRepositorieslinksUnderscoreclass", "_class")
      ]


-- | 
data GithubRepository = GithubRepository
  { githubRepositoryUnderscoreclass :: Maybe Text -- ^ 
  , githubRepositoryUnderscorelinks :: Maybe GithubRepositorylinks -- ^ 
  , githubRepositoryDefaultBranch :: Maybe Text -- ^ 
  , githubRepositoryDescription :: Maybe Text -- ^ 
  , githubRepositoryName :: Maybe Text -- ^ 
  , githubRepositoryPermissions :: Maybe GithubRepositorypermissions -- ^ 
  , githubRepositoryPrivate :: Maybe Bool -- ^ 
  , githubRepositoryFullName :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON GithubRepository where
  parseJSON = genericParseJSON optionsGithubRepository
instance ToJSON GithubRepository where
  toJSON = genericToJSON optionsGithubRepository
instance ToSchema GithubRepository where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsGithubRepository

optionsGithubRepository :: Options
optionsGithubRepository =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("githubRepositoryUnderscoreclass", "_class")
      , ("githubRepositoryUnderscorelinks", "_links")
      , ("githubRepositoryDefaultBranch", "defaultBranch")
      , ("githubRepositoryDescription", "description")
      , ("githubRepositoryName", "name")
      , ("githubRepositoryPermissions", "permissions")
      , ("githubRepositoryPrivate", "private")
      , ("githubRepositoryFullName", "fullName")
      ]


-- | 
data GithubRepositorylinks = GithubRepositorylinks
  { githubRepositorylinksSelf :: Maybe Link -- ^ 
  , githubRepositorylinksUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON GithubRepositorylinks where
  parseJSON = genericParseJSON optionsGithubRepositorylinks
instance ToJSON GithubRepositorylinks where
  toJSON = genericToJSON optionsGithubRepositorylinks
instance ToSchema GithubRepositorylinks where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsGithubRepositorylinks

optionsGithubRepositorylinks :: Options
optionsGithubRepositorylinks =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("githubRepositorylinksSelf", "self")
      , ("githubRepositorylinksUnderscoreclass", "_class")
      ]


-- | 
data GithubRepositorypermissions = GithubRepositorypermissions
  { githubRepositorypermissionsAdmin :: Maybe Bool -- ^ 
  , githubRepositorypermissionsPush :: Maybe Bool -- ^ 
  , githubRepositorypermissionsPull :: Maybe Bool -- ^ 
  , githubRepositorypermissionsUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON GithubRepositorypermissions where
  parseJSON = genericParseJSON optionsGithubRepositorypermissions
instance ToJSON GithubRepositorypermissions where
  toJSON = genericToJSON optionsGithubRepositorypermissions
instance ToSchema GithubRepositorypermissions where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsGithubRepositorypermissions

optionsGithubRepositorypermissions :: Options
optionsGithubRepositorypermissions =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("githubRepositorypermissionsAdmin", "admin")
      , ("githubRepositorypermissionsPush", "push")
      , ("githubRepositorypermissionsPull", "pull")
      , ("githubRepositorypermissionsUnderscoreclass", "_class")
      ]


-- | 
data GithubRespositoryContainer = GithubRespositoryContainer
  { githubRespositoryContainerUnderscoreclass :: Maybe Text -- ^ 
  , githubRespositoryContainerUnderscorelinks :: Maybe GithubRespositoryContainerlinks -- ^ 
  , githubRespositoryContainerRepositories :: Maybe GithubRepositories -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON GithubRespositoryContainer where
  parseJSON = genericParseJSON optionsGithubRespositoryContainer
instance ToJSON GithubRespositoryContainer where
  toJSON = genericToJSON optionsGithubRespositoryContainer
instance ToSchema GithubRespositoryContainer where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsGithubRespositoryContainer

optionsGithubRespositoryContainer :: Options
optionsGithubRespositoryContainer =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("githubRespositoryContainerUnderscoreclass", "_class")
      , ("githubRespositoryContainerUnderscorelinks", "_links")
      , ("githubRespositoryContainerRepositories", "repositories")
      ]


-- | 
data GithubRespositoryContainerlinks = GithubRespositoryContainerlinks
  { githubRespositoryContainerlinksSelf :: Maybe Link -- ^ 
  , githubRespositoryContainerlinksUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON GithubRespositoryContainerlinks where
  parseJSON = genericParseJSON optionsGithubRespositoryContainerlinks
instance ToJSON GithubRespositoryContainerlinks where
  toJSON = genericToJSON optionsGithubRespositoryContainerlinks
instance ToSchema GithubRespositoryContainerlinks where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsGithubRespositoryContainerlinks

optionsGithubRespositoryContainerlinks :: Options
optionsGithubRespositoryContainerlinks =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("githubRespositoryContainerlinksSelf", "self")
      , ("githubRespositoryContainerlinksUnderscoreclass", "_class")
      ]


-- | 
data GithubScm = GithubScm
  { githubScmUnderscoreclass :: Maybe Text -- ^ 
  , githubScmUnderscorelinks :: Maybe GithubScmlinks -- ^ 
  , githubScmCredentialId :: Maybe Text -- ^ 
  , githubScmId :: Maybe Text -- ^ 
  , githubScmUri :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON GithubScm where
  parseJSON = genericParseJSON optionsGithubScm
instance ToJSON GithubScm where
  toJSON = genericToJSON optionsGithubScm
instance ToSchema GithubScm where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsGithubScm

optionsGithubScm :: Options
optionsGithubScm =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("githubScmUnderscoreclass", "_class")
      , ("githubScmUnderscorelinks", "_links")
      , ("githubScmCredentialId", "credentialId")
      , ("githubScmId", "id")
      , ("githubScmUri", "uri")
      ]


-- | 
data GithubScmlinks = GithubScmlinks
  { githubScmlinksSelf :: Maybe Link -- ^ 
  , githubScmlinksUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON GithubScmlinks where
  parseJSON = genericParseJSON optionsGithubScmlinks
instance ToJSON GithubScmlinks where
  toJSON = genericToJSON optionsGithubScmlinks
instance ToSchema GithubScmlinks where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsGithubScmlinks

optionsGithubScmlinks :: Options
optionsGithubScmlinks =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("githubScmlinksSelf", "self")
      , ("githubScmlinksUnderscoreclass", "_class")
      ]


-- | 
data Hudson = Hudson
  { hudsonUnderscoreclass :: Maybe Text -- ^ 
  , hudsonAssignedLabels :: Maybe [HudsonassignedLabels] -- ^ 
  , hudsonMode :: Maybe Text -- ^ 
  , hudsonNodeDescription :: Maybe Text -- ^ 
  , hudsonNodeName :: Maybe Text -- ^ 
  , hudsonNumExecutors :: Maybe Int -- ^ 
  , hudsonDescription :: Maybe Text -- ^ 
  , hudsonJobs :: Maybe [FreeStyleProject] -- ^ 
  , hudsonPrimaryView :: Maybe AllView -- ^ 
  , hudsonQuietingDown :: Maybe Bool -- ^ 
  , hudsonSlaveAgentPort :: Maybe Int -- ^ 
  , hudsonUnlabeledLoad :: Maybe UnlabeledLoadStatistics -- ^ 
  , hudsonUseCrumbs :: Maybe Bool -- ^ 
  , hudsonUseSecurity :: Maybe Bool -- ^ 
  , hudsonViews :: Maybe [AllView] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON Hudson where
  parseJSON = genericParseJSON optionsHudson
instance ToJSON Hudson where
  toJSON = genericToJSON optionsHudson
instance ToSchema Hudson where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsHudson

optionsHudson :: Options
optionsHudson =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("hudsonUnderscoreclass", "_class")
      , ("hudsonAssignedLabels", "assignedLabels")
      , ("hudsonMode", "mode")
      , ("hudsonNodeDescription", "nodeDescription")
      , ("hudsonNodeName", "nodeName")
      , ("hudsonNumExecutors", "numExecutors")
      , ("hudsonDescription", "description")
      , ("hudsonJobs", "jobs")
      , ("hudsonPrimaryView", "primaryView")
      , ("hudsonQuietingDown", "quietingDown")
      , ("hudsonSlaveAgentPort", "slaveAgentPort")
      , ("hudsonUnlabeledLoad", "unlabeledLoad")
      , ("hudsonUseCrumbs", "useCrumbs")
      , ("hudsonUseSecurity", "useSecurity")
      , ("hudsonViews", "views")
      ]


-- | 
data HudsonMasterComputer = HudsonMasterComputer
  { hudsonMasterComputerUnderscoreclass :: Maybe Text -- ^ 
  , hudsonMasterComputerDisplayName :: Maybe Text -- ^ 
  , hudsonMasterComputerExecutors :: Maybe [HudsonMasterComputerexecutors] -- ^ 
  , hudsonMasterComputerIcon :: Maybe Text -- ^ 
  , hudsonMasterComputerIconClassName :: Maybe Text -- ^ 
  , hudsonMasterComputerIdle :: Maybe Bool -- ^ 
  , hudsonMasterComputerJnlpAgent :: Maybe Bool -- ^ 
  , hudsonMasterComputerLaunchSupported :: Maybe Bool -- ^ 
  , hudsonMasterComputerLoadStatistics :: Maybe Label1 -- ^ 
  , hudsonMasterComputerManualLaunchAllowed :: Maybe Bool -- ^ 
  , hudsonMasterComputerMonitorData :: Maybe HudsonMasterComputermonitorData -- ^ 
  , hudsonMasterComputerNumExecutors :: Maybe Int -- ^ 
  , hudsonMasterComputerOffline :: Maybe Bool -- ^ 
  , hudsonMasterComputerOfflineCause :: Maybe Text -- ^ 
  , hudsonMasterComputerOfflineCauseReason :: Maybe Text -- ^ 
  , hudsonMasterComputerTemporarilyOffline :: Maybe Bool -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON HudsonMasterComputer where
  parseJSON = genericParseJSON optionsHudsonMasterComputer
instance ToJSON HudsonMasterComputer where
  toJSON = genericToJSON optionsHudsonMasterComputer
instance ToSchema HudsonMasterComputer where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsHudsonMasterComputer

optionsHudsonMasterComputer :: Options
optionsHudsonMasterComputer =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("hudsonMasterComputerUnderscoreclass", "_class")
      , ("hudsonMasterComputerDisplayName", "displayName")
      , ("hudsonMasterComputerExecutors", "executors")
      , ("hudsonMasterComputerIcon", "icon")
      , ("hudsonMasterComputerIconClassName", "iconClassName")
      , ("hudsonMasterComputerIdle", "idle")
      , ("hudsonMasterComputerJnlpAgent", "jnlpAgent")
      , ("hudsonMasterComputerLaunchSupported", "launchSupported")
      , ("hudsonMasterComputerLoadStatistics", "loadStatistics")
      , ("hudsonMasterComputerManualLaunchAllowed", "manualLaunchAllowed")
      , ("hudsonMasterComputerMonitorData", "monitorData")
      , ("hudsonMasterComputerNumExecutors", "numExecutors")
      , ("hudsonMasterComputerOffline", "offline")
      , ("hudsonMasterComputerOfflineCause", "offlineCause")
      , ("hudsonMasterComputerOfflineCauseReason", "offlineCauseReason")
      , ("hudsonMasterComputerTemporarilyOffline", "temporarilyOffline")
      ]


-- | 
data HudsonMasterComputerexecutors = HudsonMasterComputerexecutors
  { hudsonMasterComputerexecutorsCurrentExecutable :: Maybe FreeStyleBuild -- ^ 
  , hudsonMasterComputerexecutorsIdle :: Maybe Bool -- ^ 
  , hudsonMasterComputerexecutorsLikelyStuck :: Maybe Bool -- ^ 
  , hudsonMasterComputerexecutorsNumber :: Maybe Int -- ^ 
  , hudsonMasterComputerexecutorsProgress :: Maybe Int -- ^ 
  , hudsonMasterComputerexecutorsUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON HudsonMasterComputerexecutors where
  parseJSON = genericParseJSON optionsHudsonMasterComputerexecutors
instance ToJSON HudsonMasterComputerexecutors where
  toJSON = genericToJSON optionsHudsonMasterComputerexecutors
instance ToSchema HudsonMasterComputerexecutors where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsHudsonMasterComputerexecutors

optionsHudsonMasterComputerexecutors :: Options
optionsHudsonMasterComputerexecutors =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("hudsonMasterComputerexecutorsCurrentExecutable", "currentExecutable")
      , ("hudsonMasterComputerexecutorsIdle", "idle")
      , ("hudsonMasterComputerexecutorsLikelyStuck", "likelyStuck")
      , ("hudsonMasterComputerexecutorsNumber", "number")
      , ("hudsonMasterComputerexecutorsProgress", "progress")
      , ("hudsonMasterComputerexecutorsUnderscoreclass", "_class")
      ]


-- | 
data HudsonMasterComputermonitorData = HudsonMasterComputermonitorData
  { hudsonMasterComputermonitorDataHudsonPeriodnodeUnderscoremonitorsPeriodSwapSpaceMonitor :: Maybe SwapSpaceMonitorMemoryUsage2 -- ^ 
  , hudsonMasterComputermonitorDataHudsonPeriodnodeUnderscoremonitorsPeriodTemporarySpaceMonitor :: Maybe DiskSpaceMonitorDescriptorDiskSpace -- ^ 
  , hudsonMasterComputermonitorDataHudsonPeriodnodeUnderscoremonitorsPeriodDiskSpaceMonitor :: Maybe DiskSpaceMonitorDescriptorDiskSpace -- ^ 
  , hudsonMasterComputermonitorDataHudsonPeriodnodeUnderscoremonitorsPeriodArchitectureMonitor :: Maybe Text -- ^ 
  , hudsonMasterComputermonitorDataHudsonPeriodnodeUnderscoremonitorsPeriodResponseTimeMonitor :: Maybe ResponseTimeMonitorData -- ^ 
  , hudsonMasterComputermonitorDataHudsonPeriodnodeUnderscoremonitorsPeriodClockMonitor :: Maybe ClockDifference -- ^ 
  , hudsonMasterComputermonitorDataUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON HudsonMasterComputermonitorData where
  parseJSON = genericParseJSON optionsHudsonMasterComputermonitorData
instance ToJSON HudsonMasterComputermonitorData where
  toJSON = genericToJSON optionsHudsonMasterComputermonitorData
instance ToSchema HudsonMasterComputermonitorData where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsHudsonMasterComputermonitorData

optionsHudsonMasterComputermonitorData :: Options
optionsHudsonMasterComputermonitorData =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("hudsonMasterComputermonitorDataHudsonPeriodnodeUnderscoremonitorsPeriodSwapSpaceMonitor", "hudson.node_monitors.SwapSpaceMonitor")
      , ("hudsonMasterComputermonitorDataHudsonPeriodnodeUnderscoremonitorsPeriodTemporarySpaceMonitor", "hudson.node_monitors.TemporarySpaceMonitor")
      , ("hudsonMasterComputermonitorDataHudsonPeriodnodeUnderscoremonitorsPeriodDiskSpaceMonitor", "hudson.node_monitors.DiskSpaceMonitor")
      , ("hudsonMasterComputermonitorDataHudsonPeriodnodeUnderscoremonitorsPeriodArchitectureMonitor", "hudson.node_monitors.ArchitectureMonitor")
      , ("hudsonMasterComputermonitorDataHudsonPeriodnodeUnderscoremonitorsPeriodResponseTimeMonitor", "hudson.node_monitors.ResponseTimeMonitor")
      , ("hudsonMasterComputermonitorDataHudsonPeriodnodeUnderscoremonitorsPeriodClockMonitor", "hudson.node_monitors.ClockMonitor")
      , ("hudsonMasterComputermonitorDataUnderscoreclass", "_class")
      ]


-- | 
data HudsonassignedLabels = HudsonassignedLabels
  { hudsonassignedLabelsUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON HudsonassignedLabels where
  parseJSON = genericParseJSON optionsHudsonassignedLabels
instance ToJSON HudsonassignedLabels where
  toJSON = genericToJSON optionsHudsonassignedLabels
instance ToSchema HudsonassignedLabels where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsHudsonassignedLabels

optionsHudsonassignedLabels :: Options
optionsHudsonassignedLabels =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("hudsonassignedLabelsUnderscoreclass", "_class")
      ]


-- | 
data InputStepImpl = InputStepImpl
  { inputStepImplUnderscoreclass :: Maybe Text -- ^ 
  , inputStepImplUnderscorelinks :: Maybe InputStepImpllinks -- ^ 
  , inputStepImplId :: Maybe Text -- ^ 
  , inputStepImplMessage :: Maybe Text -- ^ 
  , inputStepImplOk :: Maybe Text -- ^ 
  , inputStepImplParameters :: Maybe [StringParameterDefinition] -- ^ 
  , inputStepImplSubmitter :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON InputStepImpl where
  parseJSON = genericParseJSON optionsInputStepImpl
instance ToJSON InputStepImpl where
  toJSON = genericToJSON optionsInputStepImpl
instance ToSchema InputStepImpl where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsInputStepImpl

optionsInputStepImpl :: Options
optionsInputStepImpl =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("inputStepImplUnderscoreclass", "_class")
      , ("inputStepImplUnderscorelinks", "_links")
      , ("inputStepImplId", "id")
      , ("inputStepImplMessage", "message")
      , ("inputStepImplOk", "ok")
      , ("inputStepImplParameters", "parameters")
      , ("inputStepImplSubmitter", "submitter")
      ]


-- | 
data InputStepImpllinks = InputStepImpllinks
  { inputStepImpllinksSelf :: Maybe Link -- ^ 
  , inputStepImpllinksUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON InputStepImpllinks where
  parseJSON = genericParseJSON optionsInputStepImpllinks
instance ToJSON InputStepImpllinks where
  toJSON = genericToJSON optionsInputStepImpllinks
instance ToSchema InputStepImpllinks where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsInputStepImpllinks

optionsInputStepImpllinks :: Options
optionsInputStepImpllinks =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("inputStepImpllinksSelf", "self")
      , ("inputStepImpllinksUnderscoreclass", "_class")
      ]


-- | 
data Label1 = Label1
  { label1Underscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON Label1 where
  parseJSON = genericParseJSON optionsLabel1
instance ToJSON Label1 where
  toJSON = genericToJSON optionsLabel1
instance ToSchema Label1 where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsLabel1

optionsLabel1 :: Options
optionsLabel1 =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("label1Underscoreclass", "_class")
      ]


-- | 
data Link = Link
  { linkUnderscoreclass :: Maybe Text -- ^ 
  , linkHref :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON Link where
  parseJSON = genericParseJSON optionsLink
instance ToJSON Link where
  toJSON = genericToJSON optionsLink
instance ToSchema Link where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsLink

optionsLink :: Options
optionsLink =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("linkUnderscoreclass", "_class")
      , ("linkHref", "href")
      ]


-- | 
data ListView = ListView
  { listViewUnderscoreclass :: Maybe Text -- ^ 
  , listViewDescription :: Maybe Text -- ^ 
  , listViewJobs :: Maybe [FreeStyleProject] -- ^ 
  , listViewName :: Maybe Text -- ^ 
  , listViewUrl :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ListView where
  parseJSON = genericParseJSON optionsListView
instance ToJSON ListView where
  toJSON = genericToJSON optionsListView
instance ToSchema ListView where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsListView

optionsListView :: Options
optionsListView =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("listViewUnderscoreclass", "_class")
      , ("listViewDescription", "description")
      , ("listViewJobs", "jobs")
      , ("listViewName", "name")
      , ("listViewUrl", "url")
      ]


-- | 
data MultibranchPipeline = MultibranchPipeline
  { multibranchPipelineDisplayName :: Maybe Text -- ^ 
  , multibranchPipelineEstimatedDurationInMillis :: Maybe Int -- ^ 
  , multibranchPipelineLatestRun :: Maybe Text -- ^ 
  , multibranchPipelineName :: Maybe Text -- ^ 
  , multibranchPipelineOrganization :: Maybe Text -- ^ 
  , multibranchPipelineWeatherScore :: Maybe Int -- ^ 
  , multibranchPipelineBranchNames :: Maybe [Text] -- ^ 
  , multibranchPipelineNumberOfFailingBranches :: Maybe Int -- ^ 
  , multibranchPipelineNumberOfFailingPullRequests :: Maybe Int -- ^ 
  , multibranchPipelineNumberOfSuccessfulBranches :: Maybe Int -- ^ 
  , multibranchPipelineNumberOfSuccessfulPullRequests :: Maybe Int -- ^ 
  , multibranchPipelineTotalNumberOfBranches :: Maybe Int -- ^ 
  , multibranchPipelineTotalNumberOfPullRequests :: Maybe Int -- ^ 
  , multibranchPipelineUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON MultibranchPipeline where
  parseJSON = genericParseJSON optionsMultibranchPipeline
instance ToJSON MultibranchPipeline where
  toJSON = genericToJSON optionsMultibranchPipeline
instance ToSchema MultibranchPipeline where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsMultibranchPipeline

optionsMultibranchPipeline :: Options
optionsMultibranchPipeline =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("multibranchPipelineDisplayName", "displayName")
      , ("multibranchPipelineEstimatedDurationInMillis", "estimatedDurationInMillis")
      , ("multibranchPipelineLatestRun", "latestRun")
      , ("multibranchPipelineName", "name")
      , ("multibranchPipelineOrganization", "organization")
      , ("multibranchPipelineWeatherScore", "weatherScore")
      , ("multibranchPipelineBranchNames", "branchNames")
      , ("multibranchPipelineNumberOfFailingBranches", "numberOfFailingBranches")
      , ("multibranchPipelineNumberOfFailingPullRequests", "numberOfFailingPullRequests")
      , ("multibranchPipelineNumberOfSuccessfulBranches", "numberOfSuccessfulBranches")
      , ("multibranchPipelineNumberOfSuccessfulPullRequests", "numberOfSuccessfulPullRequests")
      , ("multibranchPipelineTotalNumberOfBranches", "totalNumberOfBranches")
      , ("multibranchPipelineTotalNumberOfPullRequests", "totalNumberOfPullRequests")
      , ("multibranchPipelineUnderscoreclass", "_class")
      ]


-- | 
data NullSCM = NullSCM
  { nullSCMUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON NullSCM where
  parseJSON = genericParseJSON optionsNullSCM
instance ToJSON NullSCM where
  toJSON = genericToJSON optionsNullSCM
instance ToSchema NullSCM where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsNullSCM

optionsNullSCM :: Options
optionsNullSCM =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("nullSCMUnderscoreclass", "_class")
      ]


-- | 
data Organisation = Organisation
  { organisationUnderscoreclass :: Maybe Text -- ^ 
  , organisationName :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON Organisation where
  parseJSON = genericParseJSON optionsOrganisation
instance ToJSON Organisation where
  toJSON = genericToJSON optionsOrganisation
instance ToSchema Organisation where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsOrganisation

optionsOrganisation :: Options
optionsOrganisation =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("organisationUnderscoreclass", "_class")
      , ("organisationName", "name")
      ]


-- | 
data Pipeline = Pipeline
  { pipelineUnderscoreclass :: Maybe Text -- ^ 
  , pipelineOrganization :: Maybe Text -- ^ 
  , pipelineName :: Maybe Text -- ^ 
  , pipelineDisplayName :: Maybe Text -- ^ 
  , pipelineFullName :: Maybe Text -- ^ 
  , pipelineWeatherScore :: Maybe Int -- ^ 
  , pipelineEstimatedDurationInMillis :: Maybe Int -- ^ 
  , pipelineLatestRun :: Maybe PipelinelatestRun -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON Pipeline where
  parseJSON = genericParseJSON optionsPipeline
instance ToJSON Pipeline where
  toJSON = genericToJSON optionsPipeline
instance ToSchema Pipeline where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsPipeline

optionsPipeline :: Options
optionsPipeline =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("pipelineUnderscoreclass", "_class")
      , ("pipelineOrganization", "organization")
      , ("pipelineName", "name")
      , ("pipelineDisplayName", "displayName")
      , ("pipelineFullName", "fullName")
      , ("pipelineWeatherScore", "weatherScore")
      , ("pipelineEstimatedDurationInMillis", "estimatedDurationInMillis")
      , ("pipelineLatestRun", "latestRun")
      ]


-- | 
data PipelineActivity = PipelineActivity
  { pipelineActivityUnderscoreclass :: Maybe Text -- ^ 
  , pipelineActivityArtifacts :: Maybe [PipelineActivityartifacts] -- ^ 
  , pipelineActivityDurationInMillis :: Maybe Int -- ^ 
  , pipelineActivityEstimatedDurationInMillis :: Maybe Int -- ^ 
  , pipelineActivityEnQueueTime :: Maybe Text -- ^ 
  , pipelineActivityEndTime :: Maybe Text -- ^ 
  , pipelineActivityId :: Maybe Text -- ^ 
  , pipelineActivityOrganization :: Maybe Text -- ^ 
  , pipelineActivityPipeline :: Maybe Text -- ^ 
  , pipelineActivityResult :: Maybe Text -- ^ 
  , pipelineActivityRunSummary :: Maybe Text -- ^ 
  , pipelineActivityStartTime :: Maybe Text -- ^ 
  , pipelineActivityState :: Maybe Text -- ^ 
  , pipelineActivityType :: Maybe Text -- ^ 
  , pipelineActivityCommitId :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PipelineActivity where
  parseJSON = genericParseJSON optionsPipelineActivity
instance ToJSON PipelineActivity where
  toJSON = genericToJSON optionsPipelineActivity
instance ToSchema PipelineActivity where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsPipelineActivity

optionsPipelineActivity :: Options
optionsPipelineActivity =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("pipelineActivityUnderscoreclass", "_class")
      , ("pipelineActivityArtifacts", "artifacts")
      , ("pipelineActivityDurationInMillis", "durationInMillis")
      , ("pipelineActivityEstimatedDurationInMillis", "estimatedDurationInMillis")
      , ("pipelineActivityEnQueueTime", "enQueueTime")
      , ("pipelineActivityEndTime", "endTime")
      , ("pipelineActivityId", "id")
      , ("pipelineActivityOrganization", "organization")
      , ("pipelineActivityPipeline", "pipeline")
      , ("pipelineActivityResult", "result")
      , ("pipelineActivityRunSummary", "runSummary")
      , ("pipelineActivityStartTime", "startTime")
      , ("pipelineActivityState", "state")
      , ("pipelineActivityType", "type")
      , ("pipelineActivityCommitId", "commitId")
      ]


-- | 
data PipelineActivityartifacts = PipelineActivityartifacts
  { pipelineActivityartifactsName :: Maybe Text -- ^ 
  , pipelineActivityartifactsSize :: Maybe Int -- ^ 
  , pipelineActivityartifactsUrl :: Maybe Text -- ^ 
  , pipelineActivityartifactsUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PipelineActivityartifacts where
  parseJSON = genericParseJSON optionsPipelineActivityartifacts
instance ToJSON PipelineActivityartifacts where
  toJSON = genericToJSON optionsPipelineActivityartifacts
instance ToSchema PipelineActivityartifacts where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsPipelineActivityartifacts

optionsPipelineActivityartifacts :: Options
optionsPipelineActivityartifacts =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("pipelineActivityartifactsName", "name")
      , ("pipelineActivityartifactsSize", "size")
      , ("pipelineActivityartifactsUrl", "url")
      , ("pipelineActivityartifactsUnderscoreclass", "_class")
      ]


-- | 
data PipelineBranchesitem = PipelineBranchesitem
  { pipelineBranchesitemDisplayName :: Maybe Text -- ^ 
  , pipelineBranchesitemEstimatedDurationInMillis :: Maybe Int -- ^ 
  , pipelineBranchesitemName :: Maybe Text -- ^ 
  , pipelineBranchesitemWeatherScore :: Maybe Int -- ^ 
  , pipelineBranchesitemLatestRun :: Maybe PipelineBranchesitemlatestRun -- ^ 
  , pipelineBranchesitemOrganization :: Maybe Text -- ^ 
  , pipelineBranchesitemPullRequest :: Maybe PipelineBranchesitempullRequest -- ^ 
  , pipelineBranchesitemTotalNumberOfPullRequests :: Maybe Int -- ^ 
  , pipelineBranchesitemUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PipelineBranchesitem where
  parseJSON = genericParseJSON optionsPipelineBranchesitem
instance ToJSON PipelineBranchesitem where
  toJSON = genericToJSON optionsPipelineBranchesitem
instance ToSchema PipelineBranchesitem where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsPipelineBranchesitem

optionsPipelineBranchesitem :: Options
optionsPipelineBranchesitem =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("pipelineBranchesitemDisplayName", "displayName")
      , ("pipelineBranchesitemEstimatedDurationInMillis", "estimatedDurationInMillis")
      , ("pipelineBranchesitemName", "name")
      , ("pipelineBranchesitemWeatherScore", "weatherScore")
      , ("pipelineBranchesitemLatestRun", "latestRun")
      , ("pipelineBranchesitemOrganization", "organization")
      , ("pipelineBranchesitemPullRequest", "pullRequest")
      , ("pipelineBranchesitemTotalNumberOfPullRequests", "totalNumberOfPullRequests")
      , ("pipelineBranchesitemUnderscoreclass", "_class")
      ]


-- | 
data PipelineBranchesitemlatestRun = PipelineBranchesitemlatestRun
  { pipelineBranchesitemlatestRunDurationInMillis :: Maybe Int -- ^ 
  , pipelineBranchesitemlatestRunEstimatedDurationInMillis :: Maybe Int -- ^ 
  , pipelineBranchesitemlatestRunEnQueueTime :: Maybe Text -- ^ 
  , pipelineBranchesitemlatestRunEndTime :: Maybe Text -- ^ 
  , pipelineBranchesitemlatestRunId :: Maybe Text -- ^ 
  , pipelineBranchesitemlatestRunOrganization :: Maybe Text -- ^ 
  , pipelineBranchesitemlatestRunPipeline :: Maybe Text -- ^ 
  , pipelineBranchesitemlatestRunResult :: Maybe Text -- ^ 
  , pipelineBranchesitemlatestRunRunSummary :: Maybe Text -- ^ 
  , pipelineBranchesitemlatestRunStartTime :: Maybe Text -- ^ 
  , pipelineBranchesitemlatestRunState :: Maybe Text -- ^ 
  , pipelineBranchesitemlatestRunType :: Maybe Text -- ^ 
  , pipelineBranchesitemlatestRunCommitId :: Maybe Text -- ^ 
  , pipelineBranchesitemlatestRunUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PipelineBranchesitemlatestRun where
  parseJSON = genericParseJSON optionsPipelineBranchesitemlatestRun
instance ToJSON PipelineBranchesitemlatestRun where
  toJSON = genericToJSON optionsPipelineBranchesitemlatestRun
instance ToSchema PipelineBranchesitemlatestRun where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsPipelineBranchesitemlatestRun

optionsPipelineBranchesitemlatestRun :: Options
optionsPipelineBranchesitemlatestRun =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("pipelineBranchesitemlatestRunDurationInMillis", "durationInMillis")
      , ("pipelineBranchesitemlatestRunEstimatedDurationInMillis", "estimatedDurationInMillis")
      , ("pipelineBranchesitemlatestRunEnQueueTime", "enQueueTime")
      , ("pipelineBranchesitemlatestRunEndTime", "endTime")
      , ("pipelineBranchesitemlatestRunId", "id")
      , ("pipelineBranchesitemlatestRunOrganization", "organization")
      , ("pipelineBranchesitemlatestRunPipeline", "pipeline")
      , ("pipelineBranchesitemlatestRunResult", "result")
      , ("pipelineBranchesitemlatestRunRunSummary", "runSummary")
      , ("pipelineBranchesitemlatestRunStartTime", "startTime")
      , ("pipelineBranchesitemlatestRunState", "state")
      , ("pipelineBranchesitemlatestRunType", "type")
      , ("pipelineBranchesitemlatestRunCommitId", "commitId")
      , ("pipelineBranchesitemlatestRunUnderscoreclass", "_class")
      ]


-- | 
data PipelineBranchesitempullRequest = PipelineBranchesitempullRequest
  { pipelineBranchesitempullRequestUnderscorelinks :: Maybe PipelineBranchesitempullRequestlinks -- ^ 
  , pipelineBranchesitempullRequestAuthor :: Maybe Text -- ^ 
  , pipelineBranchesitempullRequestId :: Maybe Text -- ^ 
  , pipelineBranchesitempullRequestTitle :: Maybe Text -- ^ 
  , pipelineBranchesitempullRequestUrl :: Maybe Text -- ^ 
  , pipelineBranchesitempullRequestUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PipelineBranchesitempullRequest where
  parseJSON = genericParseJSON optionsPipelineBranchesitempullRequest
instance ToJSON PipelineBranchesitempullRequest where
  toJSON = genericToJSON optionsPipelineBranchesitempullRequest
instance ToSchema PipelineBranchesitempullRequest where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsPipelineBranchesitempullRequest

optionsPipelineBranchesitempullRequest :: Options
optionsPipelineBranchesitempullRequest =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("pipelineBranchesitempullRequestUnderscorelinks", "_links")
      , ("pipelineBranchesitempullRequestAuthor", "author")
      , ("pipelineBranchesitempullRequestId", "id")
      , ("pipelineBranchesitempullRequestTitle", "title")
      , ("pipelineBranchesitempullRequestUrl", "url")
      , ("pipelineBranchesitempullRequestUnderscoreclass", "_class")
      ]


-- | 
data PipelineBranchesitempullRequestlinks = PipelineBranchesitempullRequestlinks
  { pipelineBranchesitempullRequestlinksSelf :: Maybe Text -- ^ 
  , pipelineBranchesitempullRequestlinksUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PipelineBranchesitempullRequestlinks where
  parseJSON = genericParseJSON optionsPipelineBranchesitempullRequestlinks
instance ToJSON PipelineBranchesitempullRequestlinks where
  toJSON = genericToJSON optionsPipelineBranchesitempullRequestlinks
instance ToSchema PipelineBranchesitempullRequestlinks where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsPipelineBranchesitempullRequestlinks

optionsPipelineBranchesitempullRequestlinks :: Options
optionsPipelineBranchesitempullRequestlinks =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("pipelineBranchesitempullRequestlinksSelf", "self")
      , ("pipelineBranchesitempullRequestlinksUnderscoreclass", "_class")
      ]


-- | 
data PipelineFolderImpl = PipelineFolderImpl
  { pipelineFolderImplUnderscoreclass :: Maybe Text -- ^ 
  , pipelineFolderImplDisplayName :: Maybe Text -- ^ 
  , pipelineFolderImplFullName :: Maybe Text -- ^ 
  , pipelineFolderImplName :: Maybe Text -- ^ 
  , pipelineFolderImplOrganization :: Maybe Text -- ^ 
  , pipelineFolderImplNumberOfFolders :: Maybe Int -- ^ 
  , pipelineFolderImplNumberOfPipelines :: Maybe Int -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PipelineFolderImpl where
  parseJSON = genericParseJSON optionsPipelineFolderImpl
instance ToJSON PipelineFolderImpl where
  toJSON = genericToJSON optionsPipelineFolderImpl
instance ToSchema PipelineFolderImpl where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsPipelineFolderImpl

optionsPipelineFolderImpl :: Options
optionsPipelineFolderImpl =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("pipelineFolderImplUnderscoreclass", "_class")
      , ("pipelineFolderImplDisplayName", "displayName")
      , ("pipelineFolderImplFullName", "fullName")
      , ("pipelineFolderImplName", "name")
      , ("pipelineFolderImplOrganization", "organization")
      , ("pipelineFolderImplNumberOfFolders", "numberOfFolders")
      , ("pipelineFolderImplNumberOfPipelines", "numberOfPipelines")
      ]


-- | 
data PipelineImpl = PipelineImpl
  { pipelineImplUnderscoreclass :: Maybe Text -- ^ 
  , pipelineImplDisplayName :: Maybe Text -- ^ 
  , pipelineImplEstimatedDurationInMillis :: Maybe Int -- ^ 
  , pipelineImplFullName :: Maybe Text -- ^ 
  , pipelineImplLatestRun :: Maybe Text -- ^ 
  , pipelineImplName :: Maybe Text -- ^ 
  , pipelineImplOrganization :: Maybe Text -- ^ 
  , pipelineImplWeatherScore :: Maybe Int -- ^ 
  , pipelineImplUnderscorelinks :: Maybe PipelineImpllinks -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PipelineImpl where
  parseJSON = genericParseJSON optionsPipelineImpl
instance ToJSON PipelineImpl where
  toJSON = genericToJSON optionsPipelineImpl
instance ToSchema PipelineImpl where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsPipelineImpl

optionsPipelineImpl :: Options
optionsPipelineImpl =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("pipelineImplUnderscoreclass", "_class")
      , ("pipelineImplDisplayName", "displayName")
      , ("pipelineImplEstimatedDurationInMillis", "estimatedDurationInMillis")
      , ("pipelineImplFullName", "fullName")
      , ("pipelineImplLatestRun", "latestRun")
      , ("pipelineImplName", "name")
      , ("pipelineImplOrganization", "organization")
      , ("pipelineImplWeatherScore", "weatherScore")
      , ("pipelineImplUnderscorelinks", "_links")
      ]


-- | 
data PipelineImpllinks = PipelineImpllinks
  { pipelineImpllinksRuns :: Maybe Link -- ^ 
  , pipelineImpllinksSelf :: Maybe Link -- ^ 
  , pipelineImpllinksQueue :: Maybe Link -- ^ 
  , pipelineImpllinksActions :: Maybe Link -- ^ 
  , pipelineImpllinksUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PipelineImpllinks where
  parseJSON = genericParseJSON optionsPipelineImpllinks
instance ToJSON PipelineImpllinks where
  toJSON = genericToJSON optionsPipelineImpllinks
instance ToSchema PipelineImpllinks where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsPipelineImpllinks

optionsPipelineImpllinks :: Options
optionsPipelineImpllinks =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("pipelineImpllinksRuns", "runs")
      , ("pipelineImpllinksSelf", "self")
      , ("pipelineImpllinksQueue", "queue")
      , ("pipelineImpllinksActions", "actions")
      , ("pipelineImpllinksUnderscoreclass", "_class")
      ]


-- | 
data PipelineRun = PipelineRun
  { pipelineRunUnderscoreclass :: Maybe Text -- ^ 
  , pipelineRunArtifacts :: Maybe [PipelineRunartifacts] -- ^ 
  , pipelineRunDurationInMillis :: Maybe Int -- ^ 
  , pipelineRunEstimatedDurationInMillis :: Maybe Int -- ^ 
  , pipelineRunEnQueueTime :: Maybe Text -- ^ 
  , pipelineRunEndTime :: Maybe Text -- ^ 
  , pipelineRunId :: Maybe Text -- ^ 
  , pipelineRunOrganization :: Maybe Text -- ^ 
  , pipelineRunPipeline :: Maybe Text -- ^ 
  , pipelineRunResult :: Maybe Text -- ^ 
  , pipelineRunRunSummary :: Maybe Text -- ^ 
  , pipelineRunStartTime :: Maybe Text -- ^ 
  , pipelineRunState :: Maybe Text -- ^ 
  , pipelineRunType :: Maybe Text -- ^ 
  , pipelineRunCommitId :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PipelineRun where
  parseJSON = genericParseJSON optionsPipelineRun
instance ToJSON PipelineRun where
  toJSON = genericToJSON optionsPipelineRun
instance ToSchema PipelineRun where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsPipelineRun

optionsPipelineRun :: Options
optionsPipelineRun =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("pipelineRunUnderscoreclass", "_class")
      , ("pipelineRunArtifacts", "artifacts")
      , ("pipelineRunDurationInMillis", "durationInMillis")
      , ("pipelineRunEstimatedDurationInMillis", "estimatedDurationInMillis")
      , ("pipelineRunEnQueueTime", "enQueueTime")
      , ("pipelineRunEndTime", "endTime")
      , ("pipelineRunId", "id")
      , ("pipelineRunOrganization", "organization")
      , ("pipelineRunPipeline", "pipeline")
      , ("pipelineRunResult", "result")
      , ("pipelineRunRunSummary", "runSummary")
      , ("pipelineRunStartTime", "startTime")
      , ("pipelineRunState", "state")
      , ("pipelineRunType", "type")
      , ("pipelineRunCommitId", "commitId")
      ]


-- | 
data PipelineRunImpl = PipelineRunImpl
  { pipelineRunImplUnderscoreclass :: Maybe Text -- ^ 
  , pipelineRunImplUnderscorelinks :: Maybe PipelineRunImpllinks -- ^ 
  , pipelineRunImplDurationInMillis :: Maybe Int -- ^ 
  , pipelineRunImplEnQueueTime :: Maybe Text -- ^ 
  , pipelineRunImplEndTime :: Maybe Text -- ^ 
  , pipelineRunImplEstimatedDurationInMillis :: Maybe Int -- ^ 
  , pipelineRunImplId :: Maybe Text -- ^ 
  , pipelineRunImplOrganization :: Maybe Text -- ^ 
  , pipelineRunImplPipeline :: Maybe Text -- ^ 
  , pipelineRunImplResult :: Maybe Text -- ^ 
  , pipelineRunImplRunSummary :: Maybe Text -- ^ 
  , pipelineRunImplStartTime :: Maybe Text -- ^ 
  , pipelineRunImplState :: Maybe Text -- ^ 
  , pipelineRunImplType :: Maybe Text -- ^ 
  , pipelineRunImplCommitId :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PipelineRunImpl where
  parseJSON = genericParseJSON optionsPipelineRunImpl
instance ToJSON PipelineRunImpl where
  toJSON = genericToJSON optionsPipelineRunImpl
instance ToSchema PipelineRunImpl where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsPipelineRunImpl

optionsPipelineRunImpl :: Options
optionsPipelineRunImpl =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("pipelineRunImplUnderscoreclass", "_class")
      , ("pipelineRunImplUnderscorelinks", "_links")
      , ("pipelineRunImplDurationInMillis", "durationInMillis")
      , ("pipelineRunImplEnQueueTime", "enQueueTime")
      , ("pipelineRunImplEndTime", "endTime")
      , ("pipelineRunImplEstimatedDurationInMillis", "estimatedDurationInMillis")
      , ("pipelineRunImplId", "id")
      , ("pipelineRunImplOrganization", "organization")
      , ("pipelineRunImplPipeline", "pipeline")
      , ("pipelineRunImplResult", "result")
      , ("pipelineRunImplRunSummary", "runSummary")
      , ("pipelineRunImplStartTime", "startTime")
      , ("pipelineRunImplState", "state")
      , ("pipelineRunImplType", "type")
      , ("pipelineRunImplCommitId", "commitId")
      ]


-- | 
data PipelineRunImpllinks = PipelineRunImpllinks
  { pipelineRunImpllinksNodes :: Maybe Link -- ^ 
  , pipelineRunImpllinksLog :: Maybe Link -- ^ 
  , pipelineRunImpllinksSelf :: Maybe Link -- ^ 
  , pipelineRunImpllinksActions :: Maybe Link -- ^ 
  , pipelineRunImpllinksSteps :: Maybe Link -- ^ 
  , pipelineRunImpllinksUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PipelineRunImpllinks where
  parseJSON = genericParseJSON optionsPipelineRunImpllinks
instance ToJSON PipelineRunImpllinks where
  toJSON = genericToJSON optionsPipelineRunImpllinks
instance ToSchema PipelineRunImpllinks where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsPipelineRunImpllinks

optionsPipelineRunImpllinks :: Options
optionsPipelineRunImpllinks =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("pipelineRunImpllinksNodes", "nodes")
      , ("pipelineRunImpllinksLog", "log")
      , ("pipelineRunImpllinksSelf", "self")
      , ("pipelineRunImpllinksActions", "actions")
      , ("pipelineRunImpllinksSteps", "steps")
      , ("pipelineRunImpllinksUnderscoreclass", "_class")
      ]


-- | 
data PipelineRunNode = PipelineRunNode
  { pipelineRunNodeUnderscoreclass :: Maybe Text -- ^ 
  , pipelineRunNodeDisplayName :: Maybe Text -- ^ 
  , pipelineRunNodeDurationInMillis :: Maybe Int -- ^ 
  , pipelineRunNodeEdges :: Maybe [PipelineRunNodeedges] -- ^ 
  , pipelineRunNodeId :: Maybe Text -- ^ 
  , pipelineRunNodeResult :: Maybe Text -- ^ 
  , pipelineRunNodeStartTime :: Maybe Text -- ^ 
  , pipelineRunNodeState :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PipelineRunNode where
  parseJSON = genericParseJSON optionsPipelineRunNode
instance ToJSON PipelineRunNode where
  toJSON = genericToJSON optionsPipelineRunNode
instance ToSchema PipelineRunNode where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsPipelineRunNode

optionsPipelineRunNode :: Options
optionsPipelineRunNode =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("pipelineRunNodeUnderscoreclass", "_class")
      , ("pipelineRunNodeDisplayName", "displayName")
      , ("pipelineRunNodeDurationInMillis", "durationInMillis")
      , ("pipelineRunNodeEdges", "edges")
      , ("pipelineRunNodeId", "id")
      , ("pipelineRunNodeResult", "result")
      , ("pipelineRunNodeStartTime", "startTime")
      , ("pipelineRunNodeState", "state")
      ]


-- | 
data PipelineRunNodeedges = PipelineRunNodeedges
  { pipelineRunNodeedgesId :: Maybe Text -- ^ 
  , pipelineRunNodeedgesUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PipelineRunNodeedges where
  parseJSON = genericParseJSON optionsPipelineRunNodeedges
instance ToJSON PipelineRunNodeedges where
  toJSON = genericToJSON optionsPipelineRunNodeedges
instance ToSchema PipelineRunNodeedges where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsPipelineRunNodeedges

optionsPipelineRunNodeedges :: Options
optionsPipelineRunNodeedges =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("pipelineRunNodeedgesId", "id")
      , ("pipelineRunNodeedgesUnderscoreclass", "_class")
      ]


-- | 
data PipelineRunartifacts = PipelineRunartifacts
  { pipelineRunartifactsName :: Maybe Text -- ^ 
  , pipelineRunartifactsSize :: Maybe Int -- ^ 
  , pipelineRunartifactsUrl :: Maybe Text -- ^ 
  , pipelineRunartifactsUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PipelineRunartifacts where
  parseJSON = genericParseJSON optionsPipelineRunartifacts
instance ToJSON PipelineRunartifacts where
  toJSON = genericToJSON optionsPipelineRunartifacts
instance ToSchema PipelineRunartifacts where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsPipelineRunartifacts

optionsPipelineRunartifacts :: Options
optionsPipelineRunartifacts =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("pipelineRunartifactsName", "name")
      , ("pipelineRunartifactsSize", "size")
      , ("pipelineRunartifactsUrl", "url")
      , ("pipelineRunartifactsUnderscoreclass", "_class")
      ]


-- | 
data PipelineStepImpl = PipelineStepImpl
  { pipelineStepImplUnderscoreclass :: Maybe Text -- ^ 
  , pipelineStepImplUnderscorelinks :: Maybe PipelineStepImpllinks -- ^ 
  , pipelineStepImplDisplayName :: Maybe Text -- ^ 
  , pipelineStepImplDurationInMillis :: Maybe Int -- ^ 
  , pipelineStepImplId :: Maybe Text -- ^ 
  , pipelineStepImplInput :: Maybe InputStepImpl -- ^ 
  , pipelineStepImplResult :: Maybe Text -- ^ 
  , pipelineStepImplStartTime :: Maybe Text -- ^ 
  , pipelineStepImplState :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PipelineStepImpl where
  parseJSON = genericParseJSON optionsPipelineStepImpl
instance ToJSON PipelineStepImpl where
  toJSON = genericToJSON optionsPipelineStepImpl
instance ToSchema PipelineStepImpl where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsPipelineStepImpl

optionsPipelineStepImpl :: Options
optionsPipelineStepImpl =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("pipelineStepImplUnderscoreclass", "_class")
      , ("pipelineStepImplUnderscorelinks", "_links")
      , ("pipelineStepImplDisplayName", "displayName")
      , ("pipelineStepImplDurationInMillis", "durationInMillis")
      , ("pipelineStepImplId", "id")
      , ("pipelineStepImplInput", "input")
      , ("pipelineStepImplResult", "result")
      , ("pipelineStepImplStartTime", "startTime")
      , ("pipelineStepImplState", "state")
      ]


-- | 
data PipelineStepImpllinks = PipelineStepImpllinks
  { pipelineStepImpllinksSelf :: Maybe Link -- ^ 
  , pipelineStepImpllinksActions :: Maybe Link -- ^ 
  , pipelineStepImpllinksUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PipelineStepImpllinks where
  parseJSON = genericParseJSON optionsPipelineStepImpllinks
instance ToJSON PipelineStepImpllinks where
  toJSON = genericToJSON optionsPipelineStepImpllinks
instance ToSchema PipelineStepImpllinks where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsPipelineStepImpllinks

optionsPipelineStepImpllinks :: Options
optionsPipelineStepImpllinks =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("pipelineStepImpllinksSelf", "self")
      , ("pipelineStepImpllinksActions", "actions")
      , ("pipelineStepImpllinksUnderscoreclass", "_class")
      ]


-- | 
data PipelinelatestRun = PipelinelatestRun
  { pipelinelatestRunArtifacts :: Maybe [PipelinelatestRunartifacts] -- ^ 
  , pipelinelatestRunDurationInMillis :: Maybe Int -- ^ 
  , pipelinelatestRunEstimatedDurationInMillis :: Maybe Int -- ^ 
  , pipelinelatestRunEnQueueTime :: Maybe Text -- ^ 
  , pipelinelatestRunEndTime :: Maybe Text -- ^ 
  , pipelinelatestRunId :: Maybe Text -- ^ 
  , pipelinelatestRunOrganization :: Maybe Text -- ^ 
  , pipelinelatestRunPipeline :: Maybe Text -- ^ 
  , pipelinelatestRunResult :: Maybe Text -- ^ 
  , pipelinelatestRunRunSummary :: Maybe Text -- ^ 
  , pipelinelatestRunStartTime :: Maybe Text -- ^ 
  , pipelinelatestRunState :: Maybe Text -- ^ 
  , pipelinelatestRunType :: Maybe Text -- ^ 
  , pipelinelatestRunCommitId :: Maybe Text -- ^ 
  , pipelinelatestRunUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PipelinelatestRun where
  parseJSON = genericParseJSON optionsPipelinelatestRun
instance ToJSON PipelinelatestRun where
  toJSON = genericToJSON optionsPipelinelatestRun
instance ToSchema PipelinelatestRun where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsPipelinelatestRun

optionsPipelinelatestRun :: Options
optionsPipelinelatestRun =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("pipelinelatestRunArtifacts", "artifacts")
      , ("pipelinelatestRunDurationInMillis", "durationInMillis")
      , ("pipelinelatestRunEstimatedDurationInMillis", "estimatedDurationInMillis")
      , ("pipelinelatestRunEnQueueTime", "enQueueTime")
      , ("pipelinelatestRunEndTime", "endTime")
      , ("pipelinelatestRunId", "id")
      , ("pipelinelatestRunOrganization", "organization")
      , ("pipelinelatestRunPipeline", "pipeline")
      , ("pipelinelatestRunResult", "result")
      , ("pipelinelatestRunRunSummary", "runSummary")
      , ("pipelinelatestRunStartTime", "startTime")
      , ("pipelinelatestRunState", "state")
      , ("pipelinelatestRunType", "type")
      , ("pipelinelatestRunCommitId", "commitId")
      , ("pipelinelatestRunUnderscoreclass", "_class")
      ]


-- | 
data PipelinelatestRunartifacts = PipelinelatestRunartifacts
  { pipelinelatestRunartifactsName :: Maybe Text -- ^ 
  , pipelinelatestRunartifactsSize :: Maybe Int -- ^ 
  , pipelinelatestRunartifactsUrl :: Maybe Text -- ^ 
  , pipelinelatestRunartifactsUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON PipelinelatestRunartifacts where
  parseJSON = genericParseJSON optionsPipelinelatestRunartifacts
instance ToJSON PipelinelatestRunartifacts where
  toJSON = genericToJSON optionsPipelinelatestRunartifacts
instance ToSchema PipelinelatestRunartifacts where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsPipelinelatestRunartifacts

optionsPipelinelatestRunartifacts :: Options
optionsPipelinelatestRunartifacts =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("pipelinelatestRunartifactsName", "name")
      , ("pipelinelatestRunartifactsSize", "size")
      , ("pipelinelatestRunartifactsUrl", "url")
      , ("pipelinelatestRunartifactsUnderscoreclass", "_class")
      ]


-- | 
data Queue = Queue
  { queueUnderscoreclass :: Maybe Text -- ^ 
  , queueItems :: Maybe [QueueBlockedItem] -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON Queue where
  parseJSON = genericParseJSON optionsQueue
instance ToJSON Queue where
  toJSON = genericToJSON optionsQueue
instance ToSchema Queue where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsQueue

optionsQueue :: Options
optionsQueue =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("queueUnderscoreclass", "_class")
      , ("queueItems", "items")
      ]


-- | 
data QueueBlockedItem = QueueBlockedItem
  { queueBlockedItemUnderscoreclass :: Maybe Text -- ^ 
  , queueBlockedItemActions :: Maybe [CauseAction] -- ^ 
  , queueBlockedItemBlocked :: Maybe Bool -- ^ 
  , queueBlockedItemBuildable :: Maybe Bool -- ^ 
  , queueBlockedItemId :: Maybe Int -- ^ 
  , queueBlockedItemInQueueSince :: Maybe Int -- ^ 
  , queueBlockedItemParams :: Maybe Text -- ^ 
  , queueBlockedItemStuck :: Maybe Bool -- ^ 
  , queueBlockedItemTask :: Maybe FreeStyleProject -- ^ 
  , queueBlockedItemUrl :: Maybe Text -- ^ 
  , queueBlockedItemWhy :: Maybe Text -- ^ 
  , queueBlockedItemBuildableStartMilliseconds :: Maybe Int -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON QueueBlockedItem where
  parseJSON = genericParseJSON optionsQueueBlockedItem
instance ToJSON QueueBlockedItem where
  toJSON = genericToJSON optionsQueueBlockedItem
instance ToSchema QueueBlockedItem where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsQueueBlockedItem

optionsQueueBlockedItem :: Options
optionsQueueBlockedItem =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("queueBlockedItemUnderscoreclass", "_class")
      , ("queueBlockedItemActions", "actions")
      , ("queueBlockedItemBlocked", "blocked")
      , ("queueBlockedItemBuildable", "buildable")
      , ("queueBlockedItemId", "id")
      , ("queueBlockedItemInQueueSince", "inQueueSince")
      , ("queueBlockedItemParams", "params")
      , ("queueBlockedItemStuck", "stuck")
      , ("queueBlockedItemTask", "task")
      , ("queueBlockedItemUrl", "url")
      , ("queueBlockedItemWhy", "why")
      , ("queueBlockedItemBuildableStartMilliseconds", "buildableStartMilliseconds")
      ]


-- | 
data QueueItemImpl = QueueItemImpl
  { queueItemImplUnderscoreclass :: Maybe Text -- ^ 
  , queueItemImplExpectedBuildNumber :: Maybe Int -- ^ 
  , queueItemImplId :: Maybe Text -- ^ 
  , queueItemImplPipeline :: Maybe Text -- ^ 
  , queueItemImplQueuedTime :: Maybe Int -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON QueueItemImpl where
  parseJSON = genericParseJSON optionsQueueItemImpl
instance ToJSON QueueItemImpl where
  toJSON = genericToJSON optionsQueueItemImpl
instance ToSchema QueueItemImpl where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsQueueItemImpl

optionsQueueItemImpl :: Options
optionsQueueItemImpl =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("queueItemImplUnderscoreclass", "_class")
      , ("queueItemImplExpectedBuildNumber", "expectedBuildNumber")
      , ("queueItemImplId", "id")
      , ("queueItemImplPipeline", "pipeline")
      , ("queueItemImplQueuedTime", "queuedTime")
      ]


-- | 
data QueueLeftItem = QueueLeftItem
  { queueLeftItemUnderscoreclass :: Maybe Text -- ^ 
  , queueLeftItemActions :: Maybe [CauseAction] -- ^ 
  , queueLeftItemBlocked :: Maybe Bool -- ^ 
  , queueLeftItemBuildable :: Maybe Bool -- ^ 
  , queueLeftItemId :: Maybe Int -- ^ 
  , queueLeftItemInQueueSince :: Maybe Int -- ^ 
  , queueLeftItemParams :: Maybe Text -- ^ 
  , queueLeftItemStuck :: Maybe Bool -- ^ 
  , queueLeftItemTask :: Maybe FreeStyleProject -- ^ 
  , queueLeftItemUrl :: Maybe Text -- ^ 
  , queueLeftItemWhy :: Maybe Text -- ^ 
  , queueLeftItemCancelled :: Maybe Bool -- ^ 
  , queueLeftItemExecutable :: Maybe FreeStyleBuild -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON QueueLeftItem where
  parseJSON = genericParseJSON optionsQueueLeftItem
instance ToJSON QueueLeftItem where
  toJSON = genericToJSON optionsQueueLeftItem
instance ToSchema QueueLeftItem where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsQueueLeftItem

optionsQueueLeftItem :: Options
optionsQueueLeftItem =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("queueLeftItemUnderscoreclass", "_class")
      , ("queueLeftItemActions", "actions")
      , ("queueLeftItemBlocked", "blocked")
      , ("queueLeftItemBuildable", "buildable")
      , ("queueLeftItemId", "id")
      , ("queueLeftItemInQueueSince", "inQueueSince")
      , ("queueLeftItemParams", "params")
      , ("queueLeftItemStuck", "stuck")
      , ("queueLeftItemTask", "task")
      , ("queueLeftItemUrl", "url")
      , ("queueLeftItemWhy", "why")
      , ("queueLeftItemCancelled", "cancelled")
      , ("queueLeftItemExecutable", "executable")
      ]


-- | 
data ResponseTimeMonitorData = ResponseTimeMonitorData
  { responseTimeMonitorDataUnderscoreclass :: Maybe Text -- ^ 
  , responseTimeMonitorDataTimestamp :: Maybe Int -- ^ 
  , responseTimeMonitorDataAverage :: Maybe Int -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON ResponseTimeMonitorData where
  parseJSON = genericParseJSON optionsResponseTimeMonitorData
instance ToJSON ResponseTimeMonitorData where
  toJSON = genericToJSON optionsResponseTimeMonitorData
instance ToSchema ResponseTimeMonitorData where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsResponseTimeMonitorData

optionsResponseTimeMonitorData :: Options
optionsResponseTimeMonitorData =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("responseTimeMonitorDataUnderscoreclass", "_class")
      , ("responseTimeMonitorDataTimestamp", "timestamp")
      , ("responseTimeMonitorDataAverage", "average")
      ]


-- | 
data StringParameterDefinition = StringParameterDefinition
  { stringParameterDefinitionUnderscoreclass :: Maybe Text -- ^ 
  , stringParameterDefinitionDefaultParameterValue :: Maybe StringParameterValue -- ^ 
  , stringParameterDefinitionDescription :: Maybe Text -- ^ 
  , stringParameterDefinitionName :: Maybe Text -- ^ 
  , stringParameterDefinitionType :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON StringParameterDefinition where
  parseJSON = genericParseJSON optionsStringParameterDefinition
instance ToJSON StringParameterDefinition where
  toJSON = genericToJSON optionsStringParameterDefinition
instance ToSchema StringParameterDefinition where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsStringParameterDefinition

optionsStringParameterDefinition :: Options
optionsStringParameterDefinition =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("stringParameterDefinitionUnderscoreclass", "_class")
      , ("stringParameterDefinitionDefaultParameterValue", "defaultParameterValue")
      , ("stringParameterDefinitionDescription", "description")
      , ("stringParameterDefinitionName", "name")
      , ("stringParameterDefinitionType", "type")
      ]


-- | 
data StringParameterValue = StringParameterValue
  { stringParameterValueUnderscoreclass :: Maybe Text -- ^ 
  , stringParameterValueName :: Maybe Text -- ^ 
  , stringParameterValueValue :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON StringParameterValue where
  parseJSON = genericParseJSON optionsStringParameterValue
instance ToJSON StringParameterValue where
  toJSON = genericToJSON optionsStringParameterValue
instance ToSchema StringParameterValue where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsStringParameterValue

optionsStringParameterValue :: Options
optionsStringParameterValue =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("stringParameterValueUnderscoreclass", "_class")
      , ("stringParameterValueName", "name")
      , ("stringParameterValueValue", "value")
      ]


-- | 
data SwapSpaceMonitorMemoryUsage2 = SwapSpaceMonitorMemoryUsage2
  { swapSpaceMonitorMemoryUsage2Underscoreclass :: Maybe Text -- ^ 
  , swapSpaceMonitorMemoryUsage2AvailablePhysicalMemory :: Maybe Int -- ^ 
  , swapSpaceMonitorMemoryUsage2AvailableSwapSpace :: Maybe Int -- ^ 
  , swapSpaceMonitorMemoryUsage2TotalPhysicalMemory :: Maybe Int -- ^ 
  , swapSpaceMonitorMemoryUsage2TotalSwapSpace :: Maybe Int -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON SwapSpaceMonitorMemoryUsage2 where
  parseJSON = genericParseJSON optionsSwapSpaceMonitorMemoryUsage2
instance ToJSON SwapSpaceMonitorMemoryUsage2 where
  toJSON = genericToJSON optionsSwapSpaceMonitorMemoryUsage2
instance ToSchema SwapSpaceMonitorMemoryUsage2 where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsSwapSpaceMonitorMemoryUsage2

optionsSwapSpaceMonitorMemoryUsage2 :: Options
optionsSwapSpaceMonitorMemoryUsage2 =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("swapSpaceMonitorMemoryUsage2Underscoreclass", "_class")
      , ("swapSpaceMonitorMemoryUsage2AvailablePhysicalMemory", "availablePhysicalMemory")
      , ("swapSpaceMonitorMemoryUsage2AvailableSwapSpace", "availableSwapSpace")
      , ("swapSpaceMonitorMemoryUsage2TotalPhysicalMemory", "totalPhysicalMemory")
      , ("swapSpaceMonitorMemoryUsage2TotalSwapSpace", "totalSwapSpace")
      ]


-- | 
data UnlabeledLoadStatistics = UnlabeledLoadStatistics
  { unlabeledLoadStatisticsUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON UnlabeledLoadStatistics where
  parseJSON = genericParseJSON optionsUnlabeledLoadStatistics
instance ToJSON UnlabeledLoadStatistics where
  toJSON = genericToJSON optionsUnlabeledLoadStatistics
instance ToSchema UnlabeledLoadStatistics where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsUnlabeledLoadStatistics

optionsUnlabeledLoadStatistics :: Options
optionsUnlabeledLoadStatistics =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("unlabeledLoadStatisticsUnderscoreclass", "_class")
      ]


-- | 
data User = User
  { userUnderscoreclass :: Maybe Text -- ^ 
  , userId :: Maybe Text -- ^ 
  , userFullName :: Maybe Text -- ^ 
  , userEmail :: Maybe Text -- ^ 
  , userName :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic, Data)

instance FromJSON User where
  parseJSON = genericParseJSON optionsUser
instance ToJSON User where
  toJSON = genericToJSON optionsUser
instance ToSchema User where
  declareNamedSchema = Swagger.genericDeclareNamedSchema
    $ Swagger.fromAesonOptions
    $ optionsUser

optionsUser :: Options
optionsUser =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = \s -> fromMaybe ("did not find JSON field name for " ++ show s) $ lookup s table
    }
  where
    table =
      [ ("userUnderscoreclass", "_class")
      , ("userId", "id")
      , ("userFullName", "fullName")
      , ("userEmail", "email")
      , ("userName", "name")
      ]

