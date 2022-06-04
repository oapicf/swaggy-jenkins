{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DeriveGeneric              #-}
{-# LANGUAGE NoImplicitPrelude          #-}
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

import ClassyPrelude.Yesod
import Data.Foldable (foldl)
import Data.Maybe (fromMaybe)
import Data.Aeson (Value, FromJSON(..), ToJSON(..), genericToJSON, genericParseJSON)
import Data.Aeson.Types (Options(..), defaultOptions)
import qualified Data.Char as Char
import qualified Data.Text as T
import qualified Data.Map as Map
import GHC.Generics (Generic)
import Data.Function ((&))


-- | 
data AllView = AllView
  { allViewUnderscoreclass :: Maybe Text -- ^ 
  , allViewName :: Maybe Text -- ^ 
  , allViewUrl :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON AllView where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "allView")
instance ToJSON AllView where
  toJSON = genericToJSON (removeFieldLabelPrefix False "allView")


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
  } deriving (Show, Eq, Generic)

instance FromJSON BranchImpl where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "branchImpl")
instance ToJSON BranchImpl where
  toJSON = genericToJSON (removeFieldLabelPrefix False "branchImpl")


-- | 
data BranchImpllinks = BranchImpllinks
  { branchImpllinksSelf :: Maybe Link -- ^ 
  , branchImpllinksActions :: Maybe Link -- ^ 
  , branchImpllinksRuns :: Maybe Link -- ^ 
  , branchImpllinksQueue :: Maybe Link -- ^ 
  , branchImpllinksUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON BranchImpllinks where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "branchImpllinks")
instance ToJSON BranchImpllinks where
  toJSON = genericToJSON (removeFieldLabelPrefix False "branchImpllinks")


-- | 
data BranchImplpermissions = BranchImplpermissions
  { branchImplpermissionsCreate :: Maybe Bool -- ^ 
  , branchImplpermissionsRead :: Maybe Bool -- ^ 
  , branchImplpermissionsStart :: Maybe Bool -- ^ 
  , branchImplpermissionsStop :: Maybe Bool -- ^ 
  , branchImplpermissionsUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON BranchImplpermissions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "branchImplpermissions")
instance ToJSON BranchImplpermissions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "branchImplpermissions")


-- | 
data CauseAction = CauseAction
  { causeActionUnderscoreclass :: Maybe Text -- ^ 
  , causeActionCauses :: Maybe [CauseUserIdCause] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON CauseAction where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "causeAction")
instance ToJSON CauseAction where
  toJSON = genericToJSON (removeFieldLabelPrefix False "causeAction")


-- | 
data CauseUserIdCause = CauseUserIdCause
  { causeUserIdCauseUnderscoreclass :: Maybe Text -- ^ 
  , causeUserIdCauseShortDescription :: Maybe Text -- ^ 
  , causeUserIdCauseUserId :: Maybe Text -- ^ 
  , causeUserIdCauseUserName :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON CauseUserIdCause where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "causeUserIdCause")
instance ToJSON CauseUserIdCause where
  toJSON = genericToJSON (removeFieldLabelPrefix False "causeUserIdCause")


-- | 
data ClassesByClass = ClassesByClass
  { classesByClassClasses :: Maybe [Text] -- ^ 
  , classesByClassUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ClassesByClass where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "classesByClass")
instance ToJSON ClassesByClass where
  toJSON = genericToJSON (removeFieldLabelPrefix False "classesByClass")


-- | 
data ClockDifference = ClockDifference
  { clockDifferenceUnderscoreclass :: Maybe Text -- ^ 
  , clockDifferenceDiff :: Maybe Int -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ClockDifference where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "clockDifference")
instance ToJSON ClockDifference where
  toJSON = genericToJSON (removeFieldLabelPrefix False "clockDifference")


-- | 
data ComputerSet = ComputerSet
  { computerSetUnderscoreclass :: Maybe Text -- ^ 
  , computerSetBusyExecutors :: Maybe Int -- ^ 
  , computerSetComputer :: Maybe [HudsonMasterComputer] -- ^ 
  , computerSetDisplayName :: Maybe Text -- ^ 
  , computerSetTotalExecutors :: Maybe Int -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ComputerSet where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "computerSet")
instance ToJSON ComputerSet where
  toJSON = genericToJSON (removeFieldLabelPrefix False "computerSet")


-- | 
data DefaultCrumbIssuer = DefaultCrumbIssuer
  { defaultCrumbIssuerUnderscoreclass :: Maybe Text -- ^ 
  , defaultCrumbIssuerCrumb :: Maybe Text -- ^ 
  , defaultCrumbIssuerCrumbRequestField :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON DefaultCrumbIssuer where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "defaultCrumbIssuer")
instance ToJSON DefaultCrumbIssuer where
  toJSON = genericToJSON (removeFieldLabelPrefix False "defaultCrumbIssuer")


-- | 
data DiskSpaceMonitorDescriptorDiskSpace = DiskSpaceMonitorDescriptorDiskSpace
  { diskSpaceMonitorDescriptorDiskSpaceUnderscoreclass :: Maybe Text -- ^ 
  , diskSpaceMonitorDescriptorDiskSpaceTimestamp :: Maybe Int -- ^ 
  , diskSpaceMonitorDescriptorDiskSpacePath :: Maybe Text -- ^ 
  , diskSpaceMonitorDescriptorDiskSpaceSize :: Maybe Int -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON DiskSpaceMonitorDescriptorDiskSpace where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "diskSpaceMonitorDescriptorDiskSpace")
instance ToJSON DiskSpaceMonitorDescriptorDiskSpace where
  toJSON = genericToJSON (removeFieldLabelPrefix False "diskSpaceMonitorDescriptorDiskSpace")


-- | 
data EmptyChangeLogSet = EmptyChangeLogSet
  { emptyChangeLogSetUnderscoreclass :: Maybe Text -- ^ 
  , emptyChangeLogSetKind :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON EmptyChangeLogSet where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "emptyChangeLogSet")
instance ToJSON EmptyChangeLogSet where
  toJSON = genericToJSON (removeFieldLabelPrefix False "emptyChangeLogSet")


-- | 
data ExtensionClassContainerImpl1 = ExtensionClassContainerImpl1
  { extensionClassContainerImpl1Underscoreclass :: Maybe Text -- ^ 
  , extensionClassContainerImpl1Underscorelinks :: Maybe ExtensionClassContainerImpl1links -- ^ 
  , extensionClassContainerImpl1Map :: Maybe ExtensionClassContainerImpl1map -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ExtensionClassContainerImpl1 where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "extensionClassContainerImpl1")
instance ToJSON ExtensionClassContainerImpl1 where
  toJSON = genericToJSON (removeFieldLabelPrefix False "extensionClassContainerImpl1")


-- | 
data ExtensionClassContainerImpl1links = ExtensionClassContainerImpl1links
  { extensionClassContainerImpl1linksSelf :: Maybe Link -- ^ 
  , extensionClassContainerImpl1linksUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ExtensionClassContainerImpl1links where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "extensionClassContainerImpl1links")
instance ToJSON ExtensionClassContainerImpl1links where
  toJSON = genericToJSON (removeFieldLabelPrefix False "extensionClassContainerImpl1links")


-- | 
data ExtensionClassContainerImpl1map = ExtensionClassContainerImpl1map
  { extensionClassContainerImpl1mapIoPeriodjenkinsPeriodblueoceanPeriodservicePeriodembeddedPeriodrestPeriodPipelineImpl :: Maybe ExtensionClassImpl -- ^ 
  , extensionClassContainerImpl1mapIoPeriodjenkinsPeriodblueoceanPeriodservicePeriodembeddedPeriodrestPeriodMultiBranchPipelineImpl :: Maybe ExtensionClassImpl -- ^ 
  , extensionClassContainerImpl1mapUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ExtensionClassContainerImpl1map where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "extensionClassContainerImpl1map")
instance ToJSON ExtensionClassContainerImpl1map where
  toJSON = genericToJSON (removeFieldLabelPrefix False "extensionClassContainerImpl1map")


-- | 
data ExtensionClassImpl = ExtensionClassImpl
  { extensionClassImplUnderscoreclass :: Maybe Text -- ^ 
  , extensionClassImplUnderscorelinks :: Maybe ExtensionClassImpllinks -- ^ 
  , extensionClassImplClasses :: Maybe [Text] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ExtensionClassImpl where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "extensionClassImpl")
instance ToJSON ExtensionClassImpl where
  toJSON = genericToJSON (removeFieldLabelPrefix False "extensionClassImpl")


-- | 
data ExtensionClassImpllinks = ExtensionClassImpllinks
  { extensionClassImpllinksSelf :: Maybe Link -- ^ 
  , extensionClassImpllinksUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ExtensionClassImpllinks where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "extensionClassImpllinks")
instance ToJSON ExtensionClassImpllinks where
  toJSON = genericToJSON (removeFieldLabelPrefix False "extensionClassImpllinks")


-- | 
data FavoriteImpl = FavoriteImpl
  { favoriteImplUnderscoreclass :: Maybe Text -- ^ 
  , favoriteImplUnderscorelinks :: Maybe FavoriteImpllinks -- ^ 
  , favoriteImplItem :: Maybe PipelineImpl -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON FavoriteImpl where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "favoriteImpl")
instance ToJSON FavoriteImpl where
  toJSON = genericToJSON (removeFieldLabelPrefix False "favoriteImpl")


-- | 
data FavoriteImpllinks = FavoriteImpllinks
  { favoriteImpllinksSelf :: Maybe Link -- ^ 
  , favoriteImpllinksUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON FavoriteImpllinks where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "favoriteImpllinks")
instance ToJSON FavoriteImpllinks where
  toJSON = genericToJSON (removeFieldLabelPrefix False "favoriteImpllinks")


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
  } deriving (Show, Eq, Generic)

instance FromJSON FreeStyleBuild where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "freeStyleBuild")
instance ToJSON FreeStyleBuild where
  toJSON = genericToJSON (removeFieldLabelPrefix False "freeStyleBuild")


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
  } deriving (Show, Eq, Generic)

instance FromJSON FreeStyleProject where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "freeStyleProject")
instance ToJSON FreeStyleProject where
  toJSON = genericToJSON (removeFieldLabelPrefix False "freeStyleProject")


-- | 
data FreeStyleProjectactions = FreeStyleProjectactions
  { freeStyleProjectactionsUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON FreeStyleProjectactions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "freeStyleProjectactions")
instance ToJSON FreeStyleProjectactions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "freeStyleProjectactions")


-- | 
data FreeStyleProjecthealthReport = FreeStyleProjecthealthReport
  { freeStyleProjecthealthReportDescription :: Maybe Text -- ^ 
  , freeStyleProjecthealthReportIconClassName :: Maybe Text -- ^ 
  , freeStyleProjecthealthReportIconUrl :: Maybe Text -- ^ 
  , freeStyleProjecthealthReportScore :: Maybe Int -- ^ 
  , freeStyleProjecthealthReportUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON FreeStyleProjecthealthReport where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "freeStyleProjecthealthReport")
instance ToJSON FreeStyleProjecthealthReport where
  toJSON = genericToJSON (removeFieldLabelPrefix False "freeStyleProjecthealthReport")


-- | 
data GenericResource = GenericResource
  { genericResourceUnderscoreclass :: Maybe Text -- ^ 
  , genericResourceDisplayName :: Maybe Text -- ^ 
  , genericResourceDurationInMillis :: Maybe Int -- ^ 
  , genericResourceId :: Maybe Text -- ^ 
  , genericResourceResult :: Maybe Text -- ^ 
  , genericResourceStartTime :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON GenericResource where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "genericResource")
instance ToJSON GenericResource where
  toJSON = genericToJSON (removeFieldLabelPrefix False "genericResource")


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
  } deriving (Show, Eq, Generic)

instance FromJSON GithubContent where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "githubContent")
instance ToJSON GithubContent where
  toJSON = genericToJSON (removeFieldLabelPrefix False "githubContent")


-- | 
data GithubFile = GithubFile
  { githubFileContent :: Maybe GithubContent -- ^ 
  , githubFileUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON GithubFile where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "githubFile")
instance ToJSON GithubFile where
  toJSON = genericToJSON (removeFieldLabelPrefix False "githubFile")


-- | 
data GithubOrganization = GithubOrganization
  { githubOrganizationUnderscoreclass :: Maybe Text -- ^ 
  , githubOrganizationUnderscorelinks :: Maybe GithubOrganizationlinks -- ^ 
  , githubOrganizationJenkinsOrganizationPipeline :: Maybe Bool -- ^ 
  , githubOrganizationName :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON GithubOrganization where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "githubOrganization")
instance ToJSON GithubOrganization where
  toJSON = genericToJSON (removeFieldLabelPrefix False "githubOrganization")


-- | 
data GithubOrganizationlinks = GithubOrganizationlinks
  { githubOrganizationlinksRepositories :: Maybe Link -- ^ 
  , githubOrganizationlinksSelf :: Maybe Link -- ^ 
  , githubOrganizationlinksUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON GithubOrganizationlinks where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "githubOrganizationlinks")
instance ToJSON GithubOrganizationlinks where
  toJSON = genericToJSON (removeFieldLabelPrefix False "githubOrganizationlinks")


-- | 
data GithubRepositories = GithubRepositories
  { githubRepositoriesUnderscoreclass :: Maybe Text -- ^ 
  , githubRepositoriesUnderscorelinks :: Maybe GithubRepositorieslinks -- ^ 
  , githubRepositoriesItems :: Maybe [GithubRepository] -- ^ 
  , githubRepositoriesLastPage :: Maybe Int -- ^ 
  , githubRepositoriesNextPage :: Maybe Int -- ^ 
  , githubRepositoriesPageSize :: Maybe Int -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON GithubRepositories where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "githubRepositories")
instance ToJSON GithubRepositories where
  toJSON = genericToJSON (removeFieldLabelPrefix False "githubRepositories")


-- | 
data GithubRepositorieslinks = GithubRepositorieslinks
  { githubRepositorieslinksSelf :: Maybe Link -- ^ 
  , githubRepositorieslinksUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON GithubRepositorieslinks where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "githubRepositorieslinks")
instance ToJSON GithubRepositorieslinks where
  toJSON = genericToJSON (removeFieldLabelPrefix False "githubRepositorieslinks")


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
  } deriving (Show, Eq, Generic)

instance FromJSON GithubRepository where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "githubRepository")
instance ToJSON GithubRepository where
  toJSON = genericToJSON (removeFieldLabelPrefix False "githubRepository")


-- | 
data GithubRepositorylinks = GithubRepositorylinks
  { githubRepositorylinksSelf :: Maybe Link -- ^ 
  , githubRepositorylinksUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON GithubRepositorylinks where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "githubRepositorylinks")
instance ToJSON GithubRepositorylinks where
  toJSON = genericToJSON (removeFieldLabelPrefix False "githubRepositorylinks")


-- | 
data GithubRepositorypermissions = GithubRepositorypermissions
  { githubRepositorypermissionsAdmin :: Maybe Bool -- ^ 
  , githubRepositorypermissionsPush :: Maybe Bool -- ^ 
  , githubRepositorypermissionsPull :: Maybe Bool -- ^ 
  , githubRepositorypermissionsUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON GithubRepositorypermissions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "githubRepositorypermissions")
instance ToJSON GithubRepositorypermissions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "githubRepositorypermissions")


-- | 
data GithubRespositoryContainer = GithubRespositoryContainer
  { githubRespositoryContainerUnderscoreclass :: Maybe Text -- ^ 
  , githubRespositoryContainerUnderscorelinks :: Maybe GithubRespositoryContainerlinks -- ^ 
  , githubRespositoryContainerRepositories :: Maybe GithubRepositories -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON GithubRespositoryContainer where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "githubRespositoryContainer")
instance ToJSON GithubRespositoryContainer where
  toJSON = genericToJSON (removeFieldLabelPrefix False "githubRespositoryContainer")


-- | 
data GithubRespositoryContainerlinks = GithubRespositoryContainerlinks
  { githubRespositoryContainerlinksSelf :: Maybe Link -- ^ 
  , githubRespositoryContainerlinksUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON GithubRespositoryContainerlinks where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "githubRespositoryContainerlinks")
instance ToJSON GithubRespositoryContainerlinks where
  toJSON = genericToJSON (removeFieldLabelPrefix False "githubRespositoryContainerlinks")


-- | 
data GithubScm = GithubScm
  { githubScmUnderscoreclass :: Maybe Text -- ^ 
  , githubScmUnderscorelinks :: Maybe GithubScmlinks -- ^ 
  , githubScmCredentialId :: Maybe Text -- ^ 
  , githubScmId :: Maybe Text -- ^ 
  , githubScmUri :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON GithubScm where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "githubScm")
instance ToJSON GithubScm where
  toJSON = genericToJSON (removeFieldLabelPrefix False "githubScm")


-- | 
data GithubScmlinks = GithubScmlinks
  { githubScmlinksSelf :: Maybe Link -- ^ 
  , githubScmlinksUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON GithubScmlinks where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "githubScmlinks")
instance ToJSON GithubScmlinks where
  toJSON = genericToJSON (removeFieldLabelPrefix False "githubScmlinks")


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
  } deriving (Show, Eq, Generic)

instance FromJSON Hudson where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "hudson")
instance ToJSON Hudson where
  toJSON = genericToJSON (removeFieldLabelPrefix False "hudson")


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
  } deriving (Show, Eq, Generic)

instance FromJSON HudsonMasterComputer where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "hudsonMasterComputer")
instance ToJSON HudsonMasterComputer where
  toJSON = genericToJSON (removeFieldLabelPrefix False "hudsonMasterComputer")


-- | 
data HudsonMasterComputerexecutors = HudsonMasterComputerexecutors
  { hudsonMasterComputerexecutorsCurrentExecutable :: Maybe FreeStyleBuild -- ^ 
  , hudsonMasterComputerexecutorsIdle :: Maybe Bool -- ^ 
  , hudsonMasterComputerexecutorsLikelyStuck :: Maybe Bool -- ^ 
  , hudsonMasterComputerexecutorsNumber :: Maybe Int -- ^ 
  , hudsonMasterComputerexecutorsProgress :: Maybe Int -- ^ 
  , hudsonMasterComputerexecutorsUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON HudsonMasterComputerexecutors where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "hudsonMasterComputerexecutors")
instance ToJSON HudsonMasterComputerexecutors where
  toJSON = genericToJSON (removeFieldLabelPrefix False "hudsonMasterComputerexecutors")


-- | 
data HudsonMasterComputermonitorData = HudsonMasterComputermonitorData
  { hudsonMasterComputermonitorDataHudsonPeriodnodeUnderscoremonitorsPeriodSwapSpaceMonitor :: Maybe SwapSpaceMonitorMemoryUsage2 -- ^ 
  , hudsonMasterComputermonitorDataHudsonPeriodnodeUnderscoremonitorsPeriodTemporarySpaceMonitor :: Maybe DiskSpaceMonitorDescriptorDiskSpace -- ^ 
  , hudsonMasterComputermonitorDataHudsonPeriodnodeUnderscoremonitorsPeriodDiskSpaceMonitor :: Maybe DiskSpaceMonitorDescriptorDiskSpace -- ^ 
  , hudsonMasterComputermonitorDataHudsonPeriodnodeUnderscoremonitorsPeriodArchitectureMonitor :: Maybe Text -- ^ 
  , hudsonMasterComputermonitorDataHudsonPeriodnodeUnderscoremonitorsPeriodResponseTimeMonitor :: Maybe ResponseTimeMonitorData -- ^ 
  , hudsonMasterComputermonitorDataHudsonPeriodnodeUnderscoremonitorsPeriodClockMonitor :: Maybe ClockDifference -- ^ 
  , hudsonMasterComputermonitorDataUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON HudsonMasterComputermonitorData where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "hudsonMasterComputermonitorData")
instance ToJSON HudsonMasterComputermonitorData where
  toJSON = genericToJSON (removeFieldLabelPrefix False "hudsonMasterComputermonitorData")


-- | 
data HudsonassignedLabels = HudsonassignedLabels
  { hudsonassignedLabelsUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON HudsonassignedLabels where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "hudsonassignedLabels")
instance ToJSON HudsonassignedLabels where
  toJSON = genericToJSON (removeFieldLabelPrefix False "hudsonassignedLabels")


-- | 
data InputStepImpl = InputStepImpl
  { inputStepImplUnderscoreclass :: Maybe Text -- ^ 
  , inputStepImplUnderscorelinks :: Maybe InputStepImpllinks -- ^ 
  , inputStepImplId :: Maybe Text -- ^ 
  , inputStepImplMessage :: Maybe Text -- ^ 
  , inputStepImplOk :: Maybe Text -- ^ 
  , inputStepImplParameters :: Maybe [StringParameterDefinition] -- ^ 
  , inputStepImplSubmitter :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON InputStepImpl where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "inputStepImpl")
instance ToJSON InputStepImpl where
  toJSON = genericToJSON (removeFieldLabelPrefix False "inputStepImpl")


-- | 
data InputStepImpllinks = InputStepImpllinks
  { inputStepImpllinksSelf :: Maybe Link -- ^ 
  , inputStepImpllinksUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON InputStepImpllinks where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "inputStepImpllinks")
instance ToJSON InputStepImpllinks where
  toJSON = genericToJSON (removeFieldLabelPrefix False "inputStepImpllinks")


-- | 
data Label1 = Label1
  { label1Underscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Label1 where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "label1")
instance ToJSON Label1 where
  toJSON = genericToJSON (removeFieldLabelPrefix False "label1")


-- | 
data Link = Link
  { linkUnderscoreclass :: Maybe Text -- ^ 
  , linkHref :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Link where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "link")
instance ToJSON Link where
  toJSON = genericToJSON (removeFieldLabelPrefix False "link")


-- | 
data ListView = ListView
  { listViewUnderscoreclass :: Maybe Text -- ^ 
  , listViewDescription :: Maybe Text -- ^ 
  , listViewJobs :: Maybe [FreeStyleProject] -- ^ 
  , listViewName :: Maybe Text -- ^ 
  , listViewUrl :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ListView where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "listView")
instance ToJSON ListView where
  toJSON = genericToJSON (removeFieldLabelPrefix False "listView")


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
  } deriving (Show, Eq, Generic)

instance FromJSON MultibranchPipeline where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "multibranchPipeline")
instance ToJSON MultibranchPipeline where
  toJSON = genericToJSON (removeFieldLabelPrefix False "multibranchPipeline")


-- | 
data NullSCM = NullSCM
  { nullSCMUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON NullSCM where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "nullSCM")
instance ToJSON NullSCM where
  toJSON = genericToJSON (removeFieldLabelPrefix False "nullSCM")


-- | 
data Organisation = Organisation
  { organisationUnderscoreclass :: Maybe Text -- ^ 
  , organisationName :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Organisation where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "organisation")
instance ToJSON Organisation where
  toJSON = genericToJSON (removeFieldLabelPrefix False "organisation")


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
  } deriving (Show, Eq, Generic)

instance FromJSON Pipeline where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipeline")
instance ToJSON Pipeline where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipeline")


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
  } deriving (Show, Eq, Generic)

instance FromJSON PipelineActivity where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipelineActivity")
instance ToJSON PipelineActivity where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipelineActivity")


-- | 
data PipelineActivityartifacts = PipelineActivityartifacts
  { pipelineActivityartifactsName :: Maybe Text -- ^ 
  , pipelineActivityartifactsSize :: Maybe Int -- ^ 
  , pipelineActivityartifactsUrl :: Maybe Text -- ^ 
  , pipelineActivityartifactsUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON PipelineActivityartifacts where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipelineActivityartifacts")
instance ToJSON PipelineActivityartifacts where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipelineActivityartifacts")


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
  } deriving (Show, Eq, Generic)

instance FromJSON PipelineBranchesitem where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipelineBranchesitem")
instance ToJSON PipelineBranchesitem where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipelineBranchesitem")


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
  } deriving (Show, Eq, Generic)

instance FromJSON PipelineBranchesitemlatestRun where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipelineBranchesitemlatestRun")
instance ToJSON PipelineBranchesitemlatestRun where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipelineBranchesitemlatestRun")


-- | 
data PipelineBranchesitempullRequest = PipelineBranchesitempullRequest
  { pipelineBranchesitempullRequestUnderscorelinks :: Maybe PipelineBranchesitempullRequestlinks -- ^ 
  , pipelineBranchesitempullRequestAuthor :: Maybe Text -- ^ 
  , pipelineBranchesitempullRequestId :: Maybe Text -- ^ 
  , pipelineBranchesitempullRequestTitle :: Maybe Text -- ^ 
  , pipelineBranchesitempullRequestUrl :: Maybe Text -- ^ 
  , pipelineBranchesitempullRequestUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON PipelineBranchesitempullRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipelineBranchesitempullRequest")
instance ToJSON PipelineBranchesitempullRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipelineBranchesitempullRequest")


-- | 
data PipelineBranchesitempullRequestlinks = PipelineBranchesitempullRequestlinks
  { pipelineBranchesitempullRequestlinksSelf :: Maybe Text -- ^ 
  , pipelineBranchesitempullRequestlinksUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON PipelineBranchesitempullRequestlinks where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipelineBranchesitempullRequestlinks")
instance ToJSON PipelineBranchesitempullRequestlinks where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipelineBranchesitempullRequestlinks")


-- | 
data PipelineFolderImpl = PipelineFolderImpl
  { pipelineFolderImplUnderscoreclass :: Maybe Text -- ^ 
  , pipelineFolderImplDisplayName :: Maybe Text -- ^ 
  , pipelineFolderImplFullName :: Maybe Text -- ^ 
  , pipelineFolderImplName :: Maybe Text -- ^ 
  , pipelineFolderImplOrganization :: Maybe Text -- ^ 
  , pipelineFolderImplNumberOfFolders :: Maybe Int -- ^ 
  , pipelineFolderImplNumberOfPipelines :: Maybe Int -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON PipelineFolderImpl where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipelineFolderImpl")
instance ToJSON PipelineFolderImpl where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipelineFolderImpl")


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
  } deriving (Show, Eq, Generic)

instance FromJSON PipelineImpl where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipelineImpl")
instance ToJSON PipelineImpl where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipelineImpl")


-- | 
data PipelineImpllinks = PipelineImpllinks
  { pipelineImpllinksRuns :: Maybe Link -- ^ 
  , pipelineImpllinksSelf :: Maybe Link -- ^ 
  , pipelineImpllinksQueue :: Maybe Link -- ^ 
  , pipelineImpllinksActions :: Maybe Link -- ^ 
  , pipelineImpllinksUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON PipelineImpllinks where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipelineImpllinks")
instance ToJSON PipelineImpllinks where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipelineImpllinks")


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
  } deriving (Show, Eq, Generic)

instance FromJSON PipelineRun where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipelineRun")
instance ToJSON PipelineRun where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipelineRun")


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
  } deriving (Show, Eq, Generic)

instance FromJSON PipelineRunImpl where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipelineRunImpl")
instance ToJSON PipelineRunImpl where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipelineRunImpl")


-- | 
data PipelineRunImpllinks = PipelineRunImpllinks
  { pipelineRunImpllinksNodes :: Maybe Link -- ^ 
  , pipelineRunImpllinksLog :: Maybe Link -- ^ 
  , pipelineRunImpllinksSelf :: Maybe Link -- ^ 
  , pipelineRunImpllinksActions :: Maybe Link -- ^ 
  , pipelineRunImpllinksSteps :: Maybe Link -- ^ 
  , pipelineRunImpllinksUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON PipelineRunImpllinks where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipelineRunImpllinks")
instance ToJSON PipelineRunImpllinks where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipelineRunImpllinks")


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
  } deriving (Show, Eq, Generic)

instance FromJSON PipelineRunNode where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipelineRunNode")
instance ToJSON PipelineRunNode where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipelineRunNode")


-- | 
data PipelineRunNodeedges = PipelineRunNodeedges
  { pipelineRunNodeedgesId :: Maybe Text -- ^ 
  , pipelineRunNodeedgesUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON PipelineRunNodeedges where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipelineRunNodeedges")
instance ToJSON PipelineRunNodeedges where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipelineRunNodeedges")


-- | 
data PipelineRunartifacts = PipelineRunartifacts
  { pipelineRunartifactsName :: Maybe Text -- ^ 
  , pipelineRunartifactsSize :: Maybe Int -- ^ 
  , pipelineRunartifactsUrl :: Maybe Text -- ^ 
  , pipelineRunartifactsUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON PipelineRunartifacts where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipelineRunartifacts")
instance ToJSON PipelineRunartifacts where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipelineRunartifacts")


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
  } deriving (Show, Eq, Generic)

instance FromJSON PipelineStepImpl where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipelineStepImpl")
instance ToJSON PipelineStepImpl where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipelineStepImpl")


-- | 
data PipelineStepImpllinks = PipelineStepImpllinks
  { pipelineStepImpllinksSelf :: Maybe Link -- ^ 
  , pipelineStepImpllinksActions :: Maybe Link -- ^ 
  , pipelineStepImpllinksUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON PipelineStepImpllinks where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipelineStepImpllinks")
instance ToJSON PipelineStepImpllinks where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipelineStepImpllinks")


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
  } deriving (Show, Eq, Generic)

instance FromJSON PipelinelatestRun where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipelinelatestRun")
instance ToJSON PipelinelatestRun where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipelinelatestRun")


-- | 
data PipelinelatestRunartifacts = PipelinelatestRunartifacts
  { pipelinelatestRunartifactsName :: Maybe Text -- ^ 
  , pipelinelatestRunartifactsSize :: Maybe Int -- ^ 
  , pipelinelatestRunartifactsUrl :: Maybe Text -- ^ 
  , pipelinelatestRunartifactsUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON PipelinelatestRunartifacts where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "pipelinelatestRunartifacts")
instance ToJSON PipelinelatestRunartifacts where
  toJSON = genericToJSON (removeFieldLabelPrefix False "pipelinelatestRunartifacts")


-- | 
data Queue = Queue
  { queueUnderscoreclass :: Maybe Text -- ^ 
  , queueItems :: Maybe [QueueBlockedItem] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Queue where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "queue")
instance ToJSON Queue where
  toJSON = genericToJSON (removeFieldLabelPrefix False "queue")


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
  } deriving (Show, Eq, Generic)

instance FromJSON QueueBlockedItem where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "queueBlockedItem")
instance ToJSON QueueBlockedItem where
  toJSON = genericToJSON (removeFieldLabelPrefix False "queueBlockedItem")


-- | 
data QueueItemImpl = QueueItemImpl
  { queueItemImplUnderscoreclass :: Maybe Text -- ^ 
  , queueItemImplExpectedBuildNumber :: Maybe Int -- ^ 
  , queueItemImplId :: Maybe Text -- ^ 
  , queueItemImplPipeline :: Maybe Text -- ^ 
  , queueItemImplQueuedTime :: Maybe Int -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON QueueItemImpl where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "queueItemImpl")
instance ToJSON QueueItemImpl where
  toJSON = genericToJSON (removeFieldLabelPrefix False "queueItemImpl")


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
  } deriving (Show, Eq, Generic)

instance FromJSON QueueLeftItem where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "queueLeftItem")
instance ToJSON QueueLeftItem where
  toJSON = genericToJSON (removeFieldLabelPrefix False "queueLeftItem")


-- | 
data ResponseTimeMonitorData = ResponseTimeMonitorData
  { responseTimeMonitorDataUnderscoreclass :: Maybe Text -- ^ 
  , responseTimeMonitorDataTimestamp :: Maybe Int -- ^ 
  , responseTimeMonitorDataAverage :: Maybe Int -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON ResponseTimeMonitorData where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "responseTimeMonitorData")
instance ToJSON ResponseTimeMonitorData where
  toJSON = genericToJSON (removeFieldLabelPrefix False "responseTimeMonitorData")


-- | 
data StringParameterDefinition = StringParameterDefinition
  { stringParameterDefinitionUnderscoreclass :: Maybe Text -- ^ 
  , stringParameterDefinitionDefaultParameterValue :: Maybe StringParameterValue -- ^ 
  , stringParameterDefinitionDescription :: Maybe Text -- ^ 
  , stringParameterDefinitionName :: Maybe Text -- ^ 
  , stringParameterDefinitionType :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON StringParameterDefinition where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "stringParameterDefinition")
instance ToJSON StringParameterDefinition where
  toJSON = genericToJSON (removeFieldLabelPrefix False "stringParameterDefinition")


-- | 
data StringParameterValue = StringParameterValue
  { stringParameterValueUnderscoreclass :: Maybe Text -- ^ 
  , stringParameterValueName :: Maybe Text -- ^ 
  , stringParameterValueValue :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON StringParameterValue where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "stringParameterValue")
instance ToJSON StringParameterValue where
  toJSON = genericToJSON (removeFieldLabelPrefix False "stringParameterValue")


-- | 
data SwapSpaceMonitorMemoryUsage2 = SwapSpaceMonitorMemoryUsage2
  { swapSpaceMonitorMemoryUsage2Underscoreclass :: Maybe Text -- ^ 
  , swapSpaceMonitorMemoryUsage2AvailablePhysicalMemory :: Maybe Int -- ^ 
  , swapSpaceMonitorMemoryUsage2AvailableSwapSpace :: Maybe Int -- ^ 
  , swapSpaceMonitorMemoryUsage2TotalPhysicalMemory :: Maybe Int -- ^ 
  , swapSpaceMonitorMemoryUsage2TotalSwapSpace :: Maybe Int -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON SwapSpaceMonitorMemoryUsage2 where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "swapSpaceMonitorMemoryUsage2")
instance ToJSON SwapSpaceMonitorMemoryUsage2 where
  toJSON = genericToJSON (removeFieldLabelPrefix False "swapSpaceMonitorMemoryUsage2")


-- | 
data UnlabeledLoadStatistics = UnlabeledLoadStatistics
  { unlabeledLoadStatisticsUnderscoreclass :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON UnlabeledLoadStatistics where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "unlabeledLoadStatistics")
instance ToJSON UnlabeledLoadStatistics where
  toJSON = genericToJSON (removeFieldLabelPrefix False "unlabeledLoadStatistics")


-- | 
data User = User
  { userUnderscoreclass :: Maybe Text -- ^ 
  , userId :: Maybe Text -- ^ 
  , userFullName :: Maybe Text -- ^ 
  , userEmail :: Maybe Text -- ^ 
  , userName :: Maybe Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON User where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "user")
instance ToJSON User where
  toJSON = genericToJSON (removeFieldLabelPrefix False "user")


uncapitalize :: String -> String
uncapitalize (c : cs) = Char.toLower c : cs
uncapitalize [] = []

-- | Remove a field label prefix during JSON parsing.
--   Also perform any replacements for special characters.
--   The @forParsing@ parameter is to distinguish between the cases in which we're using this
--   to power a @FromJSON@ or a @ToJSON@ instance. In the first case we're parsing, and we want
--   to replace special characters with their quoted equivalents (because we cannot have special
--   chars in identifier names), while we want to do vice versa when sending data instead.
removeFieldLabelPrefix :: Bool -> String -> Options
removeFieldLabelPrefix forParsing prefix =
  defaultOptions
    { omitNothingFields  = True
    , fieldLabelModifier = uncapitalize . fromMaybe (error ("did not find prefix " ++ prefix)) . stripPrefix prefix . replaceSpecialChars
    }
  where
    replaceSpecialChars field = foldl (&) field (map mkCharReplacement specialChars)
    specialChars =
      [ ("$", "'Dollar")
      , ("^", "'Caret")
      , ("|", "'Pipe")
      , ("=", "'Equal")
      , ("*", "'Star")
      , ("-", "'Dash")
      , ("&", "'Ampersand")
      , ("%", "'Percent")
      , ("#", "'Hash")
      , ("@", "'At")
      , ("!", "'Exclamation")
      , ("+", "'Plus")
      , (":", "'Colon")
      , (";", "'Semicolon")
      , (">", "'GreaterThan")
      , ("<", "'LessThan")
      , (".", "'Period")
      , ("_", "'Underscore")
      , ("?", "'Question_Mark")
      , (",", "'Comma")
      , ("'", "'Quote")
      , ("/", "'Slash")
      , ("(", "'Left_Parenthesis")
      , (")", "'Right_Parenthesis")
      , ("{", "'Left_Curly_Bracket")
      , ("}", "'Right_Curly_Bracket")
      , ("[", "'Left_Square_Bracket")
      , ("]", "'Right_Square_Bracket")
      , ("~", "'Tilde")
      , ("`", "'Backtick")
      , ("<=", "'Less_Than_Or_Equal_To")
      , (">=", "'Greater_Than_Or_Equal_To")
      , ("!=", "'Not_Equal")
      , ("~=", "'Tilde_Equal")
      , ("\\", "'Back_Slash")
      , ("\"", "'Double_Quote")
      ]
    mkCharReplacement (replaceStr, searchStr) = T.unpack . replacer (T.pack searchStr) (T.pack replaceStr) . T.pack
    replacer =
      if forParsing
        then flip T.replace
        else T.replace
