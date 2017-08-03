{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module SwaggyJenkins.Types (
  AllView (..),
  Body (..),
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
  Organisations (..),
  Pipeline (..),
  PipelineActivities (..),
  PipelineActivity (..),
  PipelineActivityartifacts (..),
  PipelineBranches (..),
  PipelineBranchesitem (..),
  PipelineBranchesitemlatestRun (..),
  PipelineBranchesitempullRequest (..),
  PipelineBranchesitempullRequestlinks (..),
  PipelineFolderImpl (..),
  PipelineImpl (..),
  PipelineImpllinks (..),
  PipelineQueue (..),
  PipelineRun (..),
  PipelineRunImpl (..),
  PipelineRunImpllinks (..),
  PipelineRunNode (..),
  PipelineRunNodeSteps (..),
  PipelineRunNodeedges (..),
  PipelineRunNodes (..),
  PipelineRunSteps (..),
  PipelineRunartifacts (..),
  PipelineRuns (..),
  PipelineStepImpl (..),
  PipelineStepImpllinks (..),
  PipelinelatestRun (..),
  PipelinelatestRunartifacts (..),
  Pipelines (..),
  Queue (..),
  QueueBlockedItem (..),
  QueueItemImpl (..),
  QueueLeftItem (..),
  ResponseTimeMonitorData (..),
  ScmOrganisations (..),
  StringParameterDefinition (..),
  StringParameterValue (..),
  SwapSpaceMonitorMemoryUsage2 (..),
  UnlabeledLoadStatistics (..),
  User (..),
  UserFavorites (..),
  Users (..),
  ) where

import Data.List (stripPrefix)
import Data.Maybe (fromMaybe)
import Data.Aeson (Value, FromJSON(..), ToJSON(..), genericToJSON, genericParseJSON)
import Data.Aeson.Types (Options(..), defaultOptions)
import Data.Text (Text)
import qualified Data.Text as T
import qualified Data.Map as Map
import GHC.Generics (Generic)
import Data.Function ((&))


-- | 
data AllView = AllView
  { allViewClass :: Text -- ^ 
  , allViewName :: Text -- ^ 
  , allViewUrl :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON AllView where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "allView")
instance ToJSON AllView where
  toJSON = genericToJSON (removeFieldLabelPrefix False "allView")

-- | 
data Body = Body
  { bodyFavorite :: Bool -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Body where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "body")
instance ToJSON Body where
  toJSON = genericToJSON (removeFieldLabelPrefix False "body")

-- | 
data BranchImpl = BranchImpl
  { branchImplClass :: Text -- ^ 
  , branchImplDisplayName :: Text -- ^ 
  , branchImplEstimatedDurationInMillis :: Int -- ^ 
  , branchImplFullDisplayName :: Text -- ^ 
  , branchImplFullName :: Text -- ^ 
  , branchImplName :: Text -- ^ 
  , branchImplOrganization :: Text -- ^ 
  , branchImplParameters :: [StringParameterDefinition] -- ^ 
  , branchImplPermissions :: BranchImplpermissions -- ^ 
  , branchImplWeatherScore :: Int -- ^ 
  , branchImplPullRequest :: Text -- ^ 
  , branchImpl'Underscorelinks :: BranchImpllinks -- ^ 
  , branchImplLatestRun :: PipelineRunImpl -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON BranchImpl where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "branchImpl")
instance ToJSON BranchImpl where
  toJSON = genericToJSON (removeFieldLabelPrefix False "branchImpl")

-- | 
data BranchImpllinks = BranchImpllinks
  { branchImpllinksSelf :: Link -- ^ 
  , branchImpllinksActions :: Link -- ^ 
  , branchImpllinksRuns :: Link -- ^ 
  , branchImpllinksQueue :: Link -- ^ 
  , branchImpllinksClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON BranchImpllinks where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "branchImpllinks")
instance ToJSON BranchImpllinks where
  toJSON = genericToJSON (removeFieldLabelPrefix False "branchImpllinks")

-- | 
data BranchImplpermissions = BranchImplpermissions
  { branchImplpermissionsCreate :: Bool -- ^ 
  , branchImplpermissionsRead :: Bool -- ^ 
  , branchImplpermissionsStart :: Bool -- ^ 
  , branchImplpermissionsStop :: Bool -- ^ 
  , branchImplpermissionsClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON BranchImplpermissions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "branchImplpermissions")
instance ToJSON BranchImplpermissions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "branchImplpermissions")

-- | 
data CauseAction = CauseAction
  { causeActionClass :: Text -- ^ 
  , causeActionCauses :: [CauseUserIdCause] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON CauseAction where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "causeAction")
instance ToJSON CauseAction where
  toJSON = genericToJSON (removeFieldLabelPrefix False "causeAction")

-- | 
data CauseUserIdCause = CauseUserIdCause
  { causeUserIdCauseClass :: Text -- ^ 
  , causeUserIdCauseShortDescription :: Text -- ^ 
  , causeUserIdCauseUserId :: Text -- ^ 
  , causeUserIdCauseUserName :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON CauseUserIdCause where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "causeUserIdCause")
instance ToJSON CauseUserIdCause where
  toJSON = genericToJSON (removeFieldLabelPrefix False "causeUserIdCause")

-- | 
data ClassesByClass = ClassesByClass
  { classesByClassClasses :: [Text] -- ^ 
  , classesByClassClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ClassesByClass where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "classesByClass")
instance ToJSON ClassesByClass where
  toJSON = genericToJSON (removeFieldLabelPrefix False "classesByClass")

-- | 
data ClockDifference = ClockDifference
  { clockDifferenceClass :: Text -- ^ 
  , clockDifferenceDiff :: Int -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ClockDifference where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "clockDifference")
instance ToJSON ClockDifference where
  toJSON = genericToJSON (removeFieldLabelPrefix False "clockDifference")

-- | 
data ComputerSet = ComputerSet
  { computerSetClass :: Text -- ^ 
  , computerSetBusyExecutors :: Int -- ^ 
  , computerSetComputer :: [HudsonMasterComputer] -- ^ 
  , computerSetDisplayName :: Text -- ^ 
  , computerSetTotalExecutors :: Int -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ComputerSet where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "computerSet")
instance ToJSON ComputerSet where
  toJSON = genericToJSON (removeFieldLabelPrefix False "computerSet")

-- | 
data DefaultCrumbIssuer = DefaultCrumbIssuer
  { defaultCrumbIssuerClass :: Text -- ^ 
  , defaultCrumbIssuerCrumb :: Text -- ^ 
  , defaultCrumbIssuerCrumbRequestField :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON DefaultCrumbIssuer where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "defaultCrumbIssuer")
instance ToJSON DefaultCrumbIssuer where
  toJSON = genericToJSON (removeFieldLabelPrefix False "defaultCrumbIssuer")

-- | 
data DiskSpaceMonitorDescriptorDiskSpace = DiskSpaceMonitorDescriptorDiskSpace
  { diskSpaceMonitorDescriptorDiskSpaceClass :: Text -- ^ 
  , diskSpaceMonitorDescriptorDiskSpaceTimestamp :: Int -- ^ 
  , diskSpaceMonitorDescriptorDiskSpacePath :: Text -- ^ 
  , diskSpaceMonitorDescriptorDiskSpaceSize :: Int -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON DiskSpaceMonitorDescriptorDiskSpace where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "diskSpaceMonitorDescriptorDiskSpace")
instance ToJSON DiskSpaceMonitorDescriptorDiskSpace where
  toJSON = genericToJSON (removeFieldLabelPrefix False "diskSpaceMonitorDescriptorDiskSpace")

-- | 
data EmptyChangeLogSet = EmptyChangeLogSet
  { emptyChangeLogSetClass :: Text -- ^ 
  , emptyChangeLogSetKind :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON EmptyChangeLogSet where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "emptyChangeLogSet")
instance ToJSON EmptyChangeLogSet where
  toJSON = genericToJSON (removeFieldLabelPrefix False "emptyChangeLogSet")

-- | 
data ExtensionClassContainerImpl1 = ExtensionClassContainerImpl1
  { extensionClassContainerImpl1Class :: Text -- ^ 
  , extensionClassContainerImpl1'Underscorelinks :: ExtensionClassContainerImpl1links -- ^ 
  , extensionClassContainerImpl1Map :: ExtensionClassContainerImpl1map -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ExtensionClassContainerImpl1 where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "extensionClassContainerImpl1")
instance ToJSON ExtensionClassContainerImpl1 where
  toJSON = genericToJSON (removeFieldLabelPrefix False "extensionClassContainerImpl1")

-- | 
data ExtensionClassContainerImpl1links = ExtensionClassContainerImpl1links
  { extensionClassContainerImpl1linksSelf :: Link -- ^ 
  , extensionClassContainerImpl1linksClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ExtensionClassContainerImpl1links where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "extensionClassContainerImpl1links")
instance ToJSON ExtensionClassContainerImpl1links where
  toJSON = genericToJSON (removeFieldLabelPrefix False "extensionClassContainerImpl1links")

-- | 
data ExtensionClassContainerImpl1map = ExtensionClassContainerImpl1map
  { extensionClassContainerImpl1mapIo'Periodjenkins'Periodblueocean'Periodservice'Periodembedded'Periodrest'PeriodPipelineImpl :: ExtensionClassImpl -- ^ 
  , extensionClassContainerImpl1mapIo'Periodjenkins'Periodblueocean'Periodservice'Periodembedded'Periodrest'PeriodMultiBranchPipelineImpl :: ExtensionClassImpl -- ^ 
  , extensionClassContainerImpl1mapClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ExtensionClassContainerImpl1map where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "extensionClassContainerImpl1map")
instance ToJSON ExtensionClassContainerImpl1map where
  toJSON = genericToJSON (removeFieldLabelPrefix False "extensionClassContainerImpl1map")

-- | 
data ExtensionClassImpl = ExtensionClassImpl
  { extensionClassImplClass :: Text -- ^ 
  , extensionClassImpl'Underscorelinks :: ExtensionClassImpllinks -- ^ 
  , extensionClassImplClasses :: [Text] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ExtensionClassImpl where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "extensionClassImpl")
instance ToJSON ExtensionClassImpl where
  toJSON = genericToJSON (removeFieldLabelPrefix False "extensionClassImpl")

-- | 
data ExtensionClassImpllinks = ExtensionClassImpllinks
  { extensionClassImpllinksSelf :: Link -- ^ 
  , extensionClassImpllinksClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ExtensionClassImpllinks where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "extensionClassImpllinks")
instance ToJSON ExtensionClassImpllinks where
  toJSON = genericToJSON (removeFieldLabelPrefix False "extensionClassImpllinks")

-- | 
data FavoriteImpl = FavoriteImpl
  { favoriteImplClass :: Text -- ^ 
  , favoriteImpl'Underscorelinks :: FavoriteImpllinks -- ^ 
  , favoriteImplItem :: PipelineImpl -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON FavoriteImpl where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "favoriteImpl")
instance ToJSON FavoriteImpl where
  toJSON = genericToJSON (removeFieldLabelPrefix False "favoriteImpl")

-- | 
data FavoriteImpllinks = FavoriteImpllinks
  { favoriteImpllinksSelf :: Link -- ^ 
  , favoriteImpllinksClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON FavoriteImpllinks where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "favoriteImpllinks")
instance ToJSON FavoriteImpllinks where
  toJSON = genericToJSON (removeFieldLabelPrefix False "favoriteImpllinks")

-- | 
data FreeStyleBuild = FreeStyleBuild
  { freeStyleBuildClass :: Text -- ^ 
  , freeStyleBuildNumber :: Int -- ^ 
  , freeStyleBuildUrl :: Text -- ^ 
  , freeStyleBuildActions :: [CauseAction] -- ^ 
  , freeStyleBuildBuilding :: Bool -- ^ 
  , freeStyleBuildDescription :: Text -- ^ 
  , freeStyleBuildDisplayName :: Text -- ^ 
  , freeStyleBuildDuration :: Int -- ^ 
  , freeStyleBuildEstimatedDuration :: Int -- ^ 
  , freeStyleBuildExecutor :: Text -- ^ 
  , freeStyleBuildFullDisplayName :: Text -- ^ 
  , freeStyleBuildId :: Text -- ^ 
  , freeStyleBuildKeepLog :: Bool -- ^ 
  , freeStyleBuildQueueId :: Int -- ^ 
  , freeStyleBuildResult :: Text -- ^ 
  , freeStyleBuildTimestamp :: Int -- ^ 
  , freeStyleBuildBuiltOn :: Text -- ^ 
  , freeStyleBuildChangeSet :: EmptyChangeLogSet -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON FreeStyleBuild where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "freeStyleBuild")
instance ToJSON FreeStyleBuild where
  toJSON = genericToJSON (removeFieldLabelPrefix False "freeStyleBuild")

-- | 
data FreeStyleProject = FreeStyleProject
  { freeStyleProjectClass :: Text -- ^ 
  , freeStyleProjectName :: Text -- ^ 
  , freeStyleProjectUrl :: Text -- ^ 
  , freeStyleProjectColor :: Text -- ^ 
  , freeStyleProjectActions :: [FreeStyleProjectactions] -- ^ 
  , freeStyleProjectDescription :: Text -- ^ 
  , freeStyleProjectDisplayName :: Text -- ^ 
  , freeStyleProjectDisplayNameOrNull :: Text -- ^ 
  , freeStyleProjectFullDisplayName :: Text -- ^ 
  , freeStyleProjectFullName :: Text -- ^ 
  , freeStyleProjectBuildable :: Bool -- ^ 
  , freeStyleProjectBuilds :: [FreeStyleBuild] -- ^ 
  , freeStyleProjectFirstBuild :: FreeStyleBuild -- ^ 
  , freeStyleProjectHealthReport :: [FreeStyleProjecthealthReport] -- ^ 
  , freeStyleProjectInQueue :: Bool -- ^ 
  , freeStyleProjectKeepDependencies :: Bool -- ^ 
  , freeStyleProjectLastBuild :: FreeStyleBuild -- ^ 
  , freeStyleProjectLastCompletedBuild :: FreeStyleBuild -- ^ 
  , freeStyleProjectLastFailedBuild :: Text -- ^ 
  , freeStyleProjectLastStableBuild :: FreeStyleBuild -- ^ 
  , freeStyleProjectLastSuccessfulBuild :: FreeStyleBuild -- ^ 
  , freeStyleProjectLastUnstableBuild :: Text -- ^ 
  , freeStyleProjectLastUnsuccessfulBuild :: Text -- ^ 
  , freeStyleProjectNextBuildNumber :: Int -- ^ 
  , freeStyleProjectQueueItem :: Text -- ^ 
  , freeStyleProjectConcurrentBuild :: Bool -- ^ 
  , freeStyleProjectScm :: NullSCM -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON FreeStyleProject where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "freeStyleProject")
instance ToJSON FreeStyleProject where
  toJSON = genericToJSON (removeFieldLabelPrefix False "freeStyleProject")

-- | 
data FreeStyleProjectactions = FreeStyleProjectactions
  { freeStyleProjectactionsClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON FreeStyleProjectactions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "freeStyleProjectactions")
instance ToJSON FreeStyleProjectactions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "freeStyleProjectactions")

-- | 
data FreeStyleProjecthealthReport = FreeStyleProjecthealthReport
  { freeStyleProjecthealthReportDescription :: Text -- ^ 
  , freeStyleProjecthealthReportIconClassName :: Text -- ^ 
  , freeStyleProjecthealthReportIconUrl :: Text -- ^ 
  , freeStyleProjecthealthReportScore :: Int -- ^ 
  , freeStyleProjecthealthReportClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON FreeStyleProjecthealthReport where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "freeStyleProjecthealthReport")
instance ToJSON FreeStyleProjecthealthReport where
  toJSON = genericToJSON (removeFieldLabelPrefix False "freeStyleProjecthealthReport")

-- | 
data GenericResource = GenericResource
  { genericResourceClass :: Text -- ^ 
  , genericResourceDisplayName :: Text -- ^ 
  , genericResourceDurationInMillis :: Int -- ^ 
  , genericResourceId :: Text -- ^ 
  , genericResourceResult :: Text -- ^ 
  , genericResourceStartTime :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON GenericResource where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "genericResource")
instance ToJSON GenericResource where
  toJSON = genericToJSON (removeFieldLabelPrefix False "genericResource")

-- | 
data GithubContent = GithubContent
  { githubContentName :: Text -- ^ 
  , githubContentSha :: Text -- ^ 
  , githubContentClass :: Text -- ^ 
  , githubContentRepo :: Text -- ^ 
  , githubContentSize :: Int -- ^ 
  , githubContentOwner :: Text -- ^ 
  , githubContentPath :: Text -- ^ 
  , githubContentBase64Data :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON GithubContent where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "githubContent")
instance ToJSON GithubContent where
  toJSON = genericToJSON (removeFieldLabelPrefix False "githubContent")

-- | 
data GithubFile = GithubFile
  { githubFileContent :: GithubContent -- ^ 
  , githubFileClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON GithubFile where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "githubFile")
instance ToJSON GithubFile where
  toJSON = genericToJSON (removeFieldLabelPrefix False "githubFile")

-- | 
data GithubOrganization = GithubOrganization
  { githubOrganizationClass :: Text -- ^ 
  , githubOrganization'Underscorelinks :: GithubOrganizationlinks -- ^ 
  , githubOrganizationJenkinsOrganizationPipeline :: Bool -- ^ 
  , githubOrganizationName :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON GithubOrganization where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "githubOrganization")
instance ToJSON GithubOrganization where
  toJSON = genericToJSON (removeFieldLabelPrefix False "githubOrganization")

-- | 
data GithubOrganizationlinks = GithubOrganizationlinks
  { githubOrganizationlinksRepositories :: Link -- ^ 
  , githubOrganizationlinksSelf :: Link -- ^ 
  , githubOrganizationlinksClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON GithubOrganizationlinks where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "githubOrganizationlinks")
instance ToJSON GithubOrganizationlinks where
  toJSON = genericToJSON (removeFieldLabelPrefix False "githubOrganizationlinks")

-- | 
data GithubRepositories = GithubRepositories
  { githubRepositoriesClass :: Text -- ^ 
  , githubRepositories'Underscorelinks :: GithubRepositorieslinks -- ^ 
  , githubRepositoriesItems :: [GithubRepository] -- ^ 
  , githubRepositoriesLastPage :: Int -- ^ 
  , githubRepositoriesNextPage :: Int -- ^ 
  , githubRepositoriesPageSize :: Int -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON GithubRepositories where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "githubRepositories")
instance ToJSON GithubRepositories where
  toJSON = genericToJSON (removeFieldLabelPrefix False "githubRepositories")

-- | 
data GithubRepositorieslinks = GithubRepositorieslinks
  { githubRepositorieslinksSelf :: Link -- ^ 
  , githubRepositorieslinksClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON GithubRepositorieslinks where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "githubRepositorieslinks")
instance ToJSON GithubRepositorieslinks where
  toJSON = genericToJSON (removeFieldLabelPrefix False "githubRepositorieslinks")

-- | 
data GithubRepository = GithubRepository
  { githubRepositoryClass :: Text -- ^ 
  , githubRepository'Underscorelinks :: GithubRepositorylinks -- ^ 
  , githubRepositoryDefaultBranch :: Text -- ^ 
  , githubRepositoryDescription :: Text -- ^ 
  , githubRepositoryName :: Text -- ^ 
  , githubRepositoryPermissions :: GithubRepositorypermissions -- ^ 
  , githubRepositoryPrivate :: Bool -- ^ 
  , githubRepositoryFullName :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON GithubRepository where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "githubRepository")
instance ToJSON GithubRepository where
  toJSON = genericToJSON (removeFieldLabelPrefix False "githubRepository")

-- | 
data GithubRepositorylinks = GithubRepositorylinks
  { githubRepositorylinksSelf :: Link -- ^ 
  , githubRepositorylinksClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON GithubRepositorylinks where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "githubRepositorylinks")
instance ToJSON GithubRepositorylinks where
  toJSON = genericToJSON (removeFieldLabelPrefix False "githubRepositorylinks")

-- | 
data GithubRepositorypermissions = GithubRepositorypermissions
  { githubRepositorypermissionsAdmin :: Bool -- ^ 
  , githubRepositorypermissionsPush :: Bool -- ^ 
  , githubRepositorypermissionsPull :: Bool -- ^ 
  , githubRepositorypermissionsClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON GithubRepositorypermissions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "githubRepositorypermissions")
instance ToJSON GithubRepositorypermissions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "githubRepositorypermissions")

-- | 
data GithubRespositoryContainer = GithubRespositoryContainer
  { githubRespositoryContainerClass :: Text -- ^ 
  , githubRespositoryContainer'Underscorelinks :: GithubRespositoryContainerlinks -- ^ 
  , githubRespositoryContainerRepositories :: GithubRepositories -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON GithubRespositoryContainer where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "githubRespositoryContainer")
instance ToJSON GithubRespositoryContainer where
  toJSON = genericToJSON (removeFieldLabelPrefix False "githubRespositoryContainer")

-- | 
data GithubRespositoryContainerlinks = GithubRespositoryContainerlinks
  { githubRespositoryContainerlinksSelf :: Link -- ^ 
  , githubRespositoryContainerlinksClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON GithubRespositoryContainerlinks where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "githubRespositoryContainerlinks")
instance ToJSON GithubRespositoryContainerlinks where
  toJSON = genericToJSON (removeFieldLabelPrefix False "githubRespositoryContainerlinks")

-- | 
data GithubScm = GithubScm
  { githubScmClass :: Text -- ^ 
  , githubScm'Underscorelinks :: GithubScmlinks -- ^ 
  , githubScmCredentialId :: Text -- ^ 
  , githubScmId :: Text -- ^ 
  , githubScmUri :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON GithubScm where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "githubScm")
instance ToJSON GithubScm where
  toJSON = genericToJSON (removeFieldLabelPrefix False "githubScm")

-- | 
data GithubScmlinks = GithubScmlinks
  { githubScmlinksSelf :: Link -- ^ 
  , githubScmlinksClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON GithubScmlinks where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "githubScmlinks")
instance ToJSON GithubScmlinks where
  toJSON = genericToJSON (removeFieldLabelPrefix False "githubScmlinks")

-- | 
data Hudson = Hudson
  { hudsonClass :: Text -- ^ 
  , hudsonAssignedLabels :: [HudsonassignedLabels] -- ^ 
  , hudsonMode :: Text -- ^ 
  , hudsonNodeDescription :: Text -- ^ 
  , hudsonNodeName :: Text -- ^ 
  , hudsonNumExecutors :: Int -- ^ 
  , hudsonDescription :: Text -- ^ 
  , hudsonJobs :: [FreeStyleProject] -- ^ 
  , hudsonPrimaryView :: AllView -- ^ 
  , hudsonQuietingDown :: Bool -- ^ 
  , hudsonSlaveAgentPort :: Int -- ^ 
  , hudsonUnlabeledLoad :: UnlabeledLoadStatistics -- ^ 
  , hudsonUseCrumbs :: Bool -- ^ 
  , hudsonUseSecurity :: Bool -- ^ 
  , hudsonViews :: [AllView] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Hudson where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "hudson")
instance ToJSON Hudson where
  toJSON = genericToJSON (removeFieldLabelPrefix False "hudson")

-- | 
data HudsonMasterComputer = HudsonMasterComputer
  { hudsonMasterComputerClass :: Text -- ^ 
  , hudsonMasterComputerDisplayName :: Text -- ^ 
  , hudsonMasterComputerExecutors :: [HudsonMasterComputerexecutors] -- ^ 
  , hudsonMasterComputerIcon :: Text -- ^ 
  , hudsonMasterComputerIconClassName :: Text -- ^ 
  , hudsonMasterComputerIdle :: Bool -- ^ 
  , hudsonMasterComputerJnlpAgent :: Bool -- ^ 
  , hudsonMasterComputerLaunchSupported :: Bool -- ^ 
  , hudsonMasterComputerLoadStatistics :: Label1 -- ^ 
  , hudsonMasterComputerManualLaunchAllowed :: Bool -- ^ 
  , hudsonMasterComputerMonitorData :: HudsonMasterComputermonitorData -- ^ 
  , hudsonMasterComputerNumExecutors :: Int -- ^ 
  , hudsonMasterComputerOffline :: Bool -- ^ 
  , hudsonMasterComputerOfflineCause :: Text -- ^ 
  , hudsonMasterComputerOfflineCauseReason :: Text -- ^ 
  , hudsonMasterComputerTemporarilyOffline :: Bool -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON HudsonMasterComputer where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "hudsonMasterComputer")
instance ToJSON HudsonMasterComputer where
  toJSON = genericToJSON (removeFieldLabelPrefix False "hudsonMasterComputer")

-- | 
data HudsonMasterComputerexecutors = HudsonMasterComputerexecutors
  { hudsonMasterComputerexecutorsCurrentExecutable :: FreeStyleBuild -- ^ 
  , hudsonMasterComputerexecutorsIdle :: Bool -- ^ 
  , hudsonMasterComputerexecutorsLikelyStuck :: Bool -- ^ 
  , hudsonMasterComputerexecutorsNumber :: Int -- ^ 
  , hudsonMasterComputerexecutorsProgress :: Int -- ^ 
  , hudsonMasterComputerexecutorsClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON HudsonMasterComputerexecutors where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "hudsonMasterComputerexecutors")
instance ToJSON HudsonMasterComputerexecutors where
  toJSON = genericToJSON (removeFieldLabelPrefix False "hudsonMasterComputerexecutors")

-- | 
data HudsonMasterComputermonitorData = HudsonMasterComputermonitorData
  { hudsonMasterComputermonitorDataHudson'Periodnode'Underscoremonitors'PeriodSwapSpaceMonitor :: SwapSpaceMonitorMemoryUsage2 -- ^ 
  , hudsonMasterComputermonitorDataHudson'Periodnode'Underscoremonitors'PeriodTemporarySpaceMonitor :: DiskSpaceMonitorDescriptorDiskSpace -- ^ 
  , hudsonMasterComputermonitorDataHudson'Periodnode'Underscoremonitors'PeriodDiskSpaceMonitor :: DiskSpaceMonitorDescriptorDiskSpace -- ^ 
  , hudsonMasterComputermonitorDataHudson'Periodnode'Underscoremonitors'PeriodArchitectureMonitor :: Text -- ^ 
  , hudsonMasterComputermonitorDataHudson'Periodnode'Underscoremonitors'PeriodResponseTimeMonitor :: ResponseTimeMonitorData -- ^ 
  , hudsonMasterComputermonitorDataHudson'Periodnode'Underscoremonitors'PeriodClockMonitor :: ClockDifference -- ^ 
  , hudsonMasterComputermonitorDataClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON HudsonMasterComputermonitorData where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "hudsonMasterComputermonitorData")
instance ToJSON HudsonMasterComputermonitorData where
  toJSON = genericToJSON (removeFieldLabelPrefix False "hudsonMasterComputermonitorData")

-- | 
data HudsonassignedLabels = HudsonassignedLabels
  { hudsonassignedLabelsClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON HudsonassignedLabels where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "hudsonassignedLabels")
instance ToJSON HudsonassignedLabels where
  toJSON = genericToJSON (removeFieldLabelPrefix False "hudsonassignedLabels")

-- | 
data InputStepImpl = InputStepImpl
  { inputStepImplClass :: Text -- ^ 
  , inputStepImpl'Underscorelinks :: InputStepImpllinks -- ^ 
  , inputStepImplId :: Text -- ^ 
  , inputStepImplMessage :: Text -- ^ 
  , inputStepImplOk :: Text -- ^ 
  , inputStepImplParameters :: [StringParameterDefinition] -- ^ 
  , inputStepImplSubmitter :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON InputStepImpl where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "inputStepImpl")
instance ToJSON InputStepImpl where
  toJSON = genericToJSON (removeFieldLabelPrefix False "inputStepImpl")

-- | 
data InputStepImpllinks = InputStepImpllinks
  { inputStepImpllinksSelf :: Link -- ^ 
  , inputStepImpllinksClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON InputStepImpllinks where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "inputStepImpllinks")
instance ToJSON InputStepImpllinks where
  toJSON = genericToJSON (removeFieldLabelPrefix False "inputStepImpllinks")

-- | 
data Label1 = Label1
  { label1Class :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Label1 where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "label1")
instance ToJSON Label1 where
  toJSON = genericToJSON (removeFieldLabelPrefix False "label1")

-- | 
data Link = Link
  { linkClass :: Text -- ^ 
  , linkHref :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Link where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "link")
instance ToJSON Link where
  toJSON = genericToJSON (removeFieldLabelPrefix False "link")

-- | 
data ListView = ListView
  { listViewClass :: Text -- ^ 
  , listViewDescription :: Text -- ^ 
  , listViewJobs :: [FreeStyleProject] -- ^ 
  , listViewName :: Text -- ^ 
  , listViewUrl :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ListView where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "listView")
instance ToJSON ListView where
  toJSON = genericToJSON (removeFieldLabelPrefix False "listView")

-- | 
data MultibranchPipeline = MultibranchPipeline
  { multibranchPipelineDisplayName :: Text -- ^ 
  , multibranchPipelineEstimatedDurationInMillis :: Int -- ^ 
  , multibranchPipelineLatestRun :: Text -- ^ 
  , multibranchPipelineName :: Text -- ^ 
  , multibranchPipelineOrganization :: Text -- ^ 
  , multibranchPipelineWeatherScore :: Int -- ^ 
  , multibranchPipelineBranchNames :: [Text] -- ^ 
  , multibranchPipelineNumberOfFailingBranches :: Int -- ^ 
  , multibranchPipelineNumberOfFailingPullRequests :: Int -- ^ 
  , multibranchPipelineNumberOfSuccessfulBranches :: Int -- ^ 
  , multibranchPipelineNumberOfSuccessfulPullRequests :: Int -- ^ 
  , multibranchPipelineTotalNumberOfBranches :: Int -- ^ 
  , multibranchPipelineTotalNumberOfPullRequests :: Int -- ^ 
  , multibranchPipelineClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON MultibranchPipeline where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "multibranchPipeline")
instance ToJSON MultibranchPipeline where
  toJSON = genericToJSON (removeFieldLabelPrefix False "multibranchPipeline")

-- | 
data NullSCM = NullSCM
  { nullSCMClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON NullSCM where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "nullSCM")
instance ToJSON NullSCM where
  toJSON = genericToJSON (removeFieldLabelPrefix False "nullSCM")

-- | 
data Organisation = Organisation
  { organisationClass :: Text -- ^ 
  , organisationName :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Organisation where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "organisation")
instance ToJSON Organisation where
  toJSON = genericToJSON (removeFieldLabelPrefix False "organisation")

-- | 
newtype Organisations = Organisations { unOrganisations :: Organisation }
  deriving (Show, Eq, FromJSON, ToJSON, Generic)

-- | 
data Pipeline = Pipeline
  { pipelineClass :: Text -- ^ 
  , pipelineOrganization :: Text -- ^ 
  , pipelineName :: Text -- ^ 
  , pipelineDisplayName :: Text -- ^ 
  , pipelineFullName :: Text -- ^ 
  , pipelineWeatherScore :: Int -- ^ 
  , pipelineEstimatedDurationInMillis :: Int -- ^ 
  , pipelineLatestRun :: PipelinelatestRun -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Pipeline where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipeline")
instance ToJSON Pipeline where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipeline")

-- | 
newtype PipelineActivities = PipelineActivities { unPipelineActivities :: PipelineActivity }
  deriving (Show, Eq, FromJSON, ToJSON, Generic)

-- | 
data PipelineActivity = PipelineActivity
  { pipelineActivityClass :: Text -- ^ 
  , pipelineActivityArtifacts :: [PipelineActivityartifacts] -- ^ 
  , pipelineActivityDurationInMillis :: Int -- ^ 
  , pipelineActivityEstimatedDurationInMillis :: Int -- ^ 
  , pipelineActivityEnQueueTime :: Text -- ^ 
  , pipelineActivityEndTime :: Text -- ^ 
  , pipelineActivityId :: Text -- ^ 
  , pipelineActivityOrganization :: Text -- ^ 
  , pipelineActivityPipeline :: Text -- ^ 
  , pipelineActivityResult :: Text -- ^ 
  , pipelineActivityRunSummary :: Text -- ^ 
  , pipelineActivityStartTime :: Text -- ^ 
  , pipelineActivityState :: Text -- ^ 
  , pipelineActivityType :: Text -- ^ 
  , pipelineActivityCommitId :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON PipelineActivity where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipelineActivity")
instance ToJSON PipelineActivity where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipelineActivity")

-- | 
data PipelineActivityartifacts = PipelineActivityartifacts
  { pipelineActivityartifactsName :: Text -- ^ 
  , pipelineActivityartifactsSize :: Int -- ^ 
  , pipelineActivityartifactsUrl :: Text -- ^ 
  , pipelineActivityartifactsClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON PipelineActivityartifacts where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipelineActivityartifacts")
instance ToJSON PipelineActivityartifacts where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipelineActivityartifacts")

-- | 
newtype PipelineBranches = PipelineBranches { unPipelineBranches :: PipelineBranchesitem }
  deriving (Show, Eq, FromJSON, ToJSON, Generic)

-- | 
data PipelineBranchesitem = PipelineBranchesitem
  { pipelineBranchesitemDisplayName :: Text -- ^ 
  , pipelineBranchesitemEstimatedDurationInMillis :: Int -- ^ 
  , pipelineBranchesitemName :: Text -- ^ 
  , pipelineBranchesitemWeatherScore :: Int -- ^ 
  , pipelineBranchesitemLatestRun :: PipelineBranchesitemlatestRun -- ^ 
  , pipelineBranchesitemOrganization :: Text -- ^ 
  , pipelineBranchesitemPullRequest :: PipelineBranchesitempullRequest -- ^ 
  , pipelineBranchesitemTotalNumberOfPullRequests :: Int -- ^ 
  , pipelineBranchesitemClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON PipelineBranchesitem where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipelineBranchesitem")
instance ToJSON PipelineBranchesitem where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipelineBranchesitem")

-- | 
data PipelineBranchesitemlatestRun = PipelineBranchesitemlatestRun
  { pipelineBranchesitemlatestRunDurationInMillis :: Int -- ^ 
  , pipelineBranchesitemlatestRunEstimatedDurationInMillis :: Int -- ^ 
  , pipelineBranchesitemlatestRunEnQueueTime :: Text -- ^ 
  , pipelineBranchesitemlatestRunEndTime :: Text -- ^ 
  , pipelineBranchesitemlatestRunId :: Text -- ^ 
  , pipelineBranchesitemlatestRunOrganization :: Text -- ^ 
  , pipelineBranchesitemlatestRunPipeline :: Text -- ^ 
  , pipelineBranchesitemlatestRunResult :: Text -- ^ 
  , pipelineBranchesitemlatestRunRunSummary :: Text -- ^ 
  , pipelineBranchesitemlatestRunStartTime :: Text -- ^ 
  , pipelineBranchesitemlatestRunState :: Text -- ^ 
  , pipelineBranchesitemlatestRunType :: Text -- ^ 
  , pipelineBranchesitemlatestRunCommitId :: Text -- ^ 
  , pipelineBranchesitemlatestRunClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON PipelineBranchesitemlatestRun where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipelineBranchesitemlatestRun")
instance ToJSON PipelineBranchesitemlatestRun where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipelineBranchesitemlatestRun")

-- | 
data PipelineBranchesitempullRequest = PipelineBranchesitempullRequest
  { pipelineBranchesitempullRequest'Underscorelinks :: PipelineBranchesitempullRequestlinks -- ^ 
  , pipelineBranchesitempullRequestAuthor :: Text -- ^ 
  , pipelineBranchesitempullRequestId :: Text -- ^ 
  , pipelineBranchesitempullRequestTitle :: Text -- ^ 
  , pipelineBranchesitempullRequestUrl :: Text -- ^ 
  , pipelineBranchesitempullRequestClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON PipelineBranchesitempullRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipelineBranchesitempullRequest")
instance ToJSON PipelineBranchesitempullRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipelineBranchesitempullRequest")

-- | 
data PipelineBranchesitempullRequestlinks = PipelineBranchesitempullRequestlinks
  { pipelineBranchesitempullRequestlinksSelf :: Text -- ^ 
  , pipelineBranchesitempullRequestlinksClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON PipelineBranchesitempullRequestlinks where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipelineBranchesitempullRequestlinks")
instance ToJSON PipelineBranchesitempullRequestlinks where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipelineBranchesitempullRequestlinks")

-- | 
data PipelineFolderImpl = PipelineFolderImpl
  { pipelineFolderImplClass :: Text -- ^ 
  , pipelineFolderImplDisplayName :: Text -- ^ 
  , pipelineFolderImplFullName :: Text -- ^ 
  , pipelineFolderImplName :: Text -- ^ 
  , pipelineFolderImplOrganization :: Text -- ^ 
  , pipelineFolderImplNumberOfFolders :: Int -- ^ 
  , pipelineFolderImplNumberOfPipelines :: Int -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON PipelineFolderImpl where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipelineFolderImpl")
instance ToJSON PipelineFolderImpl where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipelineFolderImpl")

-- | 
data PipelineImpl = PipelineImpl
  { pipelineImplClass :: Text -- ^ 
  , pipelineImplDisplayName :: Text -- ^ 
  , pipelineImplEstimatedDurationInMillis :: Int -- ^ 
  , pipelineImplFullName :: Text -- ^ 
  , pipelineImplLatestRun :: Text -- ^ 
  , pipelineImplName :: Text -- ^ 
  , pipelineImplOrganization :: Text -- ^ 
  , pipelineImplWeatherScore :: Int -- ^ 
  , pipelineImpl'Underscorelinks :: PipelineImpllinks -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON PipelineImpl where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipelineImpl")
instance ToJSON PipelineImpl where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipelineImpl")

-- | 
data PipelineImpllinks = PipelineImpllinks
  { pipelineImpllinksRuns :: Link -- ^ 
  , pipelineImpllinksSelf :: Link -- ^ 
  , pipelineImpllinksQueue :: Link -- ^ 
  , pipelineImpllinksActions :: Link -- ^ 
  , pipelineImpllinksClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON PipelineImpllinks where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipelineImpllinks")
instance ToJSON PipelineImpllinks where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipelineImpllinks")

-- | 
newtype PipelineQueue = PipelineQueue { unPipelineQueue :: QueueItemImpl }
  deriving (Show, Eq, FromJSON, ToJSON, Generic)

-- | 
data PipelineRun = PipelineRun
  { pipelineRunClass :: Text -- ^ 
  , pipelineRunArtifacts :: [PipelineRunartifacts] -- ^ 
  , pipelineRunDurationInMillis :: Int -- ^ 
  , pipelineRunEstimatedDurationInMillis :: Int -- ^ 
  , pipelineRunEnQueueTime :: Text -- ^ 
  , pipelineRunEndTime :: Text -- ^ 
  , pipelineRunId :: Text -- ^ 
  , pipelineRunOrganization :: Text -- ^ 
  , pipelineRunPipeline :: Text -- ^ 
  , pipelineRunResult :: Text -- ^ 
  , pipelineRunRunSummary :: Text -- ^ 
  , pipelineRunStartTime :: Text -- ^ 
  , pipelineRunState :: Text -- ^ 
  , pipelineRunType :: Text -- ^ 
  , pipelineRunCommitId :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON PipelineRun where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipelineRun")
instance ToJSON PipelineRun where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipelineRun")

-- | 
data PipelineRunImpl = PipelineRunImpl
  { pipelineRunImplClass :: Text -- ^ 
  , pipelineRunImpl'Underscorelinks :: PipelineRunImpllinks -- ^ 
  , pipelineRunImplDurationInMillis :: Int -- ^ 
  , pipelineRunImplEnQueueTime :: Text -- ^ 
  , pipelineRunImplEndTime :: Text -- ^ 
  , pipelineRunImplEstimatedDurationInMillis :: Int -- ^ 
  , pipelineRunImplId :: Text -- ^ 
  , pipelineRunImplOrganization :: Text -- ^ 
  , pipelineRunImplPipeline :: Text -- ^ 
  , pipelineRunImplResult :: Text -- ^ 
  , pipelineRunImplRunSummary :: Text -- ^ 
  , pipelineRunImplStartTime :: Text -- ^ 
  , pipelineRunImplState :: Text -- ^ 
  , pipelineRunImplType :: Text -- ^ 
  , pipelineRunImplCommitId :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON PipelineRunImpl where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipelineRunImpl")
instance ToJSON PipelineRunImpl where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipelineRunImpl")

-- | 
data PipelineRunImpllinks = PipelineRunImpllinks
  { pipelineRunImpllinksNodes :: Link -- ^ 
  , pipelineRunImpllinksLog :: Link -- ^ 
  , pipelineRunImpllinksSelf :: Link -- ^ 
  , pipelineRunImpllinksActions :: Link -- ^ 
  , pipelineRunImpllinksSteps :: Link -- ^ 
  , pipelineRunImpllinksClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON PipelineRunImpllinks where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipelineRunImpllinks")
instance ToJSON PipelineRunImpllinks where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipelineRunImpllinks")

-- | 
data PipelineRunNode = PipelineRunNode
  { pipelineRunNodeClass :: Text -- ^ 
  , pipelineRunNodeDisplayName :: Text -- ^ 
  , pipelineRunNodeDurationInMillis :: Int -- ^ 
  , pipelineRunNodeEdges :: [PipelineRunNodeedges] -- ^ 
  , pipelineRunNodeId :: Text -- ^ 
  , pipelineRunNodeResult :: Text -- ^ 
  , pipelineRunNodeStartTime :: Text -- ^ 
  , pipelineRunNodeState :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON PipelineRunNode where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipelineRunNode")
instance ToJSON PipelineRunNode where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipelineRunNode")

-- | 
newtype PipelineRunNodeSteps = PipelineRunNodeSteps { unPipelineRunNodeSteps :: PipelineStepImpl }
  deriving (Show, Eq, FromJSON, ToJSON, Generic)

-- | 
data PipelineRunNodeedges = PipelineRunNodeedges
  { pipelineRunNodeedgesId :: Text -- ^ 
  , pipelineRunNodeedgesClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON PipelineRunNodeedges where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipelineRunNodeedges")
instance ToJSON PipelineRunNodeedges where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipelineRunNodeedges")

-- | 
newtype PipelineRunNodes = PipelineRunNodes { unPipelineRunNodes :: PipelineRunNode }
  deriving (Show, Eq, FromJSON, ToJSON, Generic)

-- | 
newtype PipelineRunSteps = PipelineRunSteps { unPipelineRunSteps :: GenericResource }
  deriving (Show, Eq, FromJSON, ToJSON, Generic)

-- | 
data PipelineRunartifacts = PipelineRunartifacts
  { pipelineRunartifactsName :: Text -- ^ 
  , pipelineRunartifactsSize :: Int -- ^ 
  , pipelineRunartifactsUrl :: Text -- ^ 
  , pipelineRunartifactsClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON PipelineRunartifacts where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipelineRunartifacts")
instance ToJSON PipelineRunartifacts where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipelineRunartifacts")

-- | 
newtype PipelineRuns = PipelineRuns { unPipelineRuns :: PipelineRun }
  deriving (Show, Eq, FromJSON, ToJSON, Generic)

-- | 
data PipelineStepImpl = PipelineStepImpl
  { pipelineStepImplClass :: Text -- ^ 
  , pipelineStepImpl'Underscorelinks :: PipelineStepImpllinks -- ^ 
  , pipelineStepImplDisplayName :: Text -- ^ 
  , pipelineStepImplDurationInMillis :: Int -- ^ 
  , pipelineStepImplId :: Text -- ^ 
  , pipelineStepImplInput :: InputStepImpl -- ^ 
  , pipelineStepImplResult :: Text -- ^ 
  , pipelineStepImplStartTime :: Text -- ^ 
  , pipelineStepImplState :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON PipelineStepImpl where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipelineStepImpl")
instance ToJSON PipelineStepImpl where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipelineStepImpl")

-- | 
data PipelineStepImpllinks = PipelineStepImpllinks
  { pipelineStepImpllinksSelf :: Link -- ^ 
  , pipelineStepImpllinksActions :: Link -- ^ 
  , pipelineStepImpllinksClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON PipelineStepImpllinks where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipelineStepImpllinks")
instance ToJSON PipelineStepImpllinks where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipelineStepImpllinks")

-- | 
data PipelinelatestRun = PipelinelatestRun
  { pipelinelatestRunArtifacts :: [PipelinelatestRunartifacts] -- ^ 
  , pipelinelatestRunDurationInMillis :: Int -- ^ 
  , pipelinelatestRunEstimatedDurationInMillis :: Int -- ^ 
  , pipelinelatestRunEnQueueTime :: Text -- ^ 
  , pipelinelatestRunEndTime :: Text -- ^ 
  , pipelinelatestRunId :: Text -- ^ 
  , pipelinelatestRunOrganization :: Text -- ^ 
  , pipelinelatestRunPipeline :: Text -- ^ 
  , pipelinelatestRunResult :: Text -- ^ 
  , pipelinelatestRunRunSummary :: Text -- ^ 
  , pipelinelatestRunStartTime :: Text -- ^ 
  , pipelinelatestRunState :: Text -- ^ 
  , pipelinelatestRunType :: Text -- ^ 
  , pipelinelatestRunCommitId :: Text -- ^ 
  , pipelinelatestRunClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON PipelinelatestRun where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipelinelatestRun")
instance ToJSON PipelinelatestRun where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipelinelatestRun")

-- | 
data PipelinelatestRunartifacts = PipelinelatestRunartifacts
  { pipelinelatestRunartifactsName :: Text -- ^ 
  , pipelinelatestRunartifactsSize :: Int -- ^ 
  , pipelinelatestRunartifactsUrl :: Text -- ^ 
  , pipelinelatestRunartifactsClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON PipelinelatestRunartifacts where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipelinelatestRunartifacts")
instance ToJSON PipelinelatestRunartifacts where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipelinelatestRunartifacts")

-- | 
newtype Pipelines = Pipelines { unPipelines :: Pipeline }
  deriving (Show, Eq, FromJSON, ToJSON, Generic)

-- | 
data Queue = Queue
  { queueClass :: Text -- ^ 
  , queueItems :: [QueueBlockedItem] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Queue where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "queue")
instance ToJSON Queue where
  toJSON = genericToJSON (removeFieldLabelPrefix False "queue")

-- | 
data QueueBlockedItem = QueueBlockedItem
  { queueBlockedItemClass :: Text -- ^ 
  , queueBlockedItemActions :: [CauseAction] -- ^ 
  , queueBlockedItemBlocked :: Bool -- ^ 
  , queueBlockedItemBuildable :: Bool -- ^ 
  , queueBlockedItemId :: Int -- ^ 
  , queueBlockedItemInQueueSince :: Int -- ^ 
  , queueBlockedItemParams :: Text -- ^ 
  , queueBlockedItemStuck :: Bool -- ^ 
  , queueBlockedItemTask :: FreeStyleProject -- ^ 
  , queueBlockedItemUrl :: Text -- ^ 
  , queueBlockedItemWhy :: Text -- ^ 
  , queueBlockedItemBuildableStartMilliseconds :: Int -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON QueueBlockedItem where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "queueBlockedItem")
instance ToJSON QueueBlockedItem where
  toJSON = genericToJSON (removeFieldLabelPrefix False "queueBlockedItem")

-- | 
data QueueItemImpl = QueueItemImpl
  { queueItemImplClass :: Text -- ^ 
  , queueItemImplExpectedBuildNumber :: Int -- ^ 
  , queueItemImplId :: Text -- ^ 
  , queueItemImplPipeline :: Text -- ^ 
  , queueItemImplQueuedTime :: Int -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON QueueItemImpl where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "queueItemImpl")
instance ToJSON QueueItemImpl where
  toJSON = genericToJSON (removeFieldLabelPrefix False "queueItemImpl")

-- | 
data QueueLeftItem = QueueLeftItem
  { queueLeftItemClass :: Text -- ^ 
  , queueLeftItemActions :: [CauseAction] -- ^ 
  , queueLeftItemBlocked :: Bool -- ^ 
  , queueLeftItemBuildable :: Bool -- ^ 
  , queueLeftItemId :: Int -- ^ 
  , queueLeftItemInQueueSince :: Int -- ^ 
  , queueLeftItemParams :: Text -- ^ 
  , queueLeftItemStuck :: Bool -- ^ 
  , queueLeftItemTask :: FreeStyleProject -- ^ 
  , queueLeftItemUrl :: Text -- ^ 
  , queueLeftItemWhy :: Text -- ^ 
  , queueLeftItemCancelled :: Bool -- ^ 
  , queueLeftItemExecutable :: FreeStyleBuild -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON QueueLeftItem where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "queueLeftItem")
instance ToJSON QueueLeftItem where
  toJSON = genericToJSON (removeFieldLabelPrefix False "queueLeftItem")

-- | 
data ResponseTimeMonitorData = ResponseTimeMonitorData
  { responseTimeMonitorDataClass :: Text -- ^ 
  , responseTimeMonitorDataTimestamp :: Int -- ^ 
  , responseTimeMonitorDataAverage :: Int -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseTimeMonitorData where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeMonitorData")
instance ToJSON ResponseTimeMonitorData where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeMonitorData")

-- | 
newtype ScmOrganisations = ScmOrganisations { unScmOrganisations :: GithubOrganization }
  deriving (Show, Eq, FromJSON, ToJSON, Generic)

-- | 
data StringParameterDefinition = StringParameterDefinition
  { stringParameterDefinitionClass :: Text -- ^ 
  , stringParameterDefinitionDefaultParameterValue :: StringParameterValue -- ^ 
  , stringParameterDefinitionDescription :: Text -- ^ 
  , stringParameterDefinitionName :: Text -- ^ 
  , stringParameterDefinitionType :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON StringParameterDefinition where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "stringParameterDefinition")
instance ToJSON StringParameterDefinition where
  toJSON = genericToJSON (removeFieldLabelPrefix False "stringParameterDefinition")

-- | 
data StringParameterValue = StringParameterValue
  { stringParameterValueClass :: Text -- ^ 
  , stringParameterValueName :: Text -- ^ 
  , stringParameterValueValue :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON StringParameterValue where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "stringParameterValue")
instance ToJSON StringParameterValue where
  toJSON = genericToJSON (removeFieldLabelPrefix False "stringParameterValue")

-- | 
data SwapSpaceMonitorMemoryUsage2 = SwapSpaceMonitorMemoryUsage2
  { swapSpaceMonitorMemoryUsage2Class :: Text -- ^ 
  , swapSpaceMonitorMemoryUsage2AvailablePhysicalMemory :: Int -- ^ 
  , swapSpaceMonitorMemoryUsage2AvailableSwapSpace :: Int -- ^ 
  , swapSpaceMonitorMemoryUsage2TotalPhysicalMemory :: Int -- ^ 
  , swapSpaceMonitorMemoryUsage2TotalSwapSpace :: Int -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON SwapSpaceMonitorMemoryUsage2 where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "swapSpaceMonitorMemoryUsage2")
instance ToJSON SwapSpaceMonitorMemoryUsage2 where
  toJSON = genericToJSON (removeFieldLabelPrefix False "swapSpaceMonitorMemoryUsage2")

-- | 
data UnlabeledLoadStatistics = UnlabeledLoadStatistics
  { unlabeledLoadStatisticsClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON UnlabeledLoadStatistics where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "unlabeledLoadStatistics")
instance ToJSON UnlabeledLoadStatistics where
  toJSON = genericToJSON (removeFieldLabelPrefix False "unlabeledLoadStatistics")

-- | 
data User = User
  { userClass :: Text -- ^ 
  , userId :: Text -- ^ 
  , userFullName :: Text -- ^ 
  , userEmail :: Text -- ^ 
  , userName :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON User where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "user")
instance ToJSON User where
  toJSON = genericToJSON (removeFieldLabelPrefix False "user")

-- | 
newtype UserFavorites = UserFavorites { unUserFavorites :: FavoriteImpl }
  deriving (Show, Eq, FromJSON, ToJSON, Generic)

-- | 
newtype Users = Users { unUsers :: User }
  deriving (Show, Eq, FromJSON, ToJSON, Generic)

-- Remove a field label prefix during JSON parsing.
-- Also perform any replacements for special characters.
removeFieldLabelPrefix :: Bool -> String -> Options
removeFieldLabelPrefix forParsing prefix =
  defaultOptions
  {fieldLabelModifier = fromMaybe (error ("did not find prefix " ++ prefix)) . stripPrefix prefix . replaceSpecialChars}
  where
    replaceSpecialChars field = foldl (&) field (map mkCharReplacement specialChars)
    specialChars =
      [ ("@", "'At")
      , ("\\", "'Back_Slash")
      , ("<=", "'Less_Than_Or_Equal_To")
      , ("\"", "'Double_Quote")
      , ("[", "'Left_Square_Bracket")
      , ("]", "'Right_Square_Bracket")
      , ("^", "'Caret")
      , ("_", "'Underscore")
      , ("`", "'Backtick")
      , ("!", "'Exclamation")
      , ("#", "'Hash")
      , ("$", "'Dollar")
      , ("%", "'Percent")
      , ("&", "'Ampersand")
      , ("'", "'Quote")
      , ("(", "'Left_Parenthesis")
      , (")", "'Right_Parenthesis")
      , ("*", "'Star")
      , ("+", "'Plus")
      , (",", "'Comma")
      , ("-", "'Dash")
      , (".", "'Period")
      , ("/", "'Slash")
      , (":", "'Colon")
      , ("{", "'Left_Curly_Bracket")
      , ("|", "'Pipe")
      , ("<", "'LessThan")
      , ("!=", "'Not_Equal")
      , ("=", "'Equal")
      , ("}", "'Right_Curly_Bracket")
      , (">", "'GreaterThan")
      , ("~", "'Tilde")
      , ("?", "'Question_Mark")
      , (">=", "'Greater_Than_Or_Equal_To")
      ]
    mkCharReplacement (replaceStr, searchStr) = T.unpack . replacer (T.pack searchStr) (T.pack replaceStr) . T.pack
    replacer =
      if forParsing
        then flip T.replace
        else T.replace
