/* SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO"; */
/* SET AUTOCOMMIT = 0; */
/* START TRANSACTION; */
/* SET time_zone = "+00:00"; */

-- --------------------------------------------------------

--
-- Table structure for table `AllView` generated from model 'AllView'
--

CREATE TABLE IF NOT EXISTS `AllView` (
  `_class` TEXT DEFAULT NULL,
  `name` TEXT DEFAULT NULL,
  `url` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `BranchImpl` generated from model 'BranchImpl'
--

CREATE TABLE IF NOT EXISTS `BranchImpl` (
  `_class` TEXT DEFAULT NULL,
  `displayName` TEXT DEFAULT NULL,
  `estimatedDurationInMillis` INT DEFAULT NULL,
  `fullDisplayName` TEXT DEFAULT NULL,
  `fullName` TEXT DEFAULT NULL,
  `name` TEXT DEFAULT NULL,
  `organization` TEXT DEFAULT NULL,
  `parameters` JSON DEFAULT NULL,
  `permissions` TEXT DEFAULT NULL,
  `weatherScore` INT DEFAULT NULL,
  `pullRequest` TEXT DEFAULT NULL,
  `_links` TEXT DEFAULT NULL,
  `latestRun` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `BranchImpllinks` generated from model 'BranchImpllinks'
--

CREATE TABLE IF NOT EXISTS `BranchImpllinks` (
  `self` TEXT DEFAULT NULL,
  `actions` TEXT DEFAULT NULL,
  `runs` TEXT DEFAULT NULL,
  `queue` TEXT DEFAULT NULL,
  `_class` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `BranchImplpermissions` generated from model 'BranchImplpermissions'
--

CREATE TABLE IF NOT EXISTS `BranchImplpermissions` (
  `create` TINYINT(1) DEFAULT NULL,
  `read` TINYINT(1) DEFAULT NULL,
  `start` TINYINT(1) DEFAULT NULL,
  `stop` TINYINT(1) DEFAULT NULL,
  `_class` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `CauseAction` generated from model 'CauseAction'
--

CREATE TABLE IF NOT EXISTS `CauseAction` (
  `_class` TEXT DEFAULT NULL,
  `causes` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `CauseUserIdCause` generated from model 'CauseUserIdCause'
--

CREATE TABLE IF NOT EXISTS `CauseUserIdCause` (
  `_class` TEXT DEFAULT NULL,
  `shortDescription` TEXT DEFAULT NULL,
  `userId` TEXT DEFAULT NULL,
  `userName` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ClassesByClass` generated from model 'ClassesByClass'
--

CREATE TABLE IF NOT EXISTS `ClassesByClass` (
  `classes` JSON DEFAULT NULL,
  `_class` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ClockDifference` generated from model 'ClockDifference'
--

CREATE TABLE IF NOT EXISTS `ClockDifference` (
  `_class` TEXT DEFAULT NULL,
  `diff` INT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ComputerSet` generated from model 'ComputerSet'
--

CREATE TABLE IF NOT EXISTS `ComputerSet` (
  `_class` TEXT DEFAULT NULL,
  `busyExecutors` INT DEFAULT NULL,
  `computer` JSON DEFAULT NULL,
  `displayName` TEXT DEFAULT NULL,
  `totalExecutors` INT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `DefaultCrumbIssuer` generated from model 'DefaultCrumbIssuer'
--

CREATE TABLE IF NOT EXISTS `DefaultCrumbIssuer` (
  `_class` TEXT DEFAULT NULL,
  `crumb` TEXT DEFAULT NULL,
  `crumbRequestField` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `DiskSpaceMonitorDescriptorDiskSpace` generated from model 'DiskSpaceMonitorDescriptorDiskSpace'
--

CREATE TABLE IF NOT EXISTS `DiskSpaceMonitorDescriptorDiskSpace` (
  `_class` TEXT DEFAULT NULL,
  `timestamp` INT DEFAULT NULL,
  `path` TEXT DEFAULT NULL,
  `size` INT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `EmptyChangeLogSet` generated from model 'EmptyChangeLogSet'
--

CREATE TABLE IF NOT EXISTS `EmptyChangeLogSet` (
  `_class` TEXT DEFAULT NULL,
  `kind` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ExtensionClassContainerImpl1` generated from model 'ExtensionClassContainerImpl1'
--

CREATE TABLE IF NOT EXISTS `ExtensionClassContainerImpl1` (
  `_class` TEXT DEFAULT NULL,
  `_links` TEXT DEFAULT NULL,
  `map` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ExtensionClassContainerImpl1links` generated from model 'ExtensionClassContainerImpl1links'
--

CREATE TABLE IF NOT EXISTS `ExtensionClassContainerImpl1links` (
  `self` TEXT DEFAULT NULL,
  `_class` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ExtensionClassContainerImpl1map` generated from model 'ExtensionClassContainerImpl1map'
--

CREATE TABLE IF NOT EXISTS `ExtensionClassContainerImpl1map` (
  `io.jenkins.blueocean.service.embedded.rest.PipelineImpl` TEXT DEFAULT NULL,
  `io.jenkins.blueocean.service.embedded.rest.MultiBranchPipelineIm` TEXT DEFAULT NULL,
  `_class` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ExtensionClassImpl` generated from model 'ExtensionClassImpl'
--

CREATE TABLE IF NOT EXISTS `ExtensionClassImpl` (
  `_class` TEXT DEFAULT NULL,
  `_links` TEXT DEFAULT NULL,
  `classes` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ExtensionClassImpllinks` generated from model 'ExtensionClassImpllinks'
--

CREATE TABLE IF NOT EXISTS `ExtensionClassImpllinks` (
  `self` TEXT DEFAULT NULL,
  `_class` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `FavoriteImpl` generated from model 'FavoriteImpl'
--

CREATE TABLE IF NOT EXISTS `FavoriteImpl` (
  `_class` TEXT DEFAULT NULL,
  `_links` TEXT DEFAULT NULL,
  `item` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `FavoriteImpllinks` generated from model 'FavoriteImpllinks'
--

CREATE TABLE IF NOT EXISTS `FavoriteImpllinks` (
  `self` TEXT DEFAULT NULL,
  `_class` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `FreeStyleBuild` generated from model 'FreeStyleBuild'
--

CREATE TABLE IF NOT EXISTS `FreeStyleBuild` (
  `_class` TEXT DEFAULT NULL,
  `number` INT DEFAULT NULL,
  `url` TEXT DEFAULT NULL,
  `actions` JSON DEFAULT NULL,
  `building` TINYINT(1) DEFAULT NULL,
  `description` TEXT DEFAULT NULL,
  `displayName` TEXT DEFAULT NULL,
  `duration` INT DEFAULT NULL,
  `estimatedDuration` INT DEFAULT NULL,
  `executor` TEXT DEFAULT NULL,
  `fullDisplayName` TEXT DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `keepLog` TINYINT(1) DEFAULT NULL,
  `queueId` INT DEFAULT NULL,
  `result` TEXT DEFAULT NULL,
  `timestamp` INT DEFAULT NULL,
  `builtOn` TEXT DEFAULT NULL,
  `changeSet` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `FreeStyleProject` generated from model 'FreeStyleProject'
--

CREATE TABLE IF NOT EXISTS `FreeStyleProject` (
  `_class` TEXT DEFAULT NULL,
  `name` TEXT DEFAULT NULL,
  `url` TEXT DEFAULT NULL,
  `color` TEXT DEFAULT NULL,
  `actions` JSON DEFAULT NULL,
  `description` TEXT DEFAULT NULL,
  `displayName` TEXT DEFAULT NULL,
  `displayNameOrNull` TEXT DEFAULT NULL,
  `fullDisplayName` TEXT DEFAULT NULL,
  `fullName` TEXT DEFAULT NULL,
  `buildable` TINYINT(1) DEFAULT NULL,
  `builds` JSON DEFAULT NULL,
  `firstBuild` TEXT DEFAULT NULL,
  `healthReport` JSON DEFAULT NULL,
  `inQueue` TINYINT(1) DEFAULT NULL,
  `keepDependencies` TINYINT(1) DEFAULT NULL,
  `lastBuild` TEXT DEFAULT NULL,
  `lastCompletedBuild` TEXT DEFAULT NULL,
  `lastFailedBuild` TEXT DEFAULT NULL,
  `lastStableBuild` TEXT DEFAULT NULL,
  `lastSuccessfulBuild` TEXT DEFAULT NULL,
  `lastUnstableBuild` TEXT DEFAULT NULL,
  `lastUnsuccessfulBuild` TEXT DEFAULT NULL,
  `nextBuildNumber` INT DEFAULT NULL,
  `queueItem` TEXT DEFAULT NULL,
  `concurrentBuild` TINYINT(1) DEFAULT NULL,
  `scm` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `FreeStyleProjectactions` generated from model 'FreeStyleProjectactions'
--

CREATE TABLE IF NOT EXISTS `FreeStyleProjectactions` (
  `_class` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `FreeStyleProjecthealthReport` generated from model 'FreeStyleProjecthealthReport'
--

CREATE TABLE IF NOT EXISTS `FreeStyleProjecthealthReport` (
  `description` TEXT DEFAULT NULL,
  `iconClassName` TEXT DEFAULT NULL,
  `iconUrl` TEXT DEFAULT NULL,
  `score` INT DEFAULT NULL,
  `_class` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `GenericResource` generated from model 'GenericResource'
--

CREATE TABLE IF NOT EXISTS `GenericResource` (
  `_class` TEXT DEFAULT NULL,
  `displayName` TEXT DEFAULT NULL,
  `durationInMillis` INT DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `result` TEXT DEFAULT NULL,
  `startTime` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `GithubContent` generated from model 'GithubContent'
--

CREATE TABLE IF NOT EXISTS `GithubContent` (
  `name` TEXT DEFAULT NULL,
  `sha` TEXT DEFAULT NULL,
  `_class` TEXT DEFAULT NULL,
  `repo` TEXT DEFAULT NULL,
  `size` INT DEFAULT NULL,
  `owner` TEXT DEFAULT NULL,
  `path` TEXT DEFAULT NULL,
  `base64Data` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `GithubFile` generated from model 'GithubFile'
--

CREATE TABLE IF NOT EXISTS `GithubFile` (
  `content` TEXT DEFAULT NULL,
  `_class` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `GithubOrganization` generated from model 'GithubOrganization'
--

CREATE TABLE IF NOT EXISTS `GithubOrganization` (
  `_class` TEXT DEFAULT NULL,
  `_links` TEXT DEFAULT NULL,
  `jenkinsOrganizationPipeline` TINYINT(1) DEFAULT NULL,
  `name` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `GithubOrganizationlinks` generated from model 'GithubOrganizationlinks'
--

CREATE TABLE IF NOT EXISTS `GithubOrganizationlinks` (
  `repositories` TEXT DEFAULT NULL,
  `self` TEXT DEFAULT NULL,
  `_class` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `GithubRepositories` generated from model 'GithubRepositories'
--

CREATE TABLE IF NOT EXISTS `GithubRepositories` (
  `_class` TEXT DEFAULT NULL,
  `_links` TEXT DEFAULT NULL,
  `items` JSON DEFAULT NULL,
  `lastPage` INT DEFAULT NULL,
  `nextPage` INT DEFAULT NULL,
  `pageSize` INT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `GithubRepositorieslinks` generated from model 'GithubRepositorieslinks'
--

CREATE TABLE IF NOT EXISTS `GithubRepositorieslinks` (
  `self` TEXT DEFAULT NULL,
  `_class` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `GithubRepository` generated from model 'GithubRepository'
--

CREATE TABLE IF NOT EXISTS `GithubRepository` (
  `_class` TEXT DEFAULT NULL,
  `_links` TEXT DEFAULT NULL,
  `defaultBranch` TEXT DEFAULT NULL,
  `description` TEXT DEFAULT NULL,
  `name` TEXT DEFAULT NULL,
  `permissions` TEXT DEFAULT NULL,
  `private` TINYINT(1) DEFAULT NULL,
  `fullName` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `GithubRepositorylinks` generated from model 'GithubRepositorylinks'
--

CREATE TABLE IF NOT EXISTS `GithubRepositorylinks` (
  `self` TEXT DEFAULT NULL,
  `_class` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `GithubRepositorypermissions` generated from model 'GithubRepositorypermissions'
--

CREATE TABLE IF NOT EXISTS `GithubRepositorypermissions` (
  `admin` TINYINT(1) DEFAULT NULL,
  `push` TINYINT(1) DEFAULT NULL,
  `pull` TINYINT(1) DEFAULT NULL,
  `_class` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `GithubRespositoryContainer` generated from model 'GithubRespositoryContainer'
--

CREATE TABLE IF NOT EXISTS `GithubRespositoryContainer` (
  `_class` TEXT DEFAULT NULL,
  `_links` TEXT DEFAULT NULL,
  `repositories` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `GithubRespositoryContainerlinks` generated from model 'GithubRespositoryContainerlinks'
--

CREATE TABLE IF NOT EXISTS `GithubRespositoryContainerlinks` (
  `self` TEXT DEFAULT NULL,
  `_class` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `GithubScm` generated from model 'GithubScm'
--

CREATE TABLE IF NOT EXISTS `GithubScm` (
  `_class` TEXT DEFAULT NULL,
  `_links` TEXT DEFAULT NULL,
  `credentialId` TEXT DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `uri` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `GithubScmlinks` generated from model 'GithubScmlinks'
--

CREATE TABLE IF NOT EXISTS `GithubScmlinks` (
  `self` TEXT DEFAULT NULL,
  `_class` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `Hudson` generated from model 'Hudson'
--

CREATE TABLE IF NOT EXISTS `Hudson` (
  `_class` TEXT DEFAULT NULL,
  `assignedLabels` JSON DEFAULT NULL,
  `mode` TEXT DEFAULT NULL,
  `nodeDescription` TEXT DEFAULT NULL,
  `nodeName` TEXT DEFAULT NULL,
  `numExecutors` INT DEFAULT NULL,
  `description` TEXT DEFAULT NULL,
  `jobs` JSON DEFAULT NULL,
  `primaryView` TEXT DEFAULT NULL,
  `quietingDown` TINYINT(1) DEFAULT NULL,
  `slaveAgentPort` INT DEFAULT NULL,
  `unlabeledLoad` TEXT DEFAULT NULL,
  `useCrumbs` TINYINT(1) DEFAULT NULL,
  `useSecurity` TINYINT(1) DEFAULT NULL,
  `views` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `HudsonMasterComputer` generated from model 'HudsonMasterComputer'
--

CREATE TABLE IF NOT EXISTS `HudsonMasterComputer` (
  `_class` TEXT DEFAULT NULL,
  `displayName` TEXT DEFAULT NULL,
  `executors` JSON DEFAULT NULL,
  `icon` TEXT DEFAULT NULL,
  `iconClassName` TEXT DEFAULT NULL,
  `idle` TINYINT(1) DEFAULT NULL,
  `jnlpAgent` TINYINT(1) DEFAULT NULL,
  `launchSupported` TINYINT(1) DEFAULT NULL,
  `loadStatistics` TEXT DEFAULT NULL,
  `manualLaunchAllowed` TINYINT(1) DEFAULT NULL,
  `monitorData` TEXT DEFAULT NULL,
  `numExecutors` INT DEFAULT NULL,
  `offline` TINYINT(1) DEFAULT NULL,
  `offlineCause` TEXT DEFAULT NULL,
  `offlineCauseReason` TEXT DEFAULT NULL,
  `temporarilyOffline` TINYINT(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `HudsonMasterComputerexecutors` generated from model 'HudsonMasterComputerexecutors'
--

CREATE TABLE IF NOT EXISTS `HudsonMasterComputerexecutors` (
  `currentExecutable` TEXT DEFAULT NULL,
  `idle` TINYINT(1) DEFAULT NULL,
  `likelyStuck` TINYINT(1) DEFAULT NULL,
  `number` INT DEFAULT NULL,
  `progress` INT DEFAULT NULL,
  `_class` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `HudsonMasterComputermonitorData` generated from model 'HudsonMasterComputermonitorData'
--

CREATE TABLE IF NOT EXISTS `HudsonMasterComputermonitorData` (
  `hudson.node_monitors.SwapSpaceMonitor` TEXT DEFAULT NULL,
  `hudson.node_monitors.TemporarySpaceMonitor` TEXT DEFAULT NULL,
  `hudson.node_monitors.DiskSpaceMonitor` TEXT DEFAULT NULL,
  `hudson.node_monitors.ArchitectureMonitor` TEXT DEFAULT NULL,
  `hudson.node_monitors.ResponseTimeMonitor` TEXT DEFAULT NULL,
  `hudson.node_monitors.ClockMonitor` TEXT DEFAULT NULL,
  `_class` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `HudsonassignedLabels` generated from model 'HudsonassignedLabels'
--

CREATE TABLE IF NOT EXISTS `HudsonassignedLabels` (
  `_class` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `InputStepImpl` generated from model 'InputStepImpl'
--

CREATE TABLE IF NOT EXISTS `InputStepImpl` (
  `_class` TEXT DEFAULT NULL,
  `_links` TEXT DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `message` TEXT DEFAULT NULL,
  `ok` TEXT DEFAULT NULL,
  `parameters` JSON DEFAULT NULL,
  `submitter` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `InputStepImpllinks` generated from model 'InputStepImpllinks'
--

CREATE TABLE IF NOT EXISTS `InputStepImpllinks` (
  `self` TEXT DEFAULT NULL,
  `_class` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `Label1` generated from model 'Label1'
--

CREATE TABLE IF NOT EXISTS `Label1` (
  `_class` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `Link` generated from model 'Link'
--

CREATE TABLE IF NOT EXISTS `Link` (
  `_class` TEXT DEFAULT NULL,
  `href` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ListView` generated from model 'ListView'
--

CREATE TABLE IF NOT EXISTS `ListView` (
  `_class` TEXT DEFAULT NULL,
  `description` TEXT DEFAULT NULL,
  `jobs` JSON DEFAULT NULL,
  `name` TEXT DEFAULT NULL,
  `url` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `MultibranchPipeline` generated from model 'MultibranchPipeline'
--

CREATE TABLE IF NOT EXISTS `MultibranchPipeline` (
  `displayName` TEXT DEFAULT NULL,
  `estimatedDurationInMillis` INT DEFAULT NULL,
  `latestRun` TEXT DEFAULT NULL,
  `name` TEXT DEFAULT NULL,
  `organization` TEXT DEFAULT NULL,
  `weatherScore` INT DEFAULT NULL,
  `branchNames` JSON DEFAULT NULL,
  `numberOfFailingBranches` INT DEFAULT NULL,
  `numberOfFailingPullRequests` INT DEFAULT NULL,
  `numberOfSuccessfulBranches` INT DEFAULT NULL,
  `numberOfSuccessfulPullRequests` INT DEFAULT NULL,
  `totalNumberOfBranches` INT DEFAULT NULL,
  `totalNumberOfPullRequests` INT DEFAULT NULL,
  `_class` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `NullSCM` generated from model 'NullSCM'
--

CREATE TABLE IF NOT EXISTS `NullSCM` (
  `_class` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `Organisation` generated from model 'Organisation'
--

CREATE TABLE IF NOT EXISTS `Organisation` (
  `_class` TEXT DEFAULT NULL,
  `name` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `Pipeline` generated from model 'Pipeline'
--

CREATE TABLE IF NOT EXISTS `Pipeline` (
  `_class` TEXT DEFAULT NULL,
  `organization` TEXT DEFAULT NULL,
  `name` TEXT DEFAULT NULL,
  `displayName` TEXT DEFAULT NULL,
  `fullName` TEXT DEFAULT NULL,
  `weatherScore` INT DEFAULT NULL,
  `estimatedDurationInMillis` INT DEFAULT NULL,
  `latestRun` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PipelineActivity` generated from model 'PipelineActivity'
--

CREATE TABLE IF NOT EXISTS `PipelineActivity` (
  `_class` TEXT DEFAULT NULL,
  `artifacts` JSON DEFAULT NULL,
  `durationInMillis` INT DEFAULT NULL,
  `estimatedDurationInMillis` INT DEFAULT NULL,
  `enQueueTime` TEXT DEFAULT NULL,
  `endTime` TEXT DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `organization` TEXT DEFAULT NULL,
  `pipeline` TEXT DEFAULT NULL,
  `result` TEXT DEFAULT NULL,
  `runSummary` TEXT DEFAULT NULL,
  `startTime` TEXT DEFAULT NULL,
  `state` TEXT DEFAULT NULL,
  `type` TEXT DEFAULT NULL,
  `commitId` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PipelineActivityartifacts` generated from model 'PipelineActivityartifacts'
--

CREATE TABLE IF NOT EXISTS `PipelineActivityartifacts` (
  `name` TEXT DEFAULT NULL,
  `size` INT DEFAULT NULL,
  `url` TEXT DEFAULT NULL,
  `_class` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PipelineBranchesitem` generated from model 'PipelineBranchesitem'
--

CREATE TABLE IF NOT EXISTS `PipelineBranchesitem` (
  `displayName` TEXT DEFAULT NULL,
  `estimatedDurationInMillis` INT DEFAULT NULL,
  `name` TEXT DEFAULT NULL,
  `weatherScore` INT DEFAULT NULL,
  `latestRun` TEXT DEFAULT NULL,
  `organization` TEXT DEFAULT NULL,
  `pullRequest` TEXT DEFAULT NULL,
  `totalNumberOfPullRequests` INT DEFAULT NULL,
  `_class` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PipelineBranchesitemlatestRun` generated from model 'PipelineBranchesitemlatestRun'
--

CREATE TABLE IF NOT EXISTS `PipelineBranchesitemlatestRun` (
  `durationInMillis` INT DEFAULT NULL,
  `estimatedDurationInMillis` INT DEFAULT NULL,
  `enQueueTime` TEXT DEFAULT NULL,
  `endTime` TEXT DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `organization` TEXT DEFAULT NULL,
  `pipeline` TEXT DEFAULT NULL,
  `result` TEXT DEFAULT NULL,
  `runSummary` TEXT DEFAULT NULL,
  `startTime` TEXT DEFAULT NULL,
  `state` TEXT DEFAULT NULL,
  `type` TEXT DEFAULT NULL,
  `commitId` TEXT DEFAULT NULL,
  `_class` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PipelineBranchesitempullRequest` generated from model 'PipelineBranchesitempullRequest'
--

CREATE TABLE IF NOT EXISTS `PipelineBranchesitempullRequest` (
  `_links` TEXT DEFAULT NULL,
  `author` TEXT DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `title` TEXT DEFAULT NULL,
  `url` TEXT DEFAULT NULL,
  `_class` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PipelineBranchesitempullRequestlinks` generated from model 'PipelineBranchesitempullRequestlinks'
--

CREATE TABLE IF NOT EXISTS `PipelineBranchesitempullRequestlinks` (
  `self` TEXT DEFAULT NULL,
  `_class` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PipelineFolderImpl` generated from model 'PipelineFolderImpl'
--

CREATE TABLE IF NOT EXISTS `PipelineFolderImpl` (
  `_class` TEXT DEFAULT NULL,
  `displayName` TEXT DEFAULT NULL,
  `fullName` TEXT DEFAULT NULL,
  `name` TEXT DEFAULT NULL,
  `organization` TEXT DEFAULT NULL,
  `numberOfFolders` INT DEFAULT NULL,
  `numberOfPipelines` INT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PipelineImpl` generated from model 'PipelineImpl'
--

CREATE TABLE IF NOT EXISTS `PipelineImpl` (
  `_class` TEXT DEFAULT NULL,
  `displayName` TEXT DEFAULT NULL,
  `estimatedDurationInMillis` INT DEFAULT NULL,
  `fullName` TEXT DEFAULT NULL,
  `latestRun` TEXT DEFAULT NULL,
  `name` TEXT DEFAULT NULL,
  `organization` TEXT DEFAULT NULL,
  `weatherScore` INT DEFAULT NULL,
  `_links` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PipelineImpllinks` generated from model 'PipelineImpllinks'
--

CREATE TABLE IF NOT EXISTS `PipelineImpllinks` (
  `runs` TEXT DEFAULT NULL,
  `self` TEXT DEFAULT NULL,
  `queue` TEXT DEFAULT NULL,
  `actions` TEXT DEFAULT NULL,
  `_class` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PipelineRun` generated from model 'PipelineRun'
--

CREATE TABLE IF NOT EXISTS `PipelineRun` (
  `_class` TEXT DEFAULT NULL,
  `artifacts` JSON DEFAULT NULL,
  `durationInMillis` INT DEFAULT NULL,
  `estimatedDurationInMillis` INT DEFAULT NULL,
  `enQueueTime` TEXT DEFAULT NULL,
  `endTime` TEXT DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `organization` TEXT DEFAULT NULL,
  `pipeline` TEXT DEFAULT NULL,
  `result` TEXT DEFAULT NULL,
  `runSummary` TEXT DEFAULT NULL,
  `startTime` TEXT DEFAULT NULL,
  `state` TEXT DEFAULT NULL,
  `type` TEXT DEFAULT NULL,
  `commitId` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PipelineRunImpl` generated from model 'PipelineRunImpl'
--

CREATE TABLE IF NOT EXISTS `PipelineRunImpl` (
  `_class` TEXT DEFAULT NULL,
  `_links` TEXT DEFAULT NULL,
  `durationInMillis` INT DEFAULT NULL,
  `enQueueTime` TEXT DEFAULT NULL,
  `endTime` TEXT DEFAULT NULL,
  `estimatedDurationInMillis` INT DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `organization` TEXT DEFAULT NULL,
  `pipeline` TEXT DEFAULT NULL,
  `result` TEXT DEFAULT NULL,
  `runSummary` TEXT DEFAULT NULL,
  `startTime` TEXT DEFAULT NULL,
  `state` TEXT DEFAULT NULL,
  `type` TEXT DEFAULT NULL,
  `commitId` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PipelineRunImpllinks` generated from model 'PipelineRunImpllinks'
--

CREATE TABLE IF NOT EXISTS `PipelineRunImpllinks` (
  `nodes` TEXT DEFAULT NULL,
  `log` TEXT DEFAULT NULL,
  `self` TEXT DEFAULT NULL,
  `actions` TEXT DEFAULT NULL,
  `steps` TEXT DEFAULT NULL,
  `_class` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PipelineRunNode` generated from model 'PipelineRunNode'
--

CREATE TABLE IF NOT EXISTS `PipelineRunNode` (
  `_class` TEXT DEFAULT NULL,
  `displayName` TEXT DEFAULT NULL,
  `durationInMillis` INT DEFAULT NULL,
  `edges` JSON DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `result` TEXT DEFAULT NULL,
  `startTime` TEXT DEFAULT NULL,
  `state` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PipelineRunNodeedges` generated from model 'PipelineRunNodeedges'
--

CREATE TABLE IF NOT EXISTS `PipelineRunNodeedges` (
  `id` TEXT DEFAULT NULL,
  `_class` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PipelineRunartifacts` generated from model 'PipelineRunartifacts'
--

CREATE TABLE IF NOT EXISTS `PipelineRunartifacts` (
  `name` TEXT DEFAULT NULL,
  `size` INT DEFAULT NULL,
  `url` TEXT DEFAULT NULL,
  `_class` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PipelineStepImpl` generated from model 'PipelineStepImpl'
--

CREATE TABLE IF NOT EXISTS `PipelineStepImpl` (
  `_class` TEXT DEFAULT NULL,
  `_links` TEXT DEFAULT NULL,
  `displayName` TEXT DEFAULT NULL,
  `durationInMillis` INT DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `input` TEXT DEFAULT NULL,
  `result` TEXT DEFAULT NULL,
  `startTime` TEXT DEFAULT NULL,
  `state` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PipelineStepImpllinks` generated from model 'PipelineStepImpllinks'
--

CREATE TABLE IF NOT EXISTS `PipelineStepImpllinks` (
  `self` TEXT DEFAULT NULL,
  `actions` TEXT DEFAULT NULL,
  `_class` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PipelinelatestRun` generated from model 'PipelinelatestRun'
--

CREATE TABLE IF NOT EXISTS `PipelinelatestRun` (
  `artifacts` JSON DEFAULT NULL,
  `durationInMillis` INT DEFAULT NULL,
  `estimatedDurationInMillis` INT DEFAULT NULL,
  `enQueueTime` TEXT DEFAULT NULL,
  `endTime` TEXT DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `organization` TEXT DEFAULT NULL,
  `pipeline` TEXT DEFAULT NULL,
  `result` TEXT DEFAULT NULL,
  `runSummary` TEXT DEFAULT NULL,
  `startTime` TEXT DEFAULT NULL,
  `state` TEXT DEFAULT NULL,
  `type` TEXT DEFAULT NULL,
  `commitId` TEXT DEFAULT NULL,
  `_class` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `PipelinelatestRunartifacts` generated from model 'PipelinelatestRunartifacts'
--

CREATE TABLE IF NOT EXISTS `PipelinelatestRunartifacts` (
  `name` TEXT DEFAULT NULL,
  `size` INT DEFAULT NULL,
  `url` TEXT DEFAULT NULL,
  `_class` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `Queue` generated from model 'Queue'
--

CREATE TABLE IF NOT EXISTS `Queue` (
  `_class` TEXT DEFAULT NULL,
  `items` JSON DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `QueueBlockedItem` generated from model 'QueueBlockedItem'
--

CREATE TABLE IF NOT EXISTS `QueueBlockedItem` (
  `_class` TEXT DEFAULT NULL,
  `actions` JSON DEFAULT NULL,
  `blocked` TINYINT(1) DEFAULT NULL,
  `buildable` TINYINT(1) DEFAULT NULL,
  `id` INT DEFAULT NULL,
  `inQueueSince` INT DEFAULT NULL,
  `params` TEXT DEFAULT NULL,
  `stuck` TINYINT(1) DEFAULT NULL,
  `task` TEXT DEFAULT NULL,
  `url` TEXT DEFAULT NULL,
  `why` TEXT DEFAULT NULL,
  `buildableStartMilliseconds` INT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `QueueItemImpl` generated from model 'QueueItemImpl'
--

CREATE TABLE IF NOT EXISTS `QueueItemImpl` (
  `_class` TEXT DEFAULT NULL,
  `expectedBuildNumber` INT DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `pipeline` TEXT DEFAULT NULL,
  `queuedTime` INT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `QueueLeftItem` generated from model 'QueueLeftItem'
--

CREATE TABLE IF NOT EXISTS `QueueLeftItem` (
  `_class` TEXT DEFAULT NULL,
  `actions` JSON DEFAULT NULL,
  `blocked` TINYINT(1) DEFAULT NULL,
  `buildable` TINYINT(1) DEFAULT NULL,
  `id` INT DEFAULT NULL,
  `inQueueSince` INT DEFAULT NULL,
  `params` TEXT DEFAULT NULL,
  `stuck` TINYINT(1) DEFAULT NULL,
  `task` TEXT DEFAULT NULL,
  `url` TEXT DEFAULT NULL,
  `why` TEXT DEFAULT NULL,
  `cancelled` TINYINT(1) DEFAULT NULL,
  `executable` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `ResponseTimeMonitorData` generated from model 'ResponseTimeMonitorData'
--

CREATE TABLE IF NOT EXISTS `ResponseTimeMonitorData` (
  `_class` TEXT DEFAULT NULL,
  `timestamp` INT DEFAULT NULL,
  `average` INT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `StringParameterDefinition` generated from model 'StringParameterDefinition'
--

CREATE TABLE IF NOT EXISTS `StringParameterDefinition` (
  `_class` TEXT DEFAULT NULL,
  `defaultParameterValue` TEXT DEFAULT NULL,
  `description` TEXT DEFAULT NULL,
  `name` TEXT DEFAULT NULL,
  `type` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `StringParameterValue` generated from model 'StringParameterValue'
--

CREATE TABLE IF NOT EXISTS `StringParameterValue` (
  `_class` TEXT DEFAULT NULL,
  `name` TEXT DEFAULT NULL,
  `value` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `SwapSpaceMonitorMemoryUsage2` generated from model 'SwapSpaceMonitorMemoryUsage2'
--

CREATE TABLE IF NOT EXISTS `SwapSpaceMonitorMemoryUsage2` (
  `_class` TEXT DEFAULT NULL,
  `availablePhysicalMemory` INT DEFAULT NULL,
  `availableSwapSpace` INT DEFAULT NULL,
  `totalPhysicalMemory` INT DEFAULT NULL,
  `totalSwapSpace` INT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `UnlabeledLoadStatistics` generated from model 'UnlabeledLoadStatistics'
--

CREATE TABLE IF NOT EXISTS `UnlabeledLoadStatistics` (
  `_class` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `User` generated from model 'User'
--

CREATE TABLE IF NOT EXISTS `User` (
  `_class` TEXT DEFAULT NULL,
  `id` TEXT DEFAULT NULL,
  `fullName` TEXT DEFAULT NULL,
  `email` TEXT DEFAULT NULL,
  `name` TEXT DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


