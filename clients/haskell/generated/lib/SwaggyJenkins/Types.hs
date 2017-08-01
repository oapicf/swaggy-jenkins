{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# OPTIONS_GHC -fno-warn-unused-binds -fno-warn-unused-imports #-}

module SwaggyJenkins.Types (
  GetClassesByClass (..),
  GetMultibranchPipeline (..),
  GetOrganisations (..),
  GetPipelineBranches (..),
  GetPipelineBranchesitem (..),
  GetPipelineBranchesitem_latestRun (..),
  GetPipelineBranchesitem_pullRequest (..),
  GetPipelineBranchesitem_pullRequest__links (..),
  GetPipelines (..),
  GetUsers (..),
  HudsonmodelAllView (..),
  HudsonmodelCauseAction (..),
  HudsonmodelCauseUserIdCause (..),
  HudsonmodelComputerSet (..),
  HudsonmodelFreeStyleBuild (..),
  HudsonmodelFreeStyleProject (..),
  HudsonmodelFreeStyleProjectactions (..),
  HudsonmodelFreeStyleProjecthealthReport (..),
  HudsonmodelHudson (..),
  HudsonmodelHudsonMasterComputer (..),
  HudsonmodelHudsonMasterComputer_monitorData (..),
  HudsonmodelHudsonMasterComputerexecutors (..),
  HudsonmodelHudsonassignedLabels (..),
  HudsonmodelLabel1 (..),
  HudsonmodelListView (..),
  HudsonmodelQueue (..),
  HudsonmodelQueueBlockedItem (..),
  HudsonmodelQueueLeftItem (..),
  HudsonmodelStringParameterDefinition (..),
  HudsonmodelStringParameterValue (..),
  Hudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace (..),
  Hudsonnode_monitorsResponseTimeMonitorData (..),
  Hudsonnode_monitorsSwapSpaceMonitorMemoryUsage2 (..),
  HudsonscmEmptyChangeLogSet (..),
  HudsonscmNullSCM (..),
  HudsonsecuritycsrfDefaultCrumbIssuer (..),
  HudsonutilClockDifference (..),
  IojenkinsblueoceanresthalLink (..),
  IojenkinsblueoceanrestimplpipelineBranchImpl (..),
  IojenkinsblueoceanrestimplpipelineBranchImpl_permissions (..),
  IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1 (..),
  IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1__links (..),
  IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map (..),
  IojenkinsblueoceanserviceembeddedrestExtensionClassImpl (..),
  IojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links (..),
  IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl (..),
  IojenkinsblueoceanserviceembeddedrestPipelineImpl (..),
  JenkinsmodelUnlabeledLoadStatistics (..),
  SwaggyjenkinsOrganisation (..),
  SwaggyjenkinsPipeline (..),
  SwaggyjenkinsPipeline_latestRun (..),
  SwaggyjenkinsPipeline_latestRunartifacts (..),
  SwaggyjenkinsUser (..),
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
data GetClassesByClass = GetClassesByClass
  { getClassesByClassClasses :: [Text] -- ^ 
  , getClassesByClassClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON GetClassesByClass where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "getClassesByClass")
instance ToJSON GetClassesByClass where
  toJSON = genericToJSON (removeFieldLabelPrefix False "getClassesByClass")

-- | 
data GetMultibranchPipeline = GetMultibranchPipeline
  { getMultibranchPipelineDisplayName :: Text -- ^ 
  , getMultibranchPipelineEstimatedDurationInMillis :: Int -- ^ 
  , getMultibranchPipelineLatestRun :: Text -- ^ 
  , getMultibranchPipelineName :: Text -- ^ 
  , getMultibranchPipelineOrganization :: Text -- ^ 
  , getMultibranchPipelineWeatherScore :: Int -- ^ 
  , getMultibranchPipelineBranchNames :: [Text] -- ^ 
  , getMultibranchPipelineNumberOfFailingBranches :: Int -- ^ 
  , getMultibranchPipelineNumberOfFailingPullRequests :: Int -- ^ 
  , getMultibranchPipelineNumberOfSuccessfulBranches :: Int -- ^ 
  , getMultibranchPipelineNumberOfSuccessfulPullRequests :: Int -- ^ 
  , getMultibranchPipelineTotalNumberOfBranches :: Int -- ^ 
  , getMultibranchPipelineTotalNumberOfPullRequests :: Int -- ^ 
  , getMultibranchPipelineClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON GetMultibranchPipeline where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "getMultibranchPipeline")
instance ToJSON GetMultibranchPipeline where
  toJSON = genericToJSON (removeFieldLabelPrefix False "getMultibranchPipeline")

-- | 
newtype GetOrganisations = GetOrganisations { unGetOrganisations :: SwaggyjenkinsOrganisation }
  deriving (Show, Eq, FromJSON, ToJSON, Generic)

-- | 
newtype GetPipelineBranches = GetPipelineBranches { unGetPipelineBranches :: GetPipelineBranchesitem }
  deriving (Show, Eq, FromJSON, ToJSON, Generic)

-- | 
data GetPipelineBranchesitem = GetPipelineBranchesitem
  { getPipelineBranchesitemDisplayName :: Text -- ^ 
  , getPipelineBranchesitemEstimatedDurationInMillis :: Int -- ^ 
  , getPipelineBranchesitemName :: Text -- ^ 
  , getPipelineBranchesitemWeatherScore :: Int -- ^ 
  , getPipelineBranchesitemLatestRun :: GetPipelineBranchesitem_latestRun -- ^ 
  , getPipelineBranchesitemOrganization :: Text -- ^ 
  , getPipelineBranchesitemPullRequest :: GetPipelineBranchesitem_pullRequest -- ^ 
  , getPipelineBranchesitemTotalNumberOfPullRequests :: Int -- ^ 
  , getPipelineBranchesitemClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON GetPipelineBranchesitem where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "getPipelineBranchesitem")
instance ToJSON GetPipelineBranchesitem where
  toJSON = genericToJSON (removeFieldLabelPrefix False "getPipelineBranchesitem")

-- | 
data GetPipelineBranchesitem_latestRun = GetPipelineBranchesitem_latestRun
  { getPipelineBranchesitemLatestRunDurationInMillis :: Int -- ^ 
  , getPipelineBranchesitemLatestRunEstimatedDurationInMillis :: Int -- ^ 
  , getPipelineBranchesitemLatestRunEnQueueTime :: Text -- ^ 
  , getPipelineBranchesitemLatestRunEndTime :: Text -- ^ 
  , getPipelineBranchesitemLatestRunId :: Text -- ^ 
  , getPipelineBranchesitemLatestRunOrganization :: Text -- ^ 
  , getPipelineBranchesitemLatestRunPipeline :: Text -- ^ 
  , getPipelineBranchesitemLatestRunResult :: Text -- ^ 
  , getPipelineBranchesitemLatestRunRunSummary :: Text -- ^ 
  , getPipelineBranchesitemLatestRunStartTime :: Text -- ^ 
  , getPipelineBranchesitemLatestRunState :: Text -- ^ 
  , getPipelineBranchesitemLatestRunType :: Text -- ^ 
  , getPipelineBranchesitemLatestRunCommitId :: Text -- ^ 
  , getPipelineBranchesitemLatestRunClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON GetPipelineBranchesitem_latestRun where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "getPipelineBranchesitemLatestRun")
instance ToJSON GetPipelineBranchesitem_latestRun where
  toJSON = genericToJSON (removeFieldLabelPrefix False "getPipelineBranchesitemLatestRun")

-- | 
data GetPipelineBranchesitem_pullRequest = GetPipelineBranchesitem_pullRequest
  { getPipelineBranchesitemPullRequestLinks :: GetPipelineBranchesitem_pullRequest__links -- ^ 
  , getPipelineBranchesitemPullRequestAuthor :: Text -- ^ 
  , getPipelineBranchesitemPullRequestId :: Text -- ^ 
  , getPipelineBranchesitemPullRequestTitle :: Text -- ^ 
  , getPipelineBranchesitemPullRequestUrl :: Text -- ^ 
  , getPipelineBranchesitemPullRequestClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON GetPipelineBranchesitem_pullRequest where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "getPipelineBranchesitemPullRequest")
instance ToJSON GetPipelineBranchesitem_pullRequest where
  toJSON = genericToJSON (removeFieldLabelPrefix False "getPipelineBranchesitemPullRequest")

-- | 
data GetPipelineBranchesitem_pullRequest__links = GetPipelineBranchesitem_pullRequest__links
  { getPipelineBranchesitemPullRequestLinksSelf :: Text -- ^ 
  , getPipelineBranchesitemPullRequestLinksClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON GetPipelineBranchesitem_pullRequest__links where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "getPipelineBranchesitemPullRequestLinks")
instance ToJSON GetPipelineBranchesitem_pullRequest__links where
  toJSON = genericToJSON (removeFieldLabelPrefix False "getPipelineBranchesitemPullRequestLinks")

-- | 
newtype GetPipelines = GetPipelines { unGetPipelines :: SwaggyjenkinsPipeline }
  deriving (Show, Eq, FromJSON, ToJSON, Generic)

-- | 
newtype GetUsers = GetUsers { unGetUsers :: SwaggyjenkinsUser }
  deriving (Show, Eq, FromJSON, ToJSON, Generic)

-- | 
data HudsonmodelAllView = HudsonmodelAllView
  { hudsonmodelAllViewClass :: Text -- ^ 
  , hudsonmodelAllViewName :: Text -- ^ 
  , hudsonmodelAllViewUrl :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON HudsonmodelAllView where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "hudsonmodelAllView")
instance ToJSON HudsonmodelAllView where
  toJSON = genericToJSON (removeFieldLabelPrefix False "hudsonmodelAllView")

-- | 
data HudsonmodelCauseAction = HudsonmodelCauseAction
  { hudsonmodelCauseActionClass :: Text -- ^ 
  , hudsonmodelCauseActionCauses :: [HudsonmodelCauseUserIdCause] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON HudsonmodelCauseAction where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "hudsonmodelCauseAction")
instance ToJSON HudsonmodelCauseAction where
  toJSON = genericToJSON (removeFieldLabelPrefix False "hudsonmodelCauseAction")

-- | 
data HudsonmodelCauseUserIdCause = HudsonmodelCauseUserIdCause
  { hudsonmodelCauseUserIdCauseClass :: Text -- ^ 
  , hudsonmodelCauseUserIdCauseShortDescription :: Text -- ^ 
  , hudsonmodelCauseUserIdCauseUserId :: Text -- ^ 
  , hudsonmodelCauseUserIdCauseUserName :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON HudsonmodelCauseUserIdCause where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "hudsonmodelCauseUserIdCause")
instance ToJSON HudsonmodelCauseUserIdCause where
  toJSON = genericToJSON (removeFieldLabelPrefix False "hudsonmodelCauseUserIdCause")

-- | 
data HudsonmodelComputerSet = HudsonmodelComputerSet
  { hudsonmodelComputerSetClass :: Text -- ^ 
  , hudsonmodelComputerSetBusyExecutors :: Int -- ^ 
  , hudsonmodelComputerSetComputer :: [HudsonmodelHudsonMasterComputer] -- ^ 
  , hudsonmodelComputerSetDisplayName :: Text -- ^ 
  , hudsonmodelComputerSetTotalExecutors :: Int -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON HudsonmodelComputerSet where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "hudsonmodelComputerSet")
instance ToJSON HudsonmodelComputerSet where
  toJSON = genericToJSON (removeFieldLabelPrefix False "hudsonmodelComputerSet")

-- | 
data HudsonmodelFreeStyleBuild = HudsonmodelFreeStyleBuild
  { hudsonmodelFreeStyleBuildClass :: Text -- ^ 
  , hudsonmodelFreeStyleBuildNumber :: Int -- ^ 
  , hudsonmodelFreeStyleBuildUrl :: Text -- ^ 
  , hudsonmodelFreeStyleBuildActions :: [HudsonmodelCauseAction] -- ^ 
  , hudsonmodelFreeStyleBuildBuilding :: Bool -- ^ 
  , hudsonmodelFreeStyleBuildDescription :: Text -- ^ 
  , hudsonmodelFreeStyleBuildDisplayName :: Text -- ^ 
  , hudsonmodelFreeStyleBuildDuration :: Int -- ^ 
  , hudsonmodelFreeStyleBuildEstimatedDuration :: Int -- ^ 
  , hudsonmodelFreeStyleBuildExecutor :: Text -- ^ 
  , hudsonmodelFreeStyleBuildFullDisplayName :: Text -- ^ 
  , hudsonmodelFreeStyleBuildId :: Text -- ^ 
  , hudsonmodelFreeStyleBuildKeepLog :: Bool -- ^ 
  , hudsonmodelFreeStyleBuildQueueId :: Int -- ^ 
  , hudsonmodelFreeStyleBuildResult :: Text -- ^ 
  , hudsonmodelFreeStyleBuildTimestamp :: Int -- ^ 
  , hudsonmodelFreeStyleBuildBuiltOn :: Text -- ^ 
  , hudsonmodelFreeStyleBuildChangeSet :: HudsonscmEmptyChangeLogSet -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON HudsonmodelFreeStyleBuild where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "hudsonmodelFreeStyleBuild")
instance ToJSON HudsonmodelFreeStyleBuild where
  toJSON = genericToJSON (removeFieldLabelPrefix False "hudsonmodelFreeStyleBuild")

-- | 
data HudsonmodelFreeStyleProject = HudsonmodelFreeStyleProject
  { hudsonmodelFreeStyleProjectClass :: Text -- ^ 
  , hudsonmodelFreeStyleProjectName :: Text -- ^ 
  , hudsonmodelFreeStyleProjectUrl :: Text -- ^ 
  , hudsonmodelFreeStyleProjectColor :: Text -- ^ 
  , hudsonmodelFreeStyleProjectActions :: [HudsonmodelFreeStyleProjectactions] -- ^ 
  , hudsonmodelFreeStyleProjectDescription :: Text -- ^ 
  , hudsonmodelFreeStyleProjectDisplayName :: Text -- ^ 
  , hudsonmodelFreeStyleProjectDisplayNameOrNull :: Text -- ^ 
  , hudsonmodelFreeStyleProjectFullDisplayName :: Text -- ^ 
  , hudsonmodelFreeStyleProjectFullName :: Text -- ^ 
  , hudsonmodelFreeStyleProjectBuildable :: Bool -- ^ 
  , hudsonmodelFreeStyleProjectBuilds :: [HudsonmodelFreeStyleBuild] -- ^ 
  , hudsonmodelFreeStyleProjectFirstBuild :: HudsonmodelFreeStyleBuild -- ^ 
  , hudsonmodelFreeStyleProjectHealthReport :: [HudsonmodelFreeStyleProjecthealthReport] -- ^ 
  , hudsonmodelFreeStyleProjectInQueue :: Bool -- ^ 
  , hudsonmodelFreeStyleProjectKeepDependencies :: Bool -- ^ 
  , hudsonmodelFreeStyleProjectLastBuild :: HudsonmodelFreeStyleBuild -- ^ 
  , hudsonmodelFreeStyleProjectLastCompletedBuild :: HudsonmodelFreeStyleBuild -- ^ 
  , hudsonmodelFreeStyleProjectLastFailedBuild :: Text -- ^ 
  , hudsonmodelFreeStyleProjectLastStableBuild :: HudsonmodelFreeStyleBuild -- ^ 
  , hudsonmodelFreeStyleProjectLastSuccessfulBuild :: HudsonmodelFreeStyleBuild -- ^ 
  , hudsonmodelFreeStyleProjectLastUnstableBuild :: Text -- ^ 
  , hudsonmodelFreeStyleProjectLastUnsuccessfulBuild :: Text -- ^ 
  , hudsonmodelFreeStyleProjectNextBuildNumber :: Int -- ^ 
  , hudsonmodelFreeStyleProjectQueueItem :: Text -- ^ 
  , hudsonmodelFreeStyleProjectConcurrentBuild :: Bool -- ^ 
  , hudsonmodelFreeStyleProjectScm :: HudsonscmNullSCM -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON HudsonmodelFreeStyleProject where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "hudsonmodelFreeStyleProject")
instance ToJSON HudsonmodelFreeStyleProject where
  toJSON = genericToJSON (removeFieldLabelPrefix False "hudsonmodelFreeStyleProject")

-- | 
data HudsonmodelFreeStyleProjectactions = HudsonmodelFreeStyleProjectactions
  { hudsonmodelFreeStyleProjectactionsClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON HudsonmodelFreeStyleProjectactions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "hudsonmodelFreeStyleProjectactions")
instance ToJSON HudsonmodelFreeStyleProjectactions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "hudsonmodelFreeStyleProjectactions")

-- | 
data HudsonmodelFreeStyleProjecthealthReport = HudsonmodelFreeStyleProjecthealthReport
  { hudsonmodelFreeStyleProjecthealthReportDescription :: Text -- ^ 
  , hudsonmodelFreeStyleProjecthealthReportIconClassName :: Text -- ^ 
  , hudsonmodelFreeStyleProjecthealthReportIconUrl :: Text -- ^ 
  , hudsonmodelFreeStyleProjecthealthReportScore :: Int -- ^ 
  , hudsonmodelFreeStyleProjecthealthReportClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON HudsonmodelFreeStyleProjecthealthReport where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "hudsonmodelFreeStyleProjecthealthReport")
instance ToJSON HudsonmodelFreeStyleProjecthealthReport where
  toJSON = genericToJSON (removeFieldLabelPrefix False "hudsonmodelFreeStyleProjecthealthReport")

-- | 
data HudsonmodelHudson = HudsonmodelHudson
  { hudsonmodelHudsonClass :: Text -- ^ 
  , hudsonmodelHudsonAssignedLabels :: [HudsonmodelHudsonassignedLabels] -- ^ 
  , hudsonmodelHudsonMode :: Text -- ^ 
  , hudsonmodelHudsonNodeDescription :: Text -- ^ 
  , hudsonmodelHudsonNodeName :: Text -- ^ 
  , hudsonmodelHudsonNumExecutors :: Int -- ^ 
  , hudsonmodelHudsonDescription :: Text -- ^ 
  , hudsonmodelHudsonJobs :: [HudsonmodelFreeStyleProject] -- ^ 
  , hudsonmodelHudsonPrimaryView :: HudsonmodelAllView -- ^ 
  , hudsonmodelHudsonQuietingDown :: Bool -- ^ 
  , hudsonmodelHudsonSlaveAgentPort :: Int -- ^ 
  , hudsonmodelHudsonUnlabeledLoad :: JenkinsmodelUnlabeledLoadStatistics -- ^ 
  , hudsonmodelHudsonUseCrumbs :: Bool -- ^ 
  , hudsonmodelHudsonUseSecurity :: Bool -- ^ 
  , hudsonmodelHudsonViews :: [HudsonmodelAllView] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON HudsonmodelHudson where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "hudsonmodelHudson")
instance ToJSON HudsonmodelHudson where
  toJSON = genericToJSON (removeFieldLabelPrefix False "hudsonmodelHudson")

-- | 
data HudsonmodelHudsonMasterComputer = HudsonmodelHudsonMasterComputer
  { hudsonmodelHudsonMasterComputerClass :: Text -- ^ 
  , hudsonmodelHudsonMasterComputerDisplayName :: Text -- ^ 
  , hudsonmodelHudsonMasterComputerExecutors :: [HudsonmodelHudsonMasterComputerexecutors] -- ^ 
  , hudsonmodelHudsonMasterComputerIcon :: Text -- ^ 
  , hudsonmodelHudsonMasterComputerIconClassName :: Text -- ^ 
  , hudsonmodelHudsonMasterComputerIdle :: Bool -- ^ 
  , hudsonmodelHudsonMasterComputerJnlpAgent :: Bool -- ^ 
  , hudsonmodelHudsonMasterComputerLaunchSupported :: Bool -- ^ 
  , hudsonmodelHudsonMasterComputerLoadStatistics :: HudsonmodelLabel1 -- ^ 
  , hudsonmodelHudsonMasterComputerManualLaunchAllowed :: Bool -- ^ 
  , hudsonmodelHudsonMasterComputerMonitorData :: HudsonmodelHudsonMasterComputer_monitorData -- ^ 
  , hudsonmodelHudsonMasterComputerNumExecutors :: Int -- ^ 
  , hudsonmodelHudsonMasterComputerOffline :: Bool -- ^ 
  , hudsonmodelHudsonMasterComputerOfflineCause :: Text -- ^ 
  , hudsonmodelHudsonMasterComputerOfflineCauseReason :: Text -- ^ 
  , hudsonmodelHudsonMasterComputerTemporarilyOffline :: Bool -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON HudsonmodelHudsonMasterComputer where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "hudsonmodelHudsonMasterComputer")
instance ToJSON HudsonmodelHudsonMasterComputer where
  toJSON = genericToJSON (removeFieldLabelPrefix False "hudsonmodelHudsonMasterComputer")

-- | 
data HudsonmodelHudsonMasterComputer_monitorData = HudsonmodelHudsonMasterComputer_monitorData
  { hudsonmodelHudsonMasterComputerMonitorDataHudsonNodeMonitorsSwapSpaceMonitor :: Hudsonnode_monitorsSwapSpaceMonitorMemoryUsage2 -- ^ 
  , hudsonmodelHudsonMasterComputerMonitorDataHudsonNodeMonitorsTemporarySpaceMonitor :: Hudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace -- ^ 
  , hudsonmodelHudsonMasterComputerMonitorDataHudsonNodeMonitorsDiskSpaceMonitor :: Hudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace -- ^ 
  , hudsonmodelHudsonMasterComputerMonitorDataHudsonNodeMonitorsArchitectureMonitor :: Text -- ^ 
  , hudsonmodelHudsonMasterComputerMonitorDataHudsonNodeMonitorsResponseTimeMonitor :: Hudsonnode_monitorsResponseTimeMonitorData -- ^ 
  , hudsonmodelHudsonMasterComputerMonitorDataHudsonNodeMonitorsClockMonitor :: HudsonutilClockDifference -- ^ 
  , hudsonmodelHudsonMasterComputerMonitorDataClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON HudsonmodelHudsonMasterComputer_monitorData where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "hudsonmodelHudsonMasterComputerMonitorData")
instance ToJSON HudsonmodelHudsonMasterComputer_monitorData where
  toJSON = genericToJSON (removeFieldLabelPrefix False "hudsonmodelHudsonMasterComputerMonitorData")

-- | 
data HudsonmodelHudsonMasterComputerexecutors = HudsonmodelHudsonMasterComputerexecutors
  { hudsonmodelHudsonMasterComputerexecutorsCurrentExecutable :: HudsonmodelFreeStyleBuild -- ^ 
  , hudsonmodelHudsonMasterComputerexecutorsIdle :: Bool -- ^ 
  , hudsonmodelHudsonMasterComputerexecutorsLikelyStuck :: Bool -- ^ 
  , hudsonmodelHudsonMasterComputerexecutorsNumber :: Int -- ^ 
  , hudsonmodelHudsonMasterComputerexecutorsProgress :: Int -- ^ 
  , hudsonmodelHudsonMasterComputerexecutorsClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON HudsonmodelHudsonMasterComputerexecutors where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "hudsonmodelHudsonMasterComputerexecutors")
instance ToJSON HudsonmodelHudsonMasterComputerexecutors where
  toJSON = genericToJSON (removeFieldLabelPrefix False "hudsonmodelHudsonMasterComputerexecutors")

-- | 
data HudsonmodelHudsonassignedLabels = HudsonmodelHudsonassignedLabels
  { hudsonmodelHudsonassignedLabelsClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON HudsonmodelHudsonassignedLabels where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "hudsonmodelHudsonassignedLabels")
instance ToJSON HudsonmodelHudsonassignedLabels where
  toJSON = genericToJSON (removeFieldLabelPrefix False "hudsonmodelHudsonassignedLabels")

-- | 
data HudsonmodelLabel1 = HudsonmodelLabel1
  { hudsonmodelLabel1Class :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON HudsonmodelLabel1 where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "hudsonmodelLabel1")
instance ToJSON HudsonmodelLabel1 where
  toJSON = genericToJSON (removeFieldLabelPrefix False "hudsonmodelLabel1")

-- | 
data HudsonmodelListView = HudsonmodelListView
  { hudsonmodelListViewClass :: Text -- ^ 
  , hudsonmodelListViewDescription :: Text -- ^ 
  , hudsonmodelListViewJobs :: [HudsonmodelFreeStyleProject] -- ^ 
  , hudsonmodelListViewName :: Text -- ^ 
  , hudsonmodelListViewUrl :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON HudsonmodelListView where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "hudsonmodelListView")
instance ToJSON HudsonmodelListView where
  toJSON = genericToJSON (removeFieldLabelPrefix False "hudsonmodelListView")

-- | 
data HudsonmodelQueue = HudsonmodelQueue
  { hudsonmodelQueueClass :: Text -- ^ 
  , hudsonmodelQueueItems :: [HudsonmodelQueueBlockedItem] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON HudsonmodelQueue where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "hudsonmodelQueue")
instance ToJSON HudsonmodelQueue where
  toJSON = genericToJSON (removeFieldLabelPrefix False "hudsonmodelQueue")

-- | 
data HudsonmodelQueueBlockedItem = HudsonmodelQueueBlockedItem
  { hudsonmodelQueueBlockedItemClass :: Text -- ^ 
  , hudsonmodelQueueBlockedItemActions :: [HudsonmodelCauseAction] -- ^ 
  , hudsonmodelQueueBlockedItemBlocked :: Bool -- ^ 
  , hudsonmodelQueueBlockedItemBuildable :: Bool -- ^ 
  , hudsonmodelQueueBlockedItemId :: Int -- ^ 
  , hudsonmodelQueueBlockedItemInQueueSince :: Int -- ^ 
  , hudsonmodelQueueBlockedItemParams :: Text -- ^ 
  , hudsonmodelQueueBlockedItemStuck :: Bool -- ^ 
  , hudsonmodelQueueBlockedItemTask :: HudsonmodelFreeStyleProject -- ^ 
  , hudsonmodelQueueBlockedItemUrl :: Text -- ^ 
  , hudsonmodelQueueBlockedItemWhy :: Text -- ^ 
  , hudsonmodelQueueBlockedItemBuildableStartMilliseconds :: Int -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON HudsonmodelQueueBlockedItem where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "hudsonmodelQueueBlockedItem")
instance ToJSON HudsonmodelQueueBlockedItem where
  toJSON = genericToJSON (removeFieldLabelPrefix False "hudsonmodelQueueBlockedItem")

-- | 
data HudsonmodelQueueLeftItem = HudsonmodelQueueLeftItem
  { hudsonmodelQueueLeftItemClass :: Text -- ^ 
  , hudsonmodelQueueLeftItemActions :: [HudsonmodelCauseAction] -- ^ 
  , hudsonmodelQueueLeftItemBlocked :: Bool -- ^ 
  , hudsonmodelQueueLeftItemBuildable :: Bool -- ^ 
  , hudsonmodelQueueLeftItemId :: Int -- ^ 
  , hudsonmodelQueueLeftItemInQueueSince :: Int -- ^ 
  , hudsonmodelQueueLeftItemParams :: Text -- ^ 
  , hudsonmodelQueueLeftItemStuck :: Bool -- ^ 
  , hudsonmodelQueueLeftItemTask :: HudsonmodelFreeStyleProject -- ^ 
  , hudsonmodelQueueLeftItemUrl :: Text -- ^ 
  , hudsonmodelQueueLeftItemWhy :: Text -- ^ 
  , hudsonmodelQueueLeftItemCancelled :: Bool -- ^ 
  , hudsonmodelQueueLeftItemExecutable :: HudsonmodelFreeStyleBuild -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON HudsonmodelQueueLeftItem where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "hudsonmodelQueueLeftItem")
instance ToJSON HudsonmodelQueueLeftItem where
  toJSON = genericToJSON (removeFieldLabelPrefix False "hudsonmodelQueueLeftItem")

-- | 
data HudsonmodelStringParameterDefinition = HudsonmodelStringParameterDefinition
  { hudsonmodelStringParameterDefinitionClass :: Text -- ^ 
  , hudsonmodelStringParameterDefinitionDefaultParameterValue :: HudsonmodelStringParameterValue -- ^ 
  , hudsonmodelStringParameterDefinitionDescription :: Text -- ^ 
  , hudsonmodelStringParameterDefinitionName :: Text -- ^ 
  , hudsonmodelStringParameterDefinitionType :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON HudsonmodelStringParameterDefinition where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "hudsonmodelStringParameterDefinition")
instance ToJSON HudsonmodelStringParameterDefinition where
  toJSON = genericToJSON (removeFieldLabelPrefix False "hudsonmodelStringParameterDefinition")

-- | 
data HudsonmodelStringParameterValue = HudsonmodelStringParameterValue
  { hudsonmodelStringParameterValueClass :: Text -- ^ 
  , hudsonmodelStringParameterValueName :: Text -- ^ 
  , hudsonmodelStringParameterValueValue :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON HudsonmodelStringParameterValue where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "hudsonmodelStringParameterValue")
instance ToJSON HudsonmodelStringParameterValue where
  toJSON = genericToJSON (removeFieldLabelPrefix False "hudsonmodelStringParameterValue")

-- | 
data Hudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace = Hudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace
  { hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpaceClass :: Text -- ^ 
  , hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpaceTimestamp :: Int -- ^ 
  , hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpacePath :: Text -- ^ 
  , hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpaceSize :: Int -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Hudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace")
instance ToJSON Hudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace where
  toJSON = genericToJSON (removeFieldLabelPrefix False "hudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace")

-- | 
data Hudsonnode_monitorsResponseTimeMonitorData = Hudsonnode_monitorsResponseTimeMonitorData
  { hudsonnodeMonitorsResponseTimeMonitorDataClass :: Text -- ^ 
  , hudsonnodeMonitorsResponseTimeMonitorDataTimestamp :: Int -- ^ 
  , hudsonnodeMonitorsResponseTimeMonitorDataAverage :: Int -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Hudsonnode_monitorsResponseTimeMonitorData where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "hudsonnodeMonitorsResponseTimeMonitorData")
instance ToJSON Hudsonnode_monitorsResponseTimeMonitorData where
  toJSON = genericToJSON (removeFieldLabelPrefix False "hudsonnodeMonitorsResponseTimeMonitorData")

-- | 
data Hudsonnode_monitorsSwapSpaceMonitorMemoryUsage2 = Hudsonnode_monitorsSwapSpaceMonitorMemoryUsage2
  { hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2Class :: Text -- ^ 
  , hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2AvailablePhysicalMemory :: Int -- ^ 
  , hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2AvailableSwapSpace :: Int -- ^ 
  , hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2TotalPhysicalMemory :: Int -- ^ 
  , hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2TotalSwapSpace :: Int -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON Hudsonnode_monitorsSwapSpaceMonitorMemoryUsage2 where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2")
instance ToJSON Hudsonnode_monitorsSwapSpaceMonitorMemoryUsage2 where
  toJSON = genericToJSON (removeFieldLabelPrefix False "hudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2")

-- | 
data HudsonscmEmptyChangeLogSet = HudsonscmEmptyChangeLogSet
  { hudsonscmEmptyChangeLogSetClass :: Text -- ^ 
  , hudsonscmEmptyChangeLogSetKind :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON HudsonscmEmptyChangeLogSet where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "hudsonscmEmptyChangeLogSet")
instance ToJSON HudsonscmEmptyChangeLogSet where
  toJSON = genericToJSON (removeFieldLabelPrefix False "hudsonscmEmptyChangeLogSet")

-- | 
data HudsonscmNullSCM = HudsonscmNullSCM
  { hudsonscmNullSCMClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON HudsonscmNullSCM where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "hudsonscmNullSCM")
instance ToJSON HudsonscmNullSCM where
  toJSON = genericToJSON (removeFieldLabelPrefix False "hudsonscmNullSCM")

-- | 
data HudsonsecuritycsrfDefaultCrumbIssuer = HudsonsecuritycsrfDefaultCrumbIssuer
  { hudsonsecuritycsrfDefaultCrumbIssuerClass :: Text -- ^ 
  , hudsonsecuritycsrfDefaultCrumbIssuerCrumb :: Text -- ^ 
  , hudsonsecuritycsrfDefaultCrumbIssuerCrumbRequestField :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON HudsonsecuritycsrfDefaultCrumbIssuer where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "hudsonsecuritycsrfDefaultCrumbIssuer")
instance ToJSON HudsonsecuritycsrfDefaultCrumbIssuer where
  toJSON = genericToJSON (removeFieldLabelPrefix False "hudsonsecuritycsrfDefaultCrumbIssuer")

-- | 
data HudsonutilClockDifference = HudsonutilClockDifference
  { hudsonutilClockDifferenceClass :: Text -- ^ 
  , hudsonutilClockDifferenceDiff :: Int -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON HudsonutilClockDifference where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "hudsonutilClockDifference")
instance ToJSON HudsonutilClockDifference where
  toJSON = genericToJSON (removeFieldLabelPrefix False "hudsonutilClockDifference")

-- | 
data IojenkinsblueoceanresthalLink = IojenkinsblueoceanresthalLink
  { iojenkinsblueoceanresthalLinkClass :: Text -- ^ 
  , iojenkinsblueoceanresthalLinkHref :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON IojenkinsblueoceanresthalLink where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "iojenkinsblueoceanresthalLink")
instance ToJSON IojenkinsblueoceanresthalLink where
  toJSON = genericToJSON (removeFieldLabelPrefix False "iojenkinsblueoceanresthalLink")

-- | 
data IojenkinsblueoceanrestimplpipelineBranchImpl = IojenkinsblueoceanrestimplpipelineBranchImpl
  { iojenkinsblueoceanrestimplpipelineBranchImplClass :: Text -- ^ 
  , iojenkinsblueoceanrestimplpipelineBranchImplDisplayName :: Text -- ^ 
  , iojenkinsblueoceanrestimplpipelineBranchImplEstimatedDurationInMillis :: Int -- ^ 
  , iojenkinsblueoceanrestimplpipelineBranchImplFullDisplayName :: Text -- ^ 
  , iojenkinsblueoceanrestimplpipelineBranchImplFullName :: Text -- ^ 
  , iojenkinsblueoceanrestimplpipelineBranchImplName :: Text -- ^ 
  , iojenkinsblueoceanrestimplpipelineBranchImplOrganization :: Text -- ^ 
  , iojenkinsblueoceanrestimplpipelineBranchImplParameters :: [HudsonmodelStringParameterDefinition] -- ^ 
  , iojenkinsblueoceanrestimplpipelineBranchImplPermissions :: IojenkinsblueoceanrestimplpipelineBranchImpl_permissions -- ^ 
  , iojenkinsblueoceanrestimplpipelineBranchImplWeatherScore :: Int -- ^ 
  , iojenkinsblueoceanrestimplpipelineBranchImplPullRequest :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON IojenkinsblueoceanrestimplpipelineBranchImpl where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "iojenkinsblueoceanrestimplpipelineBranchImpl")
instance ToJSON IojenkinsblueoceanrestimplpipelineBranchImpl where
  toJSON = genericToJSON (removeFieldLabelPrefix False "iojenkinsblueoceanrestimplpipelineBranchImpl")

-- | 
data IojenkinsblueoceanrestimplpipelineBranchImpl_permissions = IojenkinsblueoceanrestimplpipelineBranchImpl_permissions
  { iojenkinsblueoceanrestimplpipelineBranchImplPermissionsCreate :: Bool -- ^ 
  , iojenkinsblueoceanrestimplpipelineBranchImplPermissionsRead :: Bool -- ^ 
  , iojenkinsblueoceanrestimplpipelineBranchImplPermissionsStart :: Bool -- ^ 
  , iojenkinsblueoceanrestimplpipelineBranchImplPermissionsStop :: Bool -- ^ 
  , iojenkinsblueoceanrestimplpipelineBranchImplPermissionsClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON IojenkinsblueoceanrestimplpipelineBranchImpl_permissions where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "iojenkinsblueoceanrestimplpipelineBranchImplPermissions")
instance ToJSON IojenkinsblueoceanrestimplpipelineBranchImpl_permissions where
  toJSON = genericToJSON (removeFieldLabelPrefix False "iojenkinsblueoceanrestimplpipelineBranchImplPermissions")

-- | 
data IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1 = IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1
  { iojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Class :: Text -- ^ 
  , iojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links :: IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1__links -- ^ 
  , iojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map :: IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1 where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "iojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1")
instance ToJSON IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1 where
  toJSON = genericToJSON (removeFieldLabelPrefix False "iojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1")

-- | 
data IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1__links = IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1__links
  { iojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1LinksSelf :: IojenkinsblueoceanresthalLink -- ^ 
  , iojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1LinksClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1__links where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "iojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links")
instance ToJSON IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1__links where
  toJSON = genericToJSON (removeFieldLabelPrefix False "iojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Links")

-- | 
data IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map = IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map
  { iojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1MapIoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl :: IojenkinsblueoceanserviceembeddedrestExtensionClassImpl -- ^ 
  , iojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1MapIoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl :: IojenkinsblueoceanserviceembeddedrestExtensionClassImpl -- ^ 
  , iojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1MapClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "iojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map")
instance ToJSON IojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1_map where
  toJSON = genericToJSON (removeFieldLabelPrefix False "iojenkinsblueoceanserviceembeddedrestExtensionClassContainerImpl1Map")

-- | 
data IojenkinsblueoceanserviceembeddedrestExtensionClassImpl = IojenkinsblueoceanserviceembeddedrestExtensionClassImpl
  { iojenkinsblueoceanserviceembeddedrestExtensionClassImplClass :: Text -- ^ 
  , iojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks :: IojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links -- ^ 
  , iojenkinsblueoceanserviceembeddedrestExtensionClassImplClasses :: [Text] -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON IojenkinsblueoceanserviceembeddedrestExtensionClassImpl where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "iojenkinsblueoceanserviceembeddedrestExtensionClassImpl")
instance ToJSON IojenkinsblueoceanserviceembeddedrestExtensionClassImpl where
  toJSON = genericToJSON (removeFieldLabelPrefix False "iojenkinsblueoceanserviceembeddedrestExtensionClassImpl")

-- | 
data IojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links = IojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links
  { iojenkinsblueoceanserviceembeddedrestExtensionClassImplLinksSelf :: IojenkinsblueoceanresthalLink -- ^ 
  , iojenkinsblueoceanserviceembeddedrestExtensionClassImplLinksClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON IojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "iojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks")
instance ToJSON IojenkinsblueoceanserviceembeddedrestExtensionClassImpl__links where
  toJSON = genericToJSON (removeFieldLabelPrefix False "iojenkinsblueoceanserviceembeddedrestExtensionClassImplLinks")

-- | 
data IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl = IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl
  { iojenkinsblueoceanserviceembeddedrestPipelineFolderImplClass :: Text -- ^ 
  , iojenkinsblueoceanserviceembeddedrestPipelineFolderImplDisplayName :: Text -- ^ 
  , iojenkinsblueoceanserviceembeddedrestPipelineFolderImplFullName :: Text -- ^ 
  , iojenkinsblueoceanserviceembeddedrestPipelineFolderImplName :: Text -- ^ 
  , iojenkinsblueoceanserviceembeddedrestPipelineFolderImplOrganization :: Text -- ^ 
  , iojenkinsblueoceanserviceembeddedrestPipelineFolderImplNumberOfFolders :: Int -- ^ 
  , iojenkinsblueoceanserviceembeddedrestPipelineFolderImplNumberOfPipelines :: Int -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl")
instance ToJSON IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl where
  toJSON = genericToJSON (removeFieldLabelPrefix False "iojenkinsblueoceanserviceembeddedrestPipelineFolderImpl")

-- | 
data IojenkinsblueoceanserviceembeddedrestPipelineImpl = IojenkinsblueoceanserviceembeddedrestPipelineImpl
  { iojenkinsblueoceanserviceembeddedrestPipelineImplClass :: Text -- ^ 
  , iojenkinsblueoceanserviceembeddedrestPipelineImplDisplayName :: Text -- ^ 
  , iojenkinsblueoceanserviceembeddedrestPipelineImplEstimatedDurationInMillis :: Int -- ^ 
  , iojenkinsblueoceanserviceembeddedrestPipelineImplFullName :: Text -- ^ 
  , iojenkinsblueoceanserviceembeddedrestPipelineImplLatestRun :: Text -- ^ 
  , iojenkinsblueoceanserviceembeddedrestPipelineImplName :: Text -- ^ 
  , iojenkinsblueoceanserviceembeddedrestPipelineImplOrganization :: Text -- ^ 
  , iojenkinsblueoceanserviceembeddedrestPipelineImplWeatherScore :: Int -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON IojenkinsblueoceanserviceembeddedrestPipelineImpl where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "iojenkinsblueoceanserviceembeddedrestPipelineImpl")
instance ToJSON IojenkinsblueoceanserviceembeddedrestPipelineImpl where
  toJSON = genericToJSON (removeFieldLabelPrefix False "iojenkinsblueoceanserviceembeddedrestPipelineImpl")

-- | 
data JenkinsmodelUnlabeledLoadStatistics = JenkinsmodelUnlabeledLoadStatistics
  { jenkinsmodelUnlabeledLoadStatisticsClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON JenkinsmodelUnlabeledLoadStatistics where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "jenkinsmodelUnlabeledLoadStatistics")
instance ToJSON JenkinsmodelUnlabeledLoadStatistics where
  toJSON = genericToJSON (removeFieldLabelPrefix False "jenkinsmodelUnlabeledLoadStatistics")

-- | 
data SwaggyjenkinsOrganisation = SwaggyjenkinsOrganisation
  { swaggyjenkinsOrganisationClass :: Text -- ^ 
  , swaggyjenkinsOrganisationName :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON SwaggyjenkinsOrganisation where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "swaggyjenkinsOrganisation")
instance ToJSON SwaggyjenkinsOrganisation where
  toJSON = genericToJSON (removeFieldLabelPrefix False "swaggyjenkinsOrganisation")

-- | 
data SwaggyjenkinsPipeline = SwaggyjenkinsPipeline
  { swaggyjenkinsPipelineClass :: Text -- ^ 
  , swaggyjenkinsPipelineOrganization :: Text -- ^ 
  , swaggyjenkinsPipelineName :: Text -- ^ 
  , swaggyjenkinsPipelineDisplayName :: Text -- ^ 
  , swaggyjenkinsPipelineFullName :: Text -- ^ 
  , swaggyjenkinsPipelineWeatherScore :: Int -- ^ 
  , swaggyjenkinsPipelineEstimatedDurationInMillis :: Int -- ^ 
  , swaggyjenkinsPipelineLatestRun :: SwaggyjenkinsPipeline_latestRun -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON SwaggyjenkinsPipeline where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "swaggyjenkinsPipeline")
instance ToJSON SwaggyjenkinsPipeline where
  toJSON = genericToJSON (removeFieldLabelPrefix False "swaggyjenkinsPipeline")

-- | 
data SwaggyjenkinsPipeline_latestRun = SwaggyjenkinsPipeline_latestRun
  { swaggyjenkinsPipelineLatestRunArtifacts :: [SwaggyjenkinsPipeline_latestRunartifacts] -- ^ 
  , swaggyjenkinsPipelineLatestRunDurationInMillis :: Int -- ^ 
  , swaggyjenkinsPipelineLatestRunEstimatedDurationInMillis :: Int -- ^ 
  , swaggyjenkinsPipelineLatestRunEnQueueTime :: Text -- ^ 
  , swaggyjenkinsPipelineLatestRunEndTime :: Text -- ^ 
  , swaggyjenkinsPipelineLatestRunId :: Text -- ^ 
  , swaggyjenkinsPipelineLatestRunOrganization :: Text -- ^ 
  , swaggyjenkinsPipelineLatestRunPipeline :: Text -- ^ 
  , swaggyjenkinsPipelineLatestRunResult :: Text -- ^ 
  , swaggyjenkinsPipelineLatestRunRunSummary :: Text -- ^ 
  , swaggyjenkinsPipelineLatestRunStartTime :: Text -- ^ 
  , swaggyjenkinsPipelineLatestRunState :: Text -- ^ 
  , swaggyjenkinsPipelineLatestRunType :: Text -- ^ 
  , swaggyjenkinsPipelineLatestRunCommitId :: Text -- ^ 
  , swaggyjenkinsPipelineLatestRunClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON SwaggyjenkinsPipeline_latestRun where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "swaggyjenkinsPipelineLatestRun")
instance ToJSON SwaggyjenkinsPipeline_latestRun where
  toJSON = genericToJSON (removeFieldLabelPrefix False "swaggyjenkinsPipelineLatestRun")

-- | 
data SwaggyjenkinsPipeline_latestRunartifacts = SwaggyjenkinsPipeline_latestRunartifacts
  { swaggyjenkinsPipelineLatestRunartifactsName :: Text -- ^ 
  , swaggyjenkinsPipelineLatestRunartifactsSize :: Int -- ^ 
  , swaggyjenkinsPipelineLatestRunartifactsUrl :: Text -- ^ 
  , swaggyjenkinsPipelineLatestRunartifactsClass :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON SwaggyjenkinsPipeline_latestRunartifacts where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "swaggyjenkinsPipelineLatestRunartifacts")
instance ToJSON SwaggyjenkinsPipeline_latestRunartifacts where
  toJSON = genericToJSON (removeFieldLabelPrefix False "swaggyjenkinsPipelineLatestRunartifacts")

-- | 
data SwaggyjenkinsUser = SwaggyjenkinsUser
  { swaggyjenkinsUserClass :: Text -- ^ 
  , swaggyjenkinsUserId :: Text -- ^ 
  , swaggyjenkinsUserFullName :: Text -- ^ 
  , swaggyjenkinsUserEmail :: Text -- ^ 
  , swaggyjenkinsUserName :: Text -- ^ 
  } deriving (Show, Eq, Generic)

instance FromJSON SwaggyjenkinsUser where
  parseJSON = genericParseJSON (removeFieldLabelPrefix True "swaggyjenkinsUser")
instance ToJSON SwaggyjenkinsUser where
  toJSON = genericToJSON (removeFieldLabelPrefix False "swaggyjenkinsUser")

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
