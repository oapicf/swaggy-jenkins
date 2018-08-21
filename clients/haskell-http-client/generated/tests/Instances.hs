{-# OPTIONS_GHC -fno-warn-unused-imports #-}

module Instances where

import SwaggyJenkins.Model
import SwaggyJenkins.Core

import qualified Data.Aeson as A
import qualified Data.ByteString.Lazy as BL
import qualified Data.HashMap.Strict as HM
import qualified Data.Set as Set
import qualified Data.Text as T
import qualified Data.Time as TI
import qualified Data.Vector as V

import Control.Monad
import Data.Char (isSpace)
import Data.List (sort)
import Test.QuickCheck

import ApproxEq

instance Arbitrary T.Text where
  arbitrary = T.pack <$> arbitrary

instance Arbitrary TI.Day where
  arbitrary = TI.ModifiedJulianDay . (2000 +) <$> arbitrary
  shrink = (TI.ModifiedJulianDay <$>) . shrink . TI.toModifiedJulianDay

instance Arbitrary TI.UTCTime where
  arbitrary =
    TI.UTCTime <$> arbitrary <*> (TI.secondsToDiffTime <$> choose (0, 86401))

instance Arbitrary BL.ByteString where
    arbitrary = BL.pack <$> arbitrary
    shrink xs = BL.pack <$> shrink (BL.unpack xs)

instance Arbitrary ByteArray where
    arbitrary = ByteArray <$> arbitrary
    shrink (ByteArray xs) = ByteArray <$> shrink xs

instance Arbitrary Binary where
    arbitrary = Binary <$> arbitrary
    shrink (Binary xs) = Binary <$> shrink xs

instance Arbitrary DateTime where
    arbitrary = DateTime <$> arbitrary
    shrink (DateTime xs) = DateTime <$> shrink xs

instance Arbitrary Date where
    arbitrary = Date <$> arbitrary
    shrink (Date xs) = Date <$> shrink xs

-- | A naive Arbitrary instance for A.Value:
instance Arbitrary A.Value where
  arbitrary = frequency [(3, simpleTypes), (1, arrayTypes), (1, objectTypes)]
    where
      simpleTypes :: Gen A.Value
      simpleTypes =
        frequency
          [ (1, return A.Null)
          , (2, liftM A.Bool (arbitrary :: Gen Bool))
          , (2, liftM (A.Number . fromIntegral) (arbitrary :: Gen Int))
          , (2, liftM (A.String . T.pack) (arbitrary :: Gen String))
          ]
      mapF (k, v) = (T.pack k, v)
      simpleAndArrays = frequency [(1, sized sizedArray), (4, simpleTypes)]
      arrayTypes = sized sizedArray
      objectTypes = sized sizedObject
      sizedArray n = liftM (A.Array . V.fromList) $ replicateM n simpleTypes
      sizedObject n =
        liftM (A.object . map mapF) $
        replicateM n $ (,) <$> (arbitrary :: Gen String) <*> simpleAndArrays
    
-- | Checks if a given list has no duplicates in _O(n log n)_.
hasNoDups
  :: (Ord a)
  => [a] -> Bool
hasNoDups = go Set.empty
  where
    go _ [] = True
    go s (x:xs)
      | s' <- Set.insert x s
      , Set.size s' > Set.size s = go s' xs
      | otherwise = False

instance ApproxEq TI.Day where
  (=~) = (==)

-- * Models
 
instance Arbitrary AllView where
  arbitrary =
    AllView
      <$> arbitrary -- allViewClass :: Maybe Text
      <*> arbitrary -- allViewName :: Maybe Text
      <*> arbitrary -- allViewUrl :: Maybe Text
    
instance Arbitrary Body where
  arbitrary =
    Body
      <$> arbitrary -- bodyFavorite :: Bool
    
instance Arbitrary BranchImpl where
  arbitrary =
    BranchImpl
      <$> arbitrary -- branchImplClass :: Maybe Text
      <*> arbitrary -- branchImplDisplayName :: Maybe Text
      <*> arbitrary -- branchImplEstimatedDurationInMillis :: Maybe Int
      <*> arbitrary -- branchImplFullDisplayName :: Maybe Text
      <*> arbitrary -- branchImplFullName :: Maybe Text
      <*> arbitrary -- branchImplName :: Maybe Text
      <*> arbitrary -- branchImplOrganization :: Maybe Text
      <*> arbitrary -- branchImplParameters :: Maybe [StringParameterDefinition]
      <*> arbitrary -- branchImplPermissions :: Maybe BranchImplpermissions
      <*> arbitrary -- branchImplWeatherScore :: Maybe Int
      <*> arbitrary -- branchImplPullRequest :: Maybe Text
      <*> arbitrary -- branchImplLinks :: Maybe BranchImpllinks
      <*> arbitrary -- branchImplLatestRun :: Maybe PipelineRunImpl
    
instance Arbitrary BranchImpllinks where
  arbitrary =
    BranchImpllinks
      <$> arbitrary -- branchImpllinksSelf :: Maybe Link
      <*> arbitrary -- branchImpllinksActions :: Maybe Link
      <*> arbitrary -- branchImpllinksRuns :: Maybe Link
      <*> arbitrary -- branchImpllinksQueue :: Maybe Link
      <*> arbitrary -- branchImpllinksClass :: Maybe Text
    
instance Arbitrary BranchImplpermissions where
  arbitrary =
    BranchImplpermissions
      <$> arbitrary -- branchImplpermissionsCreate :: Maybe Bool
      <*> arbitrary -- branchImplpermissionsRead :: Maybe Bool
      <*> arbitrary -- branchImplpermissionsStart :: Maybe Bool
      <*> arbitrary -- branchImplpermissionsStop :: Maybe Bool
      <*> arbitrary -- branchImplpermissionsClass :: Maybe Text
    
instance Arbitrary CauseAction where
  arbitrary =
    CauseAction
      <$> arbitrary -- causeActionClass :: Maybe Text
      <*> arbitrary -- causeActionCauses :: Maybe [CauseUserIdCause]
    
instance Arbitrary CauseUserIdCause where
  arbitrary =
    CauseUserIdCause
      <$> arbitrary -- causeUserIdCauseClass :: Maybe Text
      <*> arbitrary -- causeUserIdCauseShortDescription :: Maybe Text
      <*> arbitrary -- causeUserIdCauseUserId :: Maybe Text
      <*> arbitrary -- causeUserIdCauseUserName :: Maybe Text
    
instance Arbitrary ClassesByClass where
  arbitrary =
    ClassesByClass
      <$> arbitrary -- classesByClassClasses :: Maybe [Text]
      <*> arbitrary -- classesByClassClass :: Maybe Text
    
instance Arbitrary ClockDifference where
  arbitrary =
    ClockDifference
      <$> arbitrary -- clockDifferenceClass :: Maybe Text
      <*> arbitrary -- clockDifferenceDiff :: Maybe Int
    
instance Arbitrary ComputerSet where
  arbitrary =
    ComputerSet
      <$> arbitrary -- computerSetClass :: Maybe Text
      <*> arbitrary -- computerSetBusyExecutors :: Maybe Int
      <*> arbitrary -- computerSetComputer :: Maybe [HudsonMasterComputer]
      <*> arbitrary -- computerSetDisplayName :: Maybe Text
      <*> arbitrary -- computerSetTotalExecutors :: Maybe Int
    
instance Arbitrary DefaultCrumbIssuer where
  arbitrary =
    DefaultCrumbIssuer
      <$> arbitrary -- defaultCrumbIssuerClass :: Maybe Text
      <*> arbitrary -- defaultCrumbIssuerCrumb :: Maybe Text
      <*> arbitrary -- defaultCrumbIssuerCrumbRequestField :: Maybe Text
    
instance Arbitrary DiskSpaceMonitorDescriptorDiskSpace where
  arbitrary =
    DiskSpaceMonitorDescriptorDiskSpace
      <$> arbitrary -- diskSpaceMonitorDescriptorDiskSpaceClass :: Maybe Text
      <*> arbitrary -- diskSpaceMonitorDescriptorDiskSpaceTimestamp :: Maybe Int
      <*> arbitrary -- diskSpaceMonitorDescriptorDiskSpacePath :: Maybe Text
      <*> arbitrary -- diskSpaceMonitorDescriptorDiskSpaceSize :: Maybe Int
    
instance Arbitrary EmptyChangeLogSet where
  arbitrary =
    EmptyChangeLogSet
      <$> arbitrary -- emptyChangeLogSetClass :: Maybe Text
      <*> arbitrary -- emptyChangeLogSetKind :: Maybe Text
    
instance Arbitrary ExtensionClassContainerImpl1 where
  arbitrary =
    ExtensionClassContainerImpl1
      <$> arbitrary -- extensionClassContainerImpl1Class :: Maybe Text
      <*> arbitrary -- extensionClassContainerImpl1Links :: Maybe ExtensionClassContainerImpl1links
      <*> arbitrary -- extensionClassContainerImpl1Map :: Maybe ExtensionClassContainerImpl1map
    
instance Arbitrary ExtensionClassContainerImpl1links where
  arbitrary =
    ExtensionClassContainerImpl1links
      <$> arbitrary -- extensionClassContainerImpl1linksSelf :: Maybe Link
      <*> arbitrary -- extensionClassContainerImpl1linksClass :: Maybe Text
    
instance Arbitrary ExtensionClassContainerImpl1map where
  arbitrary =
    ExtensionClassContainerImpl1map
      <$> arbitrary -- extensionClassContainerImpl1mapIoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl :: Maybe ExtensionClassImpl
      <*> arbitrary -- extensionClassContainerImpl1mapIoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl :: Maybe ExtensionClassImpl
      <*> arbitrary -- extensionClassContainerImpl1mapClass :: Maybe Text
    
instance Arbitrary ExtensionClassImpl where
  arbitrary =
    ExtensionClassImpl
      <$> arbitrary -- extensionClassImplClass :: Maybe Text
      <*> arbitrary -- extensionClassImplLinks :: Maybe ExtensionClassImpllinks
      <*> arbitrary -- extensionClassImplClasses :: Maybe [Text]
    
instance Arbitrary ExtensionClassImpllinks where
  arbitrary =
    ExtensionClassImpllinks
      <$> arbitrary -- extensionClassImpllinksSelf :: Maybe Link
      <*> arbitrary -- extensionClassImpllinksClass :: Maybe Text
    
instance Arbitrary FavoriteImpl where
  arbitrary =
    FavoriteImpl
      <$> arbitrary -- favoriteImplClass :: Maybe Text
      <*> arbitrary -- favoriteImplLinks :: Maybe FavoriteImpllinks
      <*> arbitrary -- favoriteImplItem :: Maybe PipelineImpl
    
instance Arbitrary FavoriteImpllinks where
  arbitrary =
    FavoriteImpllinks
      <$> arbitrary -- favoriteImpllinksSelf :: Maybe Link
      <*> arbitrary -- favoriteImpllinksClass :: Maybe Text
    
instance Arbitrary FreeStyleBuild where
  arbitrary =
    FreeStyleBuild
      <$> arbitrary -- freeStyleBuildClass :: Maybe Text
      <*> arbitrary -- freeStyleBuildNumber :: Maybe Int
      <*> arbitrary -- freeStyleBuildUrl :: Maybe Text
      <*> arbitrary -- freeStyleBuildActions :: Maybe [CauseAction]
      <*> arbitrary -- freeStyleBuildBuilding :: Maybe Bool
      <*> arbitrary -- freeStyleBuildDescription :: Maybe Text
      <*> arbitrary -- freeStyleBuildDisplayName :: Maybe Text
      <*> arbitrary -- freeStyleBuildDuration :: Maybe Int
      <*> arbitrary -- freeStyleBuildEstimatedDuration :: Maybe Int
      <*> arbitrary -- freeStyleBuildExecutor :: Maybe Text
      <*> arbitrary -- freeStyleBuildFullDisplayName :: Maybe Text
      <*> arbitrary -- freeStyleBuildId :: Maybe Text
      <*> arbitrary -- freeStyleBuildKeepLog :: Maybe Bool
      <*> arbitrary -- freeStyleBuildQueueId :: Maybe Int
      <*> arbitrary -- freeStyleBuildResult :: Maybe Text
      <*> arbitrary -- freeStyleBuildTimestamp :: Maybe Int
      <*> arbitrary -- freeStyleBuildBuiltOn :: Maybe Text
      <*> arbitrary -- freeStyleBuildChangeSet :: Maybe EmptyChangeLogSet
    
instance Arbitrary FreeStyleProject where
  arbitrary =
    FreeStyleProject
      <$> arbitrary -- freeStyleProjectClass :: Maybe Text
      <*> arbitrary -- freeStyleProjectName :: Maybe Text
      <*> arbitrary -- freeStyleProjectUrl :: Maybe Text
      <*> arbitrary -- freeStyleProjectColor :: Maybe Text
      <*> arbitrary -- freeStyleProjectActions :: Maybe [FreeStyleProjectactions]
      <*> arbitrary -- freeStyleProjectDescription :: Maybe Text
      <*> arbitrary -- freeStyleProjectDisplayName :: Maybe Text
      <*> arbitrary -- freeStyleProjectDisplayNameOrNull :: Maybe Text
      <*> arbitrary -- freeStyleProjectFullDisplayName :: Maybe Text
      <*> arbitrary -- freeStyleProjectFullName :: Maybe Text
      <*> arbitrary -- freeStyleProjectBuildable :: Maybe Bool
      <*> arbitrary -- freeStyleProjectBuilds :: Maybe [FreeStyleBuild]
      <*> arbitrary -- freeStyleProjectFirstBuild :: Maybe FreeStyleBuild
      <*> arbitrary -- freeStyleProjectHealthReport :: Maybe [FreeStyleProjecthealthReport]
      <*> arbitrary -- freeStyleProjectInQueue :: Maybe Bool
      <*> arbitrary -- freeStyleProjectKeepDependencies :: Maybe Bool
      <*> arbitrary -- freeStyleProjectLastBuild :: Maybe FreeStyleBuild
      <*> arbitrary -- freeStyleProjectLastCompletedBuild :: Maybe FreeStyleBuild
      <*> arbitrary -- freeStyleProjectLastFailedBuild :: Maybe Text
      <*> arbitrary -- freeStyleProjectLastStableBuild :: Maybe FreeStyleBuild
      <*> arbitrary -- freeStyleProjectLastSuccessfulBuild :: Maybe FreeStyleBuild
      <*> arbitrary -- freeStyleProjectLastUnstableBuild :: Maybe Text
      <*> arbitrary -- freeStyleProjectLastUnsuccessfulBuild :: Maybe Text
      <*> arbitrary -- freeStyleProjectNextBuildNumber :: Maybe Int
      <*> arbitrary -- freeStyleProjectQueueItem :: Maybe Text
      <*> arbitrary -- freeStyleProjectConcurrentBuild :: Maybe Bool
      <*> arbitrary -- freeStyleProjectScm :: Maybe NullSCM
    
instance Arbitrary FreeStyleProjectactions where
  arbitrary =
    FreeStyleProjectactions
      <$> arbitrary -- freeStyleProjectactionsClass :: Maybe Text
    
instance Arbitrary FreeStyleProjecthealthReport where
  arbitrary =
    FreeStyleProjecthealthReport
      <$> arbitrary -- freeStyleProjecthealthReportDescription :: Maybe Text
      <*> arbitrary -- freeStyleProjecthealthReportIconClassName :: Maybe Text
      <*> arbitrary -- freeStyleProjecthealthReportIconUrl :: Maybe Text
      <*> arbitrary -- freeStyleProjecthealthReportScore :: Maybe Int
      <*> arbitrary -- freeStyleProjecthealthReportClass :: Maybe Text
    
instance Arbitrary GenericResource where
  arbitrary =
    GenericResource
      <$> arbitrary -- genericResourceClass :: Maybe Text
      <*> arbitrary -- genericResourceDisplayName :: Maybe Text
      <*> arbitrary -- genericResourceDurationInMillis :: Maybe Int
      <*> arbitrary -- genericResourceId :: Maybe Text
      <*> arbitrary -- genericResourceResult :: Maybe Text
      <*> arbitrary -- genericResourceStartTime :: Maybe Text
    
instance Arbitrary GithubContent where
  arbitrary =
    GithubContent
      <$> arbitrary -- githubContentName :: Maybe Text
      <*> arbitrary -- githubContentSha :: Maybe Text
      <*> arbitrary -- githubContentClass :: Maybe Text
      <*> arbitrary -- githubContentRepo :: Maybe Text
      <*> arbitrary -- githubContentSize :: Maybe Int
      <*> arbitrary -- githubContentOwner :: Maybe Text
      <*> arbitrary -- githubContentPath :: Maybe Text
      <*> arbitrary -- githubContentBase64Data :: Maybe Text
    
instance Arbitrary GithubFile where
  arbitrary =
    GithubFile
      <$> arbitrary -- githubFileContent :: Maybe GithubContent
      <*> arbitrary -- githubFileClass :: Maybe Text
    
instance Arbitrary GithubOrganization where
  arbitrary =
    GithubOrganization
      <$> arbitrary -- githubOrganizationClass :: Maybe Text
      <*> arbitrary -- githubOrganizationLinks :: Maybe GithubOrganizationlinks
      <*> arbitrary -- githubOrganizationJenkinsOrganizationPipeline :: Maybe Bool
      <*> arbitrary -- githubOrganizationName :: Maybe Text
    
instance Arbitrary GithubOrganizationlinks where
  arbitrary =
    GithubOrganizationlinks
      <$> arbitrary -- githubOrganizationlinksRepositories :: Maybe Link
      <*> arbitrary -- githubOrganizationlinksSelf :: Maybe Link
      <*> arbitrary -- githubOrganizationlinksClass :: Maybe Text
    
instance Arbitrary GithubRepositories where
  arbitrary =
    GithubRepositories
      <$> arbitrary -- githubRepositoriesClass :: Maybe Text
      <*> arbitrary -- githubRepositoriesLinks :: Maybe GithubRepositorieslinks
      <*> arbitrary -- githubRepositoriesItems :: Maybe [GithubRepository]
      <*> arbitrary -- githubRepositoriesLastPage :: Maybe Int
      <*> arbitrary -- githubRepositoriesNextPage :: Maybe Int
      <*> arbitrary -- githubRepositoriesPageSize :: Maybe Int
    
instance Arbitrary GithubRepositorieslinks where
  arbitrary =
    GithubRepositorieslinks
      <$> arbitrary -- githubRepositorieslinksSelf :: Maybe Link
      <*> arbitrary -- githubRepositorieslinksClass :: Maybe Text
    
instance Arbitrary GithubRepository where
  arbitrary =
    GithubRepository
      <$> arbitrary -- githubRepositoryClass :: Maybe Text
      <*> arbitrary -- githubRepositoryLinks :: Maybe GithubRepositorylinks
      <*> arbitrary -- githubRepositoryDefaultBranch :: Maybe Text
      <*> arbitrary -- githubRepositoryDescription :: Maybe Text
      <*> arbitrary -- githubRepositoryName :: Maybe Text
      <*> arbitrary -- githubRepositoryPermissions :: Maybe GithubRepositorypermissions
      <*> arbitrary -- githubRepositoryPrivate :: Maybe Bool
      <*> arbitrary -- githubRepositoryFullName :: Maybe Text
    
instance Arbitrary GithubRepositorylinks where
  arbitrary =
    GithubRepositorylinks
      <$> arbitrary -- githubRepositorylinksSelf :: Maybe Link
      <*> arbitrary -- githubRepositorylinksClass :: Maybe Text
    
instance Arbitrary GithubRepositorypermissions where
  arbitrary =
    GithubRepositorypermissions
      <$> arbitrary -- githubRepositorypermissionsAdmin :: Maybe Bool
      <*> arbitrary -- githubRepositorypermissionsPush :: Maybe Bool
      <*> arbitrary -- githubRepositorypermissionsPull :: Maybe Bool
      <*> arbitrary -- githubRepositorypermissionsClass :: Maybe Text
    
instance Arbitrary GithubRespositoryContainer where
  arbitrary =
    GithubRespositoryContainer
      <$> arbitrary -- githubRespositoryContainerClass :: Maybe Text
      <*> arbitrary -- githubRespositoryContainerLinks :: Maybe GithubRespositoryContainerlinks
      <*> arbitrary -- githubRespositoryContainerRepositories :: Maybe GithubRepositories
    
instance Arbitrary GithubRespositoryContainerlinks where
  arbitrary =
    GithubRespositoryContainerlinks
      <$> arbitrary -- githubRespositoryContainerlinksSelf :: Maybe Link
      <*> arbitrary -- githubRespositoryContainerlinksClass :: Maybe Text
    
instance Arbitrary GithubScm where
  arbitrary =
    GithubScm
      <$> arbitrary -- githubScmClass :: Maybe Text
      <*> arbitrary -- githubScmLinks :: Maybe GithubScmlinks
      <*> arbitrary -- githubScmCredentialId :: Maybe Text
      <*> arbitrary -- githubScmId :: Maybe Text
      <*> arbitrary -- githubScmUri :: Maybe Text
    
instance Arbitrary GithubScmlinks where
  arbitrary =
    GithubScmlinks
      <$> arbitrary -- githubScmlinksSelf :: Maybe Link
      <*> arbitrary -- githubScmlinksClass :: Maybe Text
    
instance Arbitrary Hudson where
  arbitrary =
    Hudson
      <$> arbitrary -- hudsonClass :: Maybe Text
      <*> arbitrary -- hudsonAssignedLabels :: Maybe [HudsonassignedLabels]
      <*> arbitrary -- hudsonMode :: Maybe Text
      <*> arbitrary -- hudsonNodeDescription :: Maybe Text
      <*> arbitrary -- hudsonNodeName :: Maybe Text
      <*> arbitrary -- hudsonNumExecutors :: Maybe Int
      <*> arbitrary -- hudsonDescription :: Maybe Text
      <*> arbitrary -- hudsonJobs :: Maybe [FreeStyleProject]
      <*> arbitrary -- hudsonPrimaryView :: Maybe AllView
      <*> arbitrary -- hudsonQuietingDown :: Maybe Bool
      <*> arbitrary -- hudsonSlaveAgentPort :: Maybe Int
      <*> arbitrary -- hudsonUnlabeledLoad :: Maybe UnlabeledLoadStatistics
      <*> arbitrary -- hudsonUseCrumbs :: Maybe Bool
      <*> arbitrary -- hudsonUseSecurity :: Maybe Bool
      <*> arbitrary -- hudsonViews :: Maybe [AllView]
    
instance Arbitrary HudsonMasterComputer where
  arbitrary =
    HudsonMasterComputer
      <$> arbitrary -- hudsonMasterComputerClass :: Maybe Text
      <*> arbitrary -- hudsonMasterComputerDisplayName :: Maybe Text
      <*> arbitrary -- hudsonMasterComputerExecutors :: Maybe [HudsonMasterComputerexecutors]
      <*> arbitrary -- hudsonMasterComputerIcon :: Maybe Text
      <*> arbitrary -- hudsonMasterComputerIconClassName :: Maybe Text
      <*> arbitrary -- hudsonMasterComputerIdle :: Maybe Bool
      <*> arbitrary -- hudsonMasterComputerJnlpAgent :: Maybe Bool
      <*> arbitrary -- hudsonMasterComputerLaunchSupported :: Maybe Bool
      <*> arbitrary -- hudsonMasterComputerLoadStatistics :: Maybe Label1
      <*> arbitrary -- hudsonMasterComputerManualLaunchAllowed :: Maybe Bool
      <*> arbitrary -- hudsonMasterComputerMonitorData :: Maybe HudsonMasterComputermonitorData
      <*> arbitrary -- hudsonMasterComputerNumExecutors :: Maybe Int
      <*> arbitrary -- hudsonMasterComputerOffline :: Maybe Bool
      <*> arbitrary -- hudsonMasterComputerOfflineCause :: Maybe Text
      <*> arbitrary -- hudsonMasterComputerOfflineCauseReason :: Maybe Text
      <*> arbitrary -- hudsonMasterComputerTemporarilyOffline :: Maybe Bool
    
instance Arbitrary HudsonMasterComputerexecutors where
  arbitrary =
    HudsonMasterComputerexecutors
      <$> arbitrary -- hudsonMasterComputerexecutorsCurrentExecutable :: Maybe FreeStyleBuild
      <*> arbitrary -- hudsonMasterComputerexecutorsIdle :: Maybe Bool
      <*> arbitrary -- hudsonMasterComputerexecutorsLikelyStuck :: Maybe Bool
      <*> arbitrary -- hudsonMasterComputerexecutorsNumber :: Maybe Int
      <*> arbitrary -- hudsonMasterComputerexecutorsProgress :: Maybe Int
      <*> arbitrary -- hudsonMasterComputerexecutorsClass :: Maybe Text
    
instance Arbitrary HudsonMasterComputermonitorData where
  arbitrary =
    HudsonMasterComputermonitorData
      <$> arbitrary -- hudsonMasterComputermonitorDataHudsonNodeMonitorsSwapSpaceMonitor :: Maybe SwapSpaceMonitorMemoryUsage2
      <*> arbitrary -- hudsonMasterComputermonitorDataHudsonNodeMonitorsTemporarySpaceMonitor :: Maybe DiskSpaceMonitorDescriptorDiskSpace
      <*> arbitrary -- hudsonMasterComputermonitorDataHudsonNodeMonitorsDiskSpaceMonitor :: Maybe DiskSpaceMonitorDescriptorDiskSpace
      <*> arbitrary -- hudsonMasterComputermonitorDataHudsonNodeMonitorsArchitectureMonitor :: Maybe Text
      <*> arbitrary -- hudsonMasterComputermonitorDataHudsonNodeMonitorsResponseTimeMonitor :: Maybe ResponseTimeMonitorData
      <*> arbitrary -- hudsonMasterComputermonitorDataHudsonNodeMonitorsClockMonitor :: Maybe ClockDifference
      <*> arbitrary -- hudsonMasterComputermonitorDataClass :: Maybe Text
    
instance Arbitrary HudsonassignedLabels where
  arbitrary =
    HudsonassignedLabels
      <$> arbitrary -- hudsonassignedLabelsClass :: Maybe Text
    
instance Arbitrary InputStepImpl where
  arbitrary =
    InputStepImpl
      <$> arbitrary -- inputStepImplClass :: Maybe Text
      <*> arbitrary -- inputStepImplLinks :: Maybe InputStepImpllinks
      <*> arbitrary -- inputStepImplId :: Maybe Text
      <*> arbitrary -- inputStepImplMessage :: Maybe Text
      <*> arbitrary -- inputStepImplOk :: Maybe Text
      <*> arbitrary -- inputStepImplParameters :: Maybe [StringParameterDefinition]
      <*> arbitrary -- inputStepImplSubmitter :: Maybe Text
    
instance Arbitrary InputStepImpllinks where
  arbitrary =
    InputStepImpllinks
      <$> arbitrary -- inputStepImpllinksSelf :: Maybe Link
      <*> arbitrary -- inputStepImpllinksClass :: Maybe Text
    
instance Arbitrary Label1 where
  arbitrary =
    Label1
      <$> arbitrary -- label1Class :: Maybe Text
    
instance Arbitrary Link where
  arbitrary =
    Link
      <$> arbitrary -- linkClass :: Maybe Text
      <*> arbitrary -- linkHref :: Maybe Text
    
instance Arbitrary ListView where
  arbitrary =
    ListView
      <$> arbitrary -- listViewClass :: Maybe Text
      <*> arbitrary -- listViewDescription :: Maybe Text
      <*> arbitrary -- listViewJobs :: Maybe [FreeStyleProject]
      <*> arbitrary -- listViewName :: Maybe Text
      <*> arbitrary -- listViewUrl :: Maybe Text
    
instance Arbitrary MultibranchPipeline where
  arbitrary =
    MultibranchPipeline
      <$> arbitrary -- multibranchPipelineDisplayName :: Maybe Text
      <*> arbitrary -- multibranchPipelineEstimatedDurationInMillis :: Maybe Int
      <*> arbitrary -- multibranchPipelineLatestRun :: Maybe Text
      <*> arbitrary -- multibranchPipelineName :: Maybe Text
      <*> arbitrary -- multibranchPipelineOrganization :: Maybe Text
      <*> arbitrary -- multibranchPipelineWeatherScore :: Maybe Int
      <*> arbitrary -- multibranchPipelineBranchNames :: Maybe [Text]
      <*> arbitrary -- multibranchPipelineNumberOfFailingBranches :: Maybe Int
      <*> arbitrary -- multibranchPipelineNumberOfFailingPullRequests :: Maybe Int
      <*> arbitrary -- multibranchPipelineNumberOfSuccessfulBranches :: Maybe Int
      <*> arbitrary -- multibranchPipelineNumberOfSuccessfulPullRequests :: Maybe Int
      <*> arbitrary -- multibranchPipelineTotalNumberOfBranches :: Maybe Int
      <*> arbitrary -- multibranchPipelineTotalNumberOfPullRequests :: Maybe Int
      <*> arbitrary -- multibranchPipelineClass :: Maybe Text
    
instance Arbitrary NullSCM where
  arbitrary =
    NullSCM
      <$> arbitrary -- nullSCMClass :: Maybe Text
    
instance Arbitrary Organisation where
  arbitrary =
    Organisation
      <$> arbitrary -- organisationClass :: Maybe Text
      <*> arbitrary -- organisationName :: Maybe Text
    
instance Arbitrary Organisations where
  arbitrary =
    
    pure Organisations
     
instance Arbitrary Pipeline where
  arbitrary =
    Pipeline
      <$> arbitrary -- pipelineClass :: Maybe Text
      <*> arbitrary -- pipelineOrganization :: Maybe Text
      <*> arbitrary -- pipelineName :: Maybe Text
      <*> arbitrary -- pipelineDisplayName :: Maybe Text
      <*> arbitrary -- pipelineFullName :: Maybe Text
      <*> arbitrary -- pipelineWeatherScore :: Maybe Int
      <*> arbitrary -- pipelineEstimatedDurationInMillis :: Maybe Int
      <*> arbitrary -- pipelineLatestRun :: Maybe PipelinelatestRun
    
instance Arbitrary PipelineActivities where
  arbitrary =
    
    pure PipelineActivities
     
instance Arbitrary PipelineActivity where
  arbitrary =
    PipelineActivity
      <$> arbitrary -- pipelineActivityClass :: Maybe Text
      <*> arbitrary -- pipelineActivityArtifacts :: Maybe [PipelineActivityartifacts]
      <*> arbitrary -- pipelineActivityDurationInMillis :: Maybe Int
      <*> arbitrary -- pipelineActivityEstimatedDurationInMillis :: Maybe Int
      <*> arbitrary -- pipelineActivityEnQueueTime :: Maybe Text
      <*> arbitrary -- pipelineActivityEndTime :: Maybe Text
      <*> arbitrary -- pipelineActivityId :: Maybe Text
      <*> arbitrary -- pipelineActivityOrganization :: Maybe Text
      <*> arbitrary -- pipelineActivityPipeline :: Maybe Text
      <*> arbitrary -- pipelineActivityResult :: Maybe Text
      <*> arbitrary -- pipelineActivityRunSummary :: Maybe Text
      <*> arbitrary -- pipelineActivityStartTime :: Maybe Text
      <*> arbitrary -- pipelineActivityState :: Maybe Text
      <*> arbitrary -- pipelineActivityType :: Maybe Text
      <*> arbitrary -- pipelineActivityCommitId :: Maybe Text
    
instance Arbitrary PipelineActivityartifacts where
  arbitrary =
    PipelineActivityartifacts
      <$> arbitrary -- pipelineActivityartifactsName :: Maybe Text
      <*> arbitrary -- pipelineActivityartifactsSize :: Maybe Int
      <*> arbitrary -- pipelineActivityartifactsUrl :: Maybe Text
      <*> arbitrary -- pipelineActivityartifactsClass :: Maybe Text
    
instance Arbitrary PipelineBranches where
  arbitrary =
    
    pure PipelineBranches
     
instance Arbitrary PipelineBranchesitem where
  arbitrary =
    PipelineBranchesitem
      <$> arbitrary -- pipelineBranchesitemDisplayName :: Maybe Text
      <*> arbitrary -- pipelineBranchesitemEstimatedDurationInMillis :: Maybe Int
      <*> arbitrary -- pipelineBranchesitemName :: Maybe Text
      <*> arbitrary -- pipelineBranchesitemWeatherScore :: Maybe Int
      <*> arbitrary -- pipelineBranchesitemLatestRun :: Maybe PipelineBranchesitemlatestRun
      <*> arbitrary -- pipelineBranchesitemOrganization :: Maybe Text
      <*> arbitrary -- pipelineBranchesitemPullRequest :: Maybe PipelineBranchesitempullRequest
      <*> arbitrary -- pipelineBranchesitemTotalNumberOfPullRequests :: Maybe Int
      <*> arbitrary -- pipelineBranchesitemClass :: Maybe Text
    
instance Arbitrary PipelineBranchesitemlatestRun where
  arbitrary =
    PipelineBranchesitemlatestRun
      <$> arbitrary -- pipelineBranchesitemlatestRunDurationInMillis :: Maybe Int
      <*> arbitrary -- pipelineBranchesitemlatestRunEstimatedDurationInMillis :: Maybe Int
      <*> arbitrary -- pipelineBranchesitemlatestRunEnQueueTime :: Maybe Text
      <*> arbitrary -- pipelineBranchesitemlatestRunEndTime :: Maybe Text
      <*> arbitrary -- pipelineBranchesitemlatestRunId :: Maybe Text
      <*> arbitrary -- pipelineBranchesitemlatestRunOrganization :: Maybe Text
      <*> arbitrary -- pipelineBranchesitemlatestRunPipeline :: Maybe Text
      <*> arbitrary -- pipelineBranchesitemlatestRunResult :: Maybe Text
      <*> arbitrary -- pipelineBranchesitemlatestRunRunSummary :: Maybe Text
      <*> arbitrary -- pipelineBranchesitemlatestRunStartTime :: Maybe Text
      <*> arbitrary -- pipelineBranchesitemlatestRunState :: Maybe Text
      <*> arbitrary -- pipelineBranchesitemlatestRunType :: Maybe Text
      <*> arbitrary -- pipelineBranchesitemlatestRunCommitId :: Maybe Text
      <*> arbitrary -- pipelineBranchesitemlatestRunClass :: Maybe Text
    
instance Arbitrary PipelineBranchesitempullRequest where
  arbitrary =
    PipelineBranchesitempullRequest
      <$> arbitrary -- pipelineBranchesitempullRequestLinks :: Maybe PipelineBranchesitempullRequestlinks
      <*> arbitrary -- pipelineBranchesitempullRequestAuthor :: Maybe Text
      <*> arbitrary -- pipelineBranchesitempullRequestId :: Maybe Text
      <*> arbitrary -- pipelineBranchesitempullRequestTitle :: Maybe Text
      <*> arbitrary -- pipelineBranchesitempullRequestUrl :: Maybe Text
      <*> arbitrary -- pipelineBranchesitempullRequestClass :: Maybe Text
    
instance Arbitrary PipelineBranchesitempullRequestlinks where
  arbitrary =
    PipelineBranchesitempullRequestlinks
      <$> arbitrary -- pipelineBranchesitempullRequestlinksSelf :: Maybe Text
      <*> arbitrary -- pipelineBranchesitempullRequestlinksClass :: Maybe Text
    
instance Arbitrary PipelineFolderImpl where
  arbitrary =
    PipelineFolderImpl
      <$> arbitrary -- pipelineFolderImplClass :: Maybe Text
      <*> arbitrary -- pipelineFolderImplDisplayName :: Maybe Text
      <*> arbitrary -- pipelineFolderImplFullName :: Maybe Text
      <*> arbitrary -- pipelineFolderImplName :: Maybe Text
      <*> arbitrary -- pipelineFolderImplOrganization :: Maybe Text
      <*> arbitrary -- pipelineFolderImplNumberOfFolders :: Maybe Int
      <*> arbitrary -- pipelineFolderImplNumberOfPipelines :: Maybe Int
    
instance Arbitrary PipelineImpl where
  arbitrary =
    PipelineImpl
      <$> arbitrary -- pipelineImplClass :: Maybe Text
      <*> arbitrary -- pipelineImplDisplayName :: Maybe Text
      <*> arbitrary -- pipelineImplEstimatedDurationInMillis :: Maybe Int
      <*> arbitrary -- pipelineImplFullName :: Maybe Text
      <*> arbitrary -- pipelineImplLatestRun :: Maybe Text
      <*> arbitrary -- pipelineImplName :: Maybe Text
      <*> arbitrary -- pipelineImplOrganization :: Maybe Text
      <*> arbitrary -- pipelineImplWeatherScore :: Maybe Int
      <*> arbitrary -- pipelineImplLinks :: Maybe PipelineImpllinks
    
instance Arbitrary PipelineImpllinks where
  arbitrary =
    PipelineImpllinks
      <$> arbitrary -- pipelineImpllinksRuns :: Maybe Link
      <*> arbitrary -- pipelineImpllinksSelf :: Maybe Link
      <*> arbitrary -- pipelineImpllinksQueue :: Maybe Link
      <*> arbitrary -- pipelineImpllinksActions :: Maybe Link
      <*> arbitrary -- pipelineImpllinksClass :: Maybe Text
    
instance Arbitrary PipelineQueue where
  arbitrary =
    
    pure PipelineQueue
     
instance Arbitrary PipelineRun where
  arbitrary =
    PipelineRun
      <$> arbitrary -- pipelineRunClass :: Maybe Text
      <*> arbitrary -- pipelineRunArtifacts :: Maybe [PipelineRunartifacts]
      <*> arbitrary -- pipelineRunDurationInMillis :: Maybe Int
      <*> arbitrary -- pipelineRunEstimatedDurationInMillis :: Maybe Int
      <*> arbitrary -- pipelineRunEnQueueTime :: Maybe Text
      <*> arbitrary -- pipelineRunEndTime :: Maybe Text
      <*> arbitrary -- pipelineRunId :: Maybe Text
      <*> arbitrary -- pipelineRunOrganization :: Maybe Text
      <*> arbitrary -- pipelineRunPipeline :: Maybe Text
      <*> arbitrary -- pipelineRunResult :: Maybe Text
      <*> arbitrary -- pipelineRunRunSummary :: Maybe Text
      <*> arbitrary -- pipelineRunStartTime :: Maybe Text
      <*> arbitrary -- pipelineRunState :: Maybe Text
      <*> arbitrary -- pipelineRunType :: Maybe Text
      <*> arbitrary -- pipelineRunCommitId :: Maybe Text
    
instance Arbitrary PipelineRunImpl where
  arbitrary =
    PipelineRunImpl
      <$> arbitrary -- pipelineRunImplClass :: Maybe Text
      <*> arbitrary -- pipelineRunImplLinks :: Maybe PipelineRunImpllinks
      <*> arbitrary -- pipelineRunImplDurationInMillis :: Maybe Int
      <*> arbitrary -- pipelineRunImplEnQueueTime :: Maybe Text
      <*> arbitrary -- pipelineRunImplEndTime :: Maybe Text
      <*> arbitrary -- pipelineRunImplEstimatedDurationInMillis :: Maybe Int
      <*> arbitrary -- pipelineRunImplId :: Maybe Text
      <*> arbitrary -- pipelineRunImplOrganization :: Maybe Text
      <*> arbitrary -- pipelineRunImplPipeline :: Maybe Text
      <*> arbitrary -- pipelineRunImplResult :: Maybe Text
      <*> arbitrary -- pipelineRunImplRunSummary :: Maybe Text
      <*> arbitrary -- pipelineRunImplStartTime :: Maybe Text
      <*> arbitrary -- pipelineRunImplState :: Maybe Text
      <*> arbitrary -- pipelineRunImplType :: Maybe Text
      <*> arbitrary -- pipelineRunImplCommitId :: Maybe Text
    
instance Arbitrary PipelineRunImpllinks where
  arbitrary =
    PipelineRunImpllinks
      <$> arbitrary -- pipelineRunImpllinksNodes :: Maybe Link
      <*> arbitrary -- pipelineRunImpllinksLog :: Maybe Link
      <*> arbitrary -- pipelineRunImpllinksSelf :: Maybe Link
      <*> arbitrary -- pipelineRunImpllinksActions :: Maybe Link
      <*> arbitrary -- pipelineRunImpllinksSteps :: Maybe Link
      <*> arbitrary -- pipelineRunImpllinksClass :: Maybe Text
    
instance Arbitrary PipelineRunNode where
  arbitrary =
    PipelineRunNode
      <$> arbitrary -- pipelineRunNodeClass :: Maybe Text
      <*> arbitrary -- pipelineRunNodeDisplayName :: Maybe Text
      <*> arbitrary -- pipelineRunNodeDurationInMillis :: Maybe Int
      <*> arbitrary -- pipelineRunNodeEdges :: Maybe [PipelineRunNodeedges]
      <*> arbitrary -- pipelineRunNodeId :: Maybe Text
      <*> arbitrary -- pipelineRunNodeResult :: Maybe Text
      <*> arbitrary -- pipelineRunNodeStartTime :: Maybe Text
      <*> arbitrary -- pipelineRunNodeState :: Maybe Text
    
instance Arbitrary PipelineRunNodeSteps where
  arbitrary =
    
    pure PipelineRunNodeSteps
     
instance Arbitrary PipelineRunNodeedges where
  arbitrary =
    PipelineRunNodeedges
      <$> arbitrary -- pipelineRunNodeedgesId :: Maybe Text
      <*> arbitrary -- pipelineRunNodeedgesClass :: Maybe Text
    
instance Arbitrary PipelineRunNodes where
  arbitrary =
    
    pure PipelineRunNodes
     
instance Arbitrary PipelineRunSteps where
  arbitrary =
    
    pure PipelineRunSteps
     
instance Arbitrary PipelineRunartifacts where
  arbitrary =
    PipelineRunartifacts
      <$> arbitrary -- pipelineRunartifactsName :: Maybe Text
      <*> arbitrary -- pipelineRunartifactsSize :: Maybe Int
      <*> arbitrary -- pipelineRunartifactsUrl :: Maybe Text
      <*> arbitrary -- pipelineRunartifactsClass :: Maybe Text
    
instance Arbitrary PipelineRuns where
  arbitrary =
    
    pure PipelineRuns
     
instance Arbitrary PipelineStepImpl where
  arbitrary =
    PipelineStepImpl
      <$> arbitrary -- pipelineStepImplClass :: Maybe Text
      <*> arbitrary -- pipelineStepImplLinks :: Maybe PipelineStepImpllinks
      <*> arbitrary -- pipelineStepImplDisplayName :: Maybe Text
      <*> arbitrary -- pipelineStepImplDurationInMillis :: Maybe Int
      <*> arbitrary -- pipelineStepImplId :: Maybe Text
      <*> arbitrary -- pipelineStepImplInput :: Maybe InputStepImpl
      <*> arbitrary -- pipelineStepImplResult :: Maybe Text
      <*> arbitrary -- pipelineStepImplStartTime :: Maybe Text
      <*> arbitrary -- pipelineStepImplState :: Maybe Text
    
instance Arbitrary PipelineStepImpllinks where
  arbitrary =
    PipelineStepImpllinks
      <$> arbitrary -- pipelineStepImpllinksSelf :: Maybe Link
      <*> arbitrary -- pipelineStepImpllinksActions :: Maybe Link
      <*> arbitrary -- pipelineStepImpllinksClass :: Maybe Text
    
instance Arbitrary PipelinelatestRun where
  arbitrary =
    PipelinelatestRun
      <$> arbitrary -- pipelinelatestRunArtifacts :: Maybe [PipelinelatestRunartifacts]
      <*> arbitrary -- pipelinelatestRunDurationInMillis :: Maybe Int
      <*> arbitrary -- pipelinelatestRunEstimatedDurationInMillis :: Maybe Int
      <*> arbitrary -- pipelinelatestRunEnQueueTime :: Maybe Text
      <*> arbitrary -- pipelinelatestRunEndTime :: Maybe Text
      <*> arbitrary -- pipelinelatestRunId :: Maybe Text
      <*> arbitrary -- pipelinelatestRunOrganization :: Maybe Text
      <*> arbitrary -- pipelinelatestRunPipeline :: Maybe Text
      <*> arbitrary -- pipelinelatestRunResult :: Maybe Text
      <*> arbitrary -- pipelinelatestRunRunSummary :: Maybe Text
      <*> arbitrary -- pipelinelatestRunStartTime :: Maybe Text
      <*> arbitrary -- pipelinelatestRunState :: Maybe Text
      <*> arbitrary -- pipelinelatestRunType :: Maybe Text
      <*> arbitrary -- pipelinelatestRunCommitId :: Maybe Text
      <*> arbitrary -- pipelinelatestRunClass :: Maybe Text
    
instance Arbitrary PipelinelatestRunartifacts where
  arbitrary =
    PipelinelatestRunartifacts
      <$> arbitrary -- pipelinelatestRunartifactsName :: Maybe Text
      <*> arbitrary -- pipelinelatestRunartifactsSize :: Maybe Int
      <*> arbitrary -- pipelinelatestRunartifactsUrl :: Maybe Text
      <*> arbitrary -- pipelinelatestRunartifactsClass :: Maybe Text
    
instance Arbitrary Pipelines where
  arbitrary =
    
    pure Pipelines
     
instance Arbitrary Queue where
  arbitrary =
    Queue
      <$> arbitrary -- queueClass :: Maybe Text
      <*> arbitrary -- queueItems :: Maybe [QueueBlockedItem]
    
instance Arbitrary QueueBlockedItem where
  arbitrary =
    QueueBlockedItem
      <$> arbitrary -- queueBlockedItemClass :: Maybe Text
      <*> arbitrary -- queueBlockedItemActions :: Maybe [CauseAction]
      <*> arbitrary -- queueBlockedItemBlocked :: Maybe Bool
      <*> arbitrary -- queueBlockedItemBuildable :: Maybe Bool
      <*> arbitrary -- queueBlockedItemId :: Maybe Int
      <*> arbitrary -- queueBlockedItemInQueueSince :: Maybe Int
      <*> arbitrary -- queueBlockedItemParams :: Maybe Text
      <*> arbitrary -- queueBlockedItemStuck :: Maybe Bool
      <*> arbitrary -- queueBlockedItemTask :: Maybe FreeStyleProject
      <*> arbitrary -- queueBlockedItemUrl :: Maybe Text
      <*> arbitrary -- queueBlockedItemWhy :: Maybe Text
      <*> arbitrary -- queueBlockedItemBuildableStartMilliseconds :: Maybe Int
    
instance Arbitrary QueueItemImpl where
  arbitrary =
    QueueItemImpl
      <$> arbitrary -- queueItemImplClass :: Maybe Text
      <*> arbitrary -- queueItemImplExpectedBuildNumber :: Maybe Int
      <*> arbitrary -- queueItemImplId :: Maybe Text
      <*> arbitrary -- queueItemImplPipeline :: Maybe Text
      <*> arbitrary -- queueItemImplQueuedTime :: Maybe Int
    
instance Arbitrary QueueLeftItem where
  arbitrary =
    QueueLeftItem
      <$> arbitrary -- queueLeftItemClass :: Maybe Text
      <*> arbitrary -- queueLeftItemActions :: Maybe [CauseAction]
      <*> arbitrary -- queueLeftItemBlocked :: Maybe Bool
      <*> arbitrary -- queueLeftItemBuildable :: Maybe Bool
      <*> arbitrary -- queueLeftItemId :: Maybe Int
      <*> arbitrary -- queueLeftItemInQueueSince :: Maybe Int
      <*> arbitrary -- queueLeftItemParams :: Maybe Text
      <*> arbitrary -- queueLeftItemStuck :: Maybe Bool
      <*> arbitrary -- queueLeftItemTask :: Maybe FreeStyleProject
      <*> arbitrary -- queueLeftItemUrl :: Maybe Text
      <*> arbitrary -- queueLeftItemWhy :: Maybe Text
      <*> arbitrary -- queueLeftItemCancelled :: Maybe Bool
      <*> arbitrary -- queueLeftItemExecutable :: Maybe FreeStyleBuild
    
instance Arbitrary ResponseTimeMonitorData where
  arbitrary =
    ResponseTimeMonitorData
      <$> arbitrary -- responseTimeMonitorDataClass :: Maybe Text
      <*> arbitrary -- responseTimeMonitorDataTimestamp :: Maybe Int
      <*> arbitrary -- responseTimeMonitorDataAverage :: Maybe Int
    
instance Arbitrary ScmOrganisations where
  arbitrary =
    
    pure ScmOrganisations
     
instance Arbitrary StringParameterDefinition where
  arbitrary =
    StringParameterDefinition
      <$> arbitrary -- stringParameterDefinitionClass :: Maybe Text
      <*> arbitrary -- stringParameterDefinitionDefaultParameterValue :: Maybe StringParameterValue
      <*> arbitrary -- stringParameterDefinitionDescription :: Maybe Text
      <*> arbitrary -- stringParameterDefinitionName :: Maybe Text
      <*> arbitrary -- stringParameterDefinitionType :: Maybe Text
    
instance Arbitrary StringParameterValue where
  arbitrary =
    StringParameterValue
      <$> arbitrary -- stringParameterValueClass :: Maybe Text
      <*> arbitrary -- stringParameterValueName :: Maybe Text
      <*> arbitrary -- stringParameterValueValue :: Maybe Text
    
instance Arbitrary SwapSpaceMonitorMemoryUsage2 where
  arbitrary =
    SwapSpaceMonitorMemoryUsage2
      <$> arbitrary -- swapSpaceMonitorMemoryUsage2Class :: Maybe Text
      <*> arbitrary -- swapSpaceMonitorMemoryUsage2AvailablePhysicalMemory :: Maybe Int
      <*> arbitrary -- swapSpaceMonitorMemoryUsage2AvailableSwapSpace :: Maybe Int
      <*> arbitrary -- swapSpaceMonitorMemoryUsage2TotalPhysicalMemory :: Maybe Int
      <*> arbitrary -- swapSpaceMonitorMemoryUsage2TotalSwapSpace :: Maybe Int
    
instance Arbitrary UnlabeledLoadStatistics where
  arbitrary =
    UnlabeledLoadStatistics
      <$> arbitrary -- unlabeledLoadStatisticsClass :: Maybe Text
    
instance Arbitrary User where
  arbitrary =
    User
      <$> arbitrary -- userClass :: Maybe Text
      <*> arbitrary -- userId :: Maybe Text
      <*> arbitrary -- userFullName :: Maybe Text
      <*> arbitrary -- userEmail :: Maybe Text
      <*> arbitrary -- userName :: Maybe Text
    
instance Arbitrary UserFavorites where
  arbitrary =
    
    pure UserFavorites
     
instance Arbitrary Users where
  arbitrary =
    
    pure Users
     


