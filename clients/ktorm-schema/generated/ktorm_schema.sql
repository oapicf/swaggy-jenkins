

-- --------------------------------------------------------------------------
-- Table structure for table `AllView` generated from model 'allView'
--

CREATE TABLE IF NOT EXISTS `AllView` (
  `_class` text,
  `name` text,
  `url` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `BranchImpl` generated from model 'branchImpl'
--

CREATE TABLE IF NOT EXISTS `BranchImpl` (
  `_class` text,
  `displayName` text,
  `estimatedDurationInMillis` int,
  `fullDisplayName` text,
  `fullName` text,
  `name` text,
  `organization` text,
  `permissions` long,
  `weatherScore` int,
  `pullRequest` text,
  `_links` long,
  `latestRun` long
); 

-- --------------------------------------------------------------------------
-- Table structure for table `BranchImplStringParameterDefinition` generated from model 'BranchImplStringParameterDefinition'

CREATE TABLE IF NOT EXISTS `BranchImplStringParameterDefinition` (
  `branchImpl` long NOT NULL
  `stringParameterDefinition` long NOT NULL
);


-- --------------------------------------------------------------------------
-- Table structure for table `BranchImpllinks` generated from model 'branchImpllinks'
--

CREATE TABLE IF NOT EXISTS `BranchImpllinks` (
  `self` long,
  `actions` long,
  `runs` long,
  `queue` long,
  `_class` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `BranchImplpermissions` generated from model 'branchImplpermissions'
--

CREATE TABLE IF NOT EXISTS `BranchImplpermissions` (
  `create` boolean,
  `read` boolean,
  `start` boolean,
  `stop` boolean,
  `_class` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `CauseAction` generated from model 'causeAction'
--

CREATE TABLE IF NOT EXISTS `CauseAction` (
  `_class` text,
); 

-- --------------------------------------------------------------------------
-- Table structure for table `CauseActionCauseUserIdCause` generated from model 'CauseActionCauseUserIdCause'

CREATE TABLE IF NOT EXISTS `CauseActionCauseUserIdCause` (
  `causeAction` long NOT NULL
  `causeUserIdCause` long NOT NULL
);


-- --------------------------------------------------------------------------
-- Table structure for table `CauseUserIdCause` generated from model 'causeUserIdCause'
--

CREATE TABLE IF NOT EXISTS `CauseUserIdCause` (
  `_class` text,
  `shortDescription` text,
  `userId` text,
  `userName` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `ClassesByClass` generated from model 'classesByClass'
--

CREATE TABLE IF NOT EXISTS `ClassesByClass` (
  `_class` text
); 

-- --------------------------------------------------------------------------
-- Table structure for table `ClassesByClassClasses` generated from model 'ClassesByClassClasses'

CREATE TABLE IF NOT EXISTS `ClassesByClassClasses` (
  `classesByClass` long NOT NULL
  `classes` text NOT NULL
);


-- --------------------------------------------------------------------------
-- Table structure for table `ClockDifference` generated from model 'clockDifference'
--

CREATE TABLE IF NOT EXISTS `ClockDifference` (
  `_class` text,
  `diff` int
); 


-- --------------------------------------------------------------------------
-- Table structure for table `ComputerSet` generated from model 'computerSet'
--

CREATE TABLE IF NOT EXISTS `ComputerSet` (
  `_class` text,
  `busyExecutors` int,
  `displayName` text,
  `totalExecutors` int
); 

-- --------------------------------------------------------------------------
-- Table structure for table `ComputerSetHudsonMasterComputer` generated from model 'ComputerSetHudsonMasterComputer'

CREATE TABLE IF NOT EXISTS `ComputerSetHudsonMasterComputer` (
  `computerSet` long NOT NULL
  `hudsonMasterComputer` long NOT NULL
);


-- --------------------------------------------------------------------------
-- Table structure for table `DefaultCrumbIssuer` generated from model 'defaultCrumbIssuer'
--

CREATE TABLE IF NOT EXISTS `DefaultCrumbIssuer` (
  `_class` text,
  `crumb` text,
  `crumbRequestField` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `DiskSpaceMonitorDescriptorDiskSpace` generated from model 'diskSpaceMonitorDescriptorDiskSpace'
--

CREATE TABLE IF NOT EXISTS `DiskSpaceMonitorDescriptorDiskSpace` (
  `_class` text,
  `timestamp` int,
  `path` text,
  `size` int
); 


-- --------------------------------------------------------------------------
-- Table structure for table `EmptyChangeLogSet` generated from model 'emptyChangeLogSet'
--

CREATE TABLE IF NOT EXISTS `EmptyChangeLogSet` (
  `_class` text,
  `kind` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `ExtensionClassContainerImpl1` generated from model 'extensionClassContainerImpl1'
--

CREATE TABLE IF NOT EXISTS `ExtensionClassContainerImpl1` (
  `_class` text,
  `_links` long,
  `map` long
); 


-- --------------------------------------------------------------------------
-- Table structure for table `ExtensionClassContainerImpl1links` generated from model 'extensionClassContainerImpl1links'
--

CREATE TABLE IF NOT EXISTS `ExtensionClassContainerImpl1links` (
  `self` long,
  `_class` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `ExtensionClassContainerImpl1map` generated from model 'extensionClassContainerImpl1map'
--

CREATE TABLE IF NOT EXISTS `ExtensionClassContainerImpl1map` (
  `iojenkinsblueoceanserviceembeddedrestPipelineImpl` long,
  `iojenkinsblueoceanserviceembeddedrestMultiBranchPipelineImpl` long,
  `_class` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `ExtensionClassImpl` generated from model 'extensionClassImpl'
--

CREATE TABLE IF NOT EXISTS `ExtensionClassImpl` (
  `_class` text,
  `_links` long,
); 

-- --------------------------------------------------------------------------
-- Table structure for table `ExtensionClassImplClasses` generated from model 'ExtensionClassImplClasses'

CREATE TABLE IF NOT EXISTS `ExtensionClassImplClasses` (
  `extensionClassImpl` long NOT NULL
  `classes` text NOT NULL
);


-- --------------------------------------------------------------------------
-- Table structure for table `ExtensionClassImpllinks` generated from model 'extensionClassImpllinks'
--

CREATE TABLE IF NOT EXISTS `ExtensionClassImpllinks` (
  `self` long,
  `_class` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `FavoriteImpl` generated from model 'favoriteImpl'
--

CREATE TABLE IF NOT EXISTS `FavoriteImpl` (
  `_class` text,
  `_links` long,
  `item` long
); 


-- --------------------------------------------------------------------------
-- Table structure for table `FavoriteImpllinks` generated from model 'favoriteImpllinks'
--

CREATE TABLE IF NOT EXISTS `FavoriteImpllinks` (
  `self` long,
  `_class` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `FreeStyleBuild` generated from model 'freeStyleBuild'
--

CREATE TABLE IF NOT EXISTS `FreeStyleBuild` (
  `_class` text,
  `number` int,
  `url` text,
  `building` boolean,
  `description` text,
  `displayName` text,
  `duration` int,
  `estimatedDuration` int,
  `executor` text,
  `fullDisplayName` text,
  `id` text PRIMARY KEY,
  `keepLog` boolean,
  `queueId` int,
  `result` text,
  `timestamp` int,
  `builtOn` text,
  `changeSet` long
); 

-- --------------------------------------------------------------------------
-- Table structure for table `FreeStyleBuildCauseAction` generated from model 'FreeStyleBuildCauseAction'

CREATE TABLE IF NOT EXISTS `FreeStyleBuildCauseAction` (
  `freeStyleBuild` long NOT NULL
  `causeAction` long NOT NULL
);


-- --------------------------------------------------------------------------
-- Table structure for table `FreeStyleProject` generated from model 'freeStyleProject'
--

CREATE TABLE IF NOT EXISTS `FreeStyleProject` (
  `_class` text,
  `name` text,
  `url` text,
  `color` text,
  `description` text,
  `displayName` text,
  `displayNameOrNull` text,
  `fullDisplayName` text,
  `fullName` text,
  `buildable` boolean,
  `firstBuild` long,
  `inQueue` boolean,
  `keepDependencies` boolean,
  `lastBuild` long,
  `lastCompletedBuild` long,
  `lastFailedBuild` text,
  `lastStableBuild` long,
  `lastSuccessfulBuild` long,
  `lastUnstableBuild` text,
  `lastUnsuccessfulBuild` text,
  `nextBuildNumber` int,
  `queueItem` text,
  `concurrentBuild` boolean,
  `scm` long
); 

-- --------------------------------------------------------------------------
-- Table structure for table `FreeStyleProjectFreeStyleProjectactions` generated from model 'FreeStyleProjectFreeStyleProjectactions'

CREATE TABLE IF NOT EXISTS `FreeStyleProjectFreeStyleProjectactions` (
  `freeStyleProject` long NOT NULL
  `freeStyleProjectactions` long NOT NULL
);

-- --------------------------------------------------------------------------
-- Table structure for table `FreeStyleProjectFreeStyleBuild` generated from model 'FreeStyleProjectFreeStyleBuild'

CREATE TABLE IF NOT EXISTS `FreeStyleProjectFreeStyleBuild` (
  `freeStyleProject` long NOT NULL
  `freeStyleBuild` long NOT NULL
);

-- --------------------------------------------------------------------------
-- Table structure for table `FreeStyleProjectFreeStyleProjecthealthReport` generated from model 'FreeStyleProjectFreeStyleProjecthealthReport'

CREATE TABLE IF NOT EXISTS `FreeStyleProjectFreeStyleProjecthealthReport` (
  `freeStyleProject` long NOT NULL
  `freeStyleProjecthealthReport` long NOT NULL
);


-- --------------------------------------------------------------------------
-- Table structure for table `FreeStyleProjectactions` generated from model 'freeStyleProjectactions'
--

CREATE TABLE IF NOT EXISTS `FreeStyleProjectactions` (
  `_class` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `FreeStyleProjecthealthReport` generated from model 'freeStyleProjecthealthReport'
--

CREATE TABLE IF NOT EXISTS `FreeStyleProjecthealthReport` (
  `description` text,
  `iconClassName` text,
  `iconUrl` text,
  `score` int,
  `_class` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `GenericResource` generated from model 'genericResource'
--

CREATE TABLE IF NOT EXISTS `GenericResource` (
  `_class` text,
  `displayName` text,
  `durationInMillis` int,
  `id` text PRIMARY KEY,
  `result` text,
  `startTime` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `GithubContent` generated from model 'githubContent'
--

CREATE TABLE IF NOT EXISTS `GithubContent` (
  `name` text,
  `sha` text,
  `_class` text,
  `repo` text,
  `size` int,
  `owner` text,
  `path` text,
  `base64Data` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `GithubFile` generated from model 'githubFile'
--

CREATE TABLE IF NOT EXISTS `GithubFile` (
  `content` long,
  `_class` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `GithubOrganization` generated from model 'githubOrganization'
--

CREATE TABLE IF NOT EXISTS `GithubOrganization` (
  `_class` text,
  `_links` long,
  `jenkinsOrganizationPipeline` boolean,
  `name` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `GithubOrganizationlinks` generated from model 'githubOrganizationlinks'
--

CREATE TABLE IF NOT EXISTS `GithubOrganizationlinks` (
  `repositories` long,
  `self` long,
  `_class` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `GithubRepositories` generated from model 'githubRepositories'
--

CREATE TABLE IF NOT EXISTS `GithubRepositories` (
  `_class` text,
  `_links` long,
  `lastPage` int,
  `nextPage` int,
  `pageSize` int
); 

-- --------------------------------------------------------------------------
-- Table structure for table `GithubRepositoriesGithubRepository` generated from model 'GithubRepositoriesGithubRepository'

CREATE TABLE IF NOT EXISTS `GithubRepositoriesGithubRepository` (
  `githubRepositories` long NOT NULL
  `githubRepository` long NOT NULL
);


-- --------------------------------------------------------------------------
-- Table structure for table `GithubRepositorieslinks` generated from model 'githubRepositorieslinks'
--

CREATE TABLE IF NOT EXISTS `GithubRepositorieslinks` (
  `self` long,
  `_class` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `GithubRepository` generated from model 'githubRepository'
--

CREATE TABLE IF NOT EXISTS `GithubRepository` (
  `_class` text,
  `_links` long,
  `defaultBranch` text,
  `description` text,
  `name` text,
  `permissions` long,
  `private` boolean,
  `fullName` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `GithubRepositorylinks` generated from model 'githubRepositorylinks'
--

CREATE TABLE IF NOT EXISTS `GithubRepositorylinks` (
  `self` long,
  `_class` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `GithubRepositorypermissions` generated from model 'githubRepositorypermissions'
--

CREATE TABLE IF NOT EXISTS `GithubRepositorypermissions` (
  `admin` boolean,
  `push` boolean,
  `pull` boolean,
  `_class` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `GithubRespositoryContainer` generated from model 'githubRespositoryContainer'
--

CREATE TABLE IF NOT EXISTS `GithubRespositoryContainer` (
  `_class` text,
  `_links` long,
  `repositories` long
); 


-- --------------------------------------------------------------------------
-- Table structure for table `GithubRespositoryContainerlinks` generated from model 'githubRespositoryContainerlinks'
--

CREATE TABLE IF NOT EXISTS `GithubRespositoryContainerlinks` (
  `self` long,
  `_class` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `GithubScm` generated from model 'githubScm'
--

CREATE TABLE IF NOT EXISTS `GithubScm` (
  `_class` text,
  `_links` long,
  `credentialId` text,
  `id` text PRIMARY KEY,
  `uri` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `GithubScmlinks` generated from model 'githubScmlinks'
--

CREATE TABLE IF NOT EXISTS `GithubScmlinks` (
  `self` long,
  `_class` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `Hudson` generated from model 'hudson'
--

CREATE TABLE IF NOT EXISTS `Hudson` (
  `_class` text,
  `mode` text,
  `nodeDescription` text,
  `nodeName` text,
  `numExecutors` int,
  `description` text,
  `primaryView` long,
  `quietingDown` boolean,
  `slaveAgentPort` int,
  `unlabeledLoad` long,
  `useCrumbs` boolean,
  `useSecurity` boolean,
); 

-- --------------------------------------------------------------------------
-- Table structure for table `HudsonHudsonassignedLabels` generated from model 'HudsonHudsonassignedLabels'

CREATE TABLE IF NOT EXISTS `HudsonHudsonassignedLabels` (
  `hudson` long NOT NULL
  `hudsonassignedLabels` long NOT NULL
);

-- --------------------------------------------------------------------------
-- Table structure for table `HudsonFreeStyleProject` generated from model 'HudsonFreeStyleProject'

CREATE TABLE IF NOT EXISTS `HudsonFreeStyleProject` (
  `hudson` long NOT NULL
  `freeStyleProject` long NOT NULL
);

-- --------------------------------------------------------------------------
-- Table structure for table `HudsonAllView` generated from model 'HudsonAllView'

CREATE TABLE IF NOT EXISTS `HudsonAllView` (
  `hudson` long NOT NULL
  `allView` long NOT NULL
);


-- --------------------------------------------------------------------------
-- Table structure for table `HudsonMasterComputer` generated from model 'hudsonMasterComputer'
--

CREATE TABLE IF NOT EXISTS `HudsonMasterComputer` (
  `_class` text,
  `displayName` text,
  `icon` text,
  `iconClassName` text,
  `idle` boolean,
  `jnlpAgent` boolean,
  `launchSupported` boolean,
  `loadStatistics` long,
  `manualLaunchAllowed` boolean,
  `monitorData` long,
  `numExecutors` int,
  `offline` boolean,
  `offlineCause` text,
  `offlineCauseReason` text,
  `temporarilyOffline` boolean
); 

-- --------------------------------------------------------------------------
-- Table structure for table `HudsonMasterComputerHudsonMasterComputerexecutors` generated from model 'HudsonMasterComputerHudsonMasterComputerexecutors'

CREATE TABLE IF NOT EXISTS `HudsonMasterComputerHudsonMasterComputerexecutors` (
  `hudsonMasterComputer` long NOT NULL
  `hudsonMasterComputerexecutors` long NOT NULL
);


-- --------------------------------------------------------------------------
-- Table structure for table `HudsonMasterComputerexecutors` generated from model 'hudsonMasterComputerexecutors'
--

CREATE TABLE IF NOT EXISTS `HudsonMasterComputerexecutors` (
  `currentExecutable` long,
  `idle` boolean,
  `likelyStuck` boolean,
  `number` int,
  `progress` int,
  `_class` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `HudsonMasterComputermonitorData` generated from model 'hudsonMasterComputermonitorData'
--

CREATE TABLE IF NOT EXISTS `HudsonMasterComputermonitorData` (
  `hudsonnode_monitorsSwapSpaceMonitor` long,
  `hudsonnode_monitorsTemporarySpaceMonitor` long,
  `hudsonnode_monitorsDiskSpaceMonitor` long,
  `hudsonnode_monitorsArchitectureMonitor` text,
  `hudsonnode_monitorsResponseTimeMonitor` long,
  `hudsonnode_monitorsClockMonitor` long,
  `_class` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `HudsonassignedLabels` generated from model 'hudsonassignedLabels'
--

CREATE TABLE IF NOT EXISTS `HudsonassignedLabels` (
  `_class` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `InputStepImpl` generated from model 'inputStepImpl'
--

CREATE TABLE IF NOT EXISTS `InputStepImpl` (
  `_class` text,
  `_links` long,
  `id` text PRIMARY KEY,
  `message` text,
  `ok` text,
  `submitter` text
); 

-- --------------------------------------------------------------------------
-- Table structure for table `InputStepImplStringParameterDefinition` generated from model 'InputStepImplStringParameterDefinition'

CREATE TABLE IF NOT EXISTS `InputStepImplStringParameterDefinition` (
  `inputStepImpl` long NOT NULL
  `stringParameterDefinition` long NOT NULL
);


-- --------------------------------------------------------------------------
-- Table structure for table `InputStepImpllinks` generated from model 'inputStepImpllinks'
--

CREATE TABLE IF NOT EXISTS `InputStepImpllinks` (
  `self` long,
  `_class` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `Label1` generated from model 'label1'
--

CREATE TABLE IF NOT EXISTS `Label1` (
  `_class` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `Link` generated from model 'link'
--

CREATE TABLE IF NOT EXISTS `Link` (
  `_class` text,
  `href` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `ListView` generated from model 'listView'
--

CREATE TABLE IF NOT EXISTS `ListView` (
  `_class` text,
  `description` text,
  `name` text,
  `url` text
); 

-- --------------------------------------------------------------------------
-- Table structure for table `ListViewFreeStyleProject` generated from model 'ListViewFreeStyleProject'

CREATE TABLE IF NOT EXISTS `ListViewFreeStyleProject` (
  `listView` long NOT NULL
  `freeStyleProject` long NOT NULL
);


-- --------------------------------------------------------------------------
-- Table structure for table `MultibranchPipeline` generated from model 'multibranchPipeline'
--

CREATE TABLE IF NOT EXISTS `MultibranchPipeline` (
  `displayName` text,
  `estimatedDurationInMillis` int,
  `latestRun` text,
  `name` text,
  `organization` text,
  `weatherScore` int,
  `numberOfFailingBranches` int,
  `numberOfFailingPullRequests` int,
  `numberOfSuccessfulBranches` int,
  `numberOfSuccessfulPullRequests` int,
  `totalNumberOfBranches` int,
  `totalNumberOfPullRequests` int,
  `_class` text
); 

-- --------------------------------------------------------------------------
-- Table structure for table `MultibranchPipelineBranchNames` generated from model 'MultibranchPipelineBranchNames'

CREATE TABLE IF NOT EXISTS `MultibranchPipelineBranchNames` (
  `multibranchPipeline` long NOT NULL
  `branchNames` text NOT NULL
);


-- --------------------------------------------------------------------------
-- Table structure for table `NullSCM` generated from model 'nullSCM'
--

CREATE TABLE IF NOT EXISTS `NullSCM` (
  `_class` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `Organisation` generated from model 'organisation'
--

CREATE TABLE IF NOT EXISTS `Organisation` (
  `_class` text,
  `name` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `Pipeline` generated from model 'pipeline'
--

CREATE TABLE IF NOT EXISTS `Pipeline` (
  `_class` text,
  `organization` text,
  `name` text,
  `displayName` text,
  `fullName` text,
  `weatherScore` int,
  `estimatedDurationInMillis` int,
  `latestRun` long
); 


-- --------------------------------------------------------------------------
-- Table structure for table `PipelineActivity` generated from model 'pipelineActivity'
--

CREATE TABLE IF NOT EXISTS `PipelineActivity` (
  `_class` text,
  `durationInMillis` int,
  `estimatedDurationInMillis` int,
  `enQueueTime` text,
  `endTime` text,
  `id` text PRIMARY KEY,
  `organization` text,
  `pipeline` text,
  `result` text,
  `runSummary` text,
  `startTime` text,
  `state` text,
  `type` text,
  `commitId` text
); 

-- --------------------------------------------------------------------------
-- Table structure for table `PipelineActivityPipelineActivityartifacts` generated from model 'PipelineActivityPipelineActivityartifacts'

CREATE TABLE IF NOT EXISTS `PipelineActivityPipelineActivityartifacts` (
  `pipelineActivity` long NOT NULL
  `pipelineActivityartifacts` long NOT NULL
);


-- --------------------------------------------------------------------------
-- Table structure for table `PipelineActivityartifacts` generated from model 'pipelineActivityartifacts'
--

CREATE TABLE IF NOT EXISTS `PipelineActivityartifacts` (
  `name` text,
  `size` int,
  `url` text,
  `_class` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `PipelineBranchesitem` generated from model 'pipelineBranchesitem'
--

CREATE TABLE IF NOT EXISTS `PipelineBranchesitem` (
  `displayName` text,
  `estimatedDurationInMillis` int,
  `name` text,
  `weatherScore` int,
  `latestRun` long,
  `organization` text,
  `pullRequest` long,
  `totalNumberOfPullRequests` int,
  `_class` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `PipelineBranchesitemlatestRun` generated from model 'pipelineBranchesitemlatestRun'
--

CREATE TABLE IF NOT EXISTS `PipelineBranchesitemlatestRun` (
  `durationInMillis` int,
  `estimatedDurationInMillis` int,
  `enQueueTime` text,
  `endTime` text,
  `id` text PRIMARY KEY,
  `organization` text,
  `pipeline` text,
  `result` text,
  `runSummary` text,
  `startTime` text,
  `state` text,
  `type` text,
  `commitId` text,
  `_class` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `PipelineBranchesitempullRequest` generated from model 'pipelineBranchesitempullRequest'
--

CREATE TABLE IF NOT EXISTS `PipelineBranchesitempullRequest` (
  `_links` long,
  `author` text,
  `id` text PRIMARY KEY,
  `title` text,
  `url` text,
  `_class` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `PipelineBranchesitempullRequestlinks` generated from model 'pipelineBranchesitempullRequestlinks'
--

CREATE TABLE IF NOT EXISTS `PipelineBranchesitempullRequestlinks` (
  `self` text,
  `_class` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `PipelineFolderImpl` generated from model 'pipelineFolderImpl'
--

CREATE TABLE IF NOT EXISTS `PipelineFolderImpl` (
  `_class` text,
  `displayName` text,
  `fullName` text,
  `name` text,
  `organization` text,
  `numberOfFolders` int,
  `numberOfPipelines` int
); 


-- --------------------------------------------------------------------------
-- Table structure for table `PipelineImpl` generated from model 'pipelineImpl'
--

CREATE TABLE IF NOT EXISTS `PipelineImpl` (
  `_class` text,
  `displayName` text,
  `estimatedDurationInMillis` int,
  `fullName` text,
  `latestRun` text,
  `name` text,
  `organization` text,
  `weatherScore` int,
  `_links` long
); 


-- --------------------------------------------------------------------------
-- Table structure for table `PipelineImpllinks` generated from model 'pipelineImpllinks'
--

CREATE TABLE IF NOT EXISTS `PipelineImpllinks` (
  `runs` long,
  `self` long,
  `queue` long,
  `actions` long,
  `_class` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `PipelineRun` generated from model 'pipelineRun'
--

CREATE TABLE IF NOT EXISTS `PipelineRun` (
  `_class` text,
  `durationInMillis` int,
  `estimatedDurationInMillis` int,
  `enQueueTime` text,
  `endTime` text,
  `id` text PRIMARY KEY,
  `organization` text,
  `pipeline` text,
  `result` text,
  `runSummary` text,
  `startTime` text,
  `state` text,
  `type` text,
  `commitId` text
); 

-- --------------------------------------------------------------------------
-- Table structure for table `PipelineRunPipelineRunartifacts` generated from model 'PipelineRunPipelineRunartifacts'

CREATE TABLE IF NOT EXISTS `PipelineRunPipelineRunartifacts` (
  `pipelineRun` long NOT NULL
  `pipelineRunartifacts` long NOT NULL
);


-- --------------------------------------------------------------------------
-- Table structure for table `PipelineRunImpl` generated from model 'pipelineRunImpl'
--

CREATE TABLE IF NOT EXISTS `PipelineRunImpl` (
  `_class` text,
  `_links` long,
  `durationInMillis` int,
  `enQueueTime` text,
  `endTime` text,
  `estimatedDurationInMillis` int,
  `id` text PRIMARY KEY,
  `organization` text,
  `pipeline` text,
  `result` text,
  `runSummary` text,
  `startTime` text,
  `state` text,
  `type` text,
  `commitId` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `PipelineRunImpllinks` generated from model 'pipelineRunImpllinks'
--

CREATE TABLE IF NOT EXISTS `PipelineRunImpllinks` (
  `nodes` long,
  `log` long,
  `self` long,
  `actions` long,
  `steps` long,
  `_class` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `PipelineRunNode` generated from model 'pipelineRunNode'
--

CREATE TABLE IF NOT EXISTS `PipelineRunNode` (
  `_class` text,
  `displayName` text,
  `durationInMillis` int,
  `id` text PRIMARY KEY,
  `result` text,
  `startTime` text,
  `state` text
); 

-- --------------------------------------------------------------------------
-- Table structure for table `PipelineRunNodePipelineRunNodeedges` generated from model 'PipelineRunNodePipelineRunNodeedges'

CREATE TABLE IF NOT EXISTS `PipelineRunNodePipelineRunNodeedges` (
  `pipelineRunNode` long NOT NULL
  `pipelineRunNodeedges` long NOT NULL
);


-- --------------------------------------------------------------------------
-- Table structure for table `PipelineRunNodeedges` generated from model 'pipelineRunNodeedges'
--

CREATE TABLE IF NOT EXISTS `PipelineRunNodeedges` (
  `id` text PRIMARY KEY,
  `_class` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `PipelineRunartifacts` generated from model 'pipelineRunartifacts'
--

CREATE TABLE IF NOT EXISTS `PipelineRunartifacts` (
  `name` text,
  `size` int,
  `url` text,
  `_class` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `PipelineStepImpl` generated from model 'pipelineStepImpl'
--

CREATE TABLE IF NOT EXISTS `PipelineStepImpl` (
  `_class` text,
  `_links` long,
  `displayName` text,
  `durationInMillis` int,
  `id` text PRIMARY KEY,
  `input` long,
  `result` text,
  `startTime` text,
  `state` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `PipelineStepImpllinks` generated from model 'pipelineStepImpllinks'
--

CREATE TABLE IF NOT EXISTS `PipelineStepImpllinks` (
  `self` long,
  `actions` long,
  `_class` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `PipelinelatestRun` generated from model 'pipelinelatestRun'
--

CREATE TABLE IF NOT EXISTS `PipelinelatestRun` (
  `durationInMillis` int,
  `estimatedDurationInMillis` int,
  `enQueueTime` text,
  `endTime` text,
  `id` text PRIMARY KEY,
  `organization` text,
  `pipeline` text,
  `result` text,
  `runSummary` text,
  `startTime` text,
  `state` text,
  `type` text,
  `commitId` text,
  `_class` text
); 

-- --------------------------------------------------------------------------
-- Table structure for table `PipelinelatestRunPipelinelatestRunartifacts` generated from model 'PipelinelatestRunPipelinelatestRunartifacts'

CREATE TABLE IF NOT EXISTS `PipelinelatestRunPipelinelatestRunartifacts` (
  `pipelinelatestRun` long NOT NULL
  `pipelinelatestRunartifacts` long NOT NULL
);


-- --------------------------------------------------------------------------
-- Table structure for table `PipelinelatestRunartifacts` generated from model 'pipelinelatestRunartifacts'
--

CREATE TABLE IF NOT EXISTS `PipelinelatestRunartifacts` (
  `name` text,
  `size` int,
  `url` text,
  `_class` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `Queue` generated from model 'queue'
--

CREATE TABLE IF NOT EXISTS `Queue` (
  `_class` text,
); 

-- --------------------------------------------------------------------------
-- Table structure for table `QueueQueueBlockedItem` generated from model 'QueueQueueBlockedItem'

CREATE TABLE IF NOT EXISTS `QueueQueueBlockedItem` (
  `queue` long NOT NULL
  `queueBlockedItem` long NOT NULL
);


-- --------------------------------------------------------------------------
-- Table structure for table `QueueBlockedItem` generated from model 'queueBlockedItem'
--

CREATE TABLE IF NOT EXISTS `QueueBlockedItem` (
  `_class` text,
  `blocked` boolean,
  `buildable` boolean,
  `id` int PRIMARY KEY AUTOINCREMENT,
  `inQueueSince` int,
  `params` text,
  `stuck` boolean,
  `task` long,
  `url` text,
  `why` text,
  `buildableStartMilliseconds` int
); 

-- --------------------------------------------------------------------------
-- Table structure for table `QueueBlockedItemCauseAction` generated from model 'QueueBlockedItemCauseAction'

CREATE TABLE IF NOT EXISTS `QueueBlockedItemCauseAction` (
  `queueBlockedItem` long NOT NULL
  `causeAction` long NOT NULL
);


-- --------------------------------------------------------------------------
-- Table structure for table `QueueItemImpl` generated from model 'queueItemImpl'
--

CREATE TABLE IF NOT EXISTS `QueueItemImpl` (
  `_class` text,
  `expectedBuildNumber` int,
  `id` text PRIMARY KEY,
  `pipeline` text,
  `queuedTime` int
); 


-- --------------------------------------------------------------------------
-- Table structure for table `QueueLeftItem` generated from model 'queueLeftItem'
--

CREATE TABLE IF NOT EXISTS `QueueLeftItem` (
  `_class` text,
  `blocked` boolean,
  `buildable` boolean,
  `id` int PRIMARY KEY AUTOINCREMENT,
  `inQueueSince` int,
  `params` text,
  `stuck` boolean,
  `task` long,
  `url` text,
  `why` text,
  `cancelled` boolean,
  `executable` long
); 

-- --------------------------------------------------------------------------
-- Table structure for table `QueueLeftItemCauseAction` generated from model 'QueueLeftItemCauseAction'

CREATE TABLE IF NOT EXISTS `QueueLeftItemCauseAction` (
  `queueLeftItem` long NOT NULL
  `causeAction` long NOT NULL
);


-- --------------------------------------------------------------------------
-- Table structure for table `ResponseTimeMonitorData` generated from model 'responseTimeMonitorData'
--

CREATE TABLE IF NOT EXISTS `ResponseTimeMonitorData` (
  `_class` text,
  `timestamp` int,
  `average` int
); 


-- --------------------------------------------------------------------------
-- Table structure for table `StringParameterDefinition` generated from model 'stringParameterDefinition'
--

CREATE TABLE IF NOT EXISTS `StringParameterDefinition` (
  `_class` text,
  `defaultParameterValue` long,
  `description` text,
  `name` text,
  `type` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `StringParameterValue` generated from model 'stringParameterValue'
--

CREATE TABLE IF NOT EXISTS `StringParameterValue` (
  `_class` text,
  `name` text,
  `value` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `SwapSpaceMonitorMemoryUsage2` generated from model 'swapSpaceMonitorMemoryUsage2'
--

CREATE TABLE IF NOT EXISTS `SwapSpaceMonitorMemoryUsage2` (
  `_class` text,
  `availablePhysicalMemory` int,
  `availableSwapSpace` int,
  `totalPhysicalMemory` int,
  `totalSwapSpace` int
); 


-- --------------------------------------------------------------------------
-- Table structure for table `UnlabeledLoadStatistics` generated from model 'unlabeledLoadStatistics'
--

CREATE TABLE IF NOT EXISTS `UnlabeledLoadStatistics` (
  `_class` text
); 


-- --------------------------------------------------------------------------
-- Table structure for table `User` generated from model 'user'
--

CREATE TABLE IF NOT EXISTS `User` (
  `_class` text,
  `id` text PRIMARY KEY,
  `fullName` text,
  `email` text,
  `name` text
); 



--
-- Table structure for table `_db_version`
--
CREATE TABLE IF NOT EXISTS `_db_version` (
  `version`    LONG    DEFAULT 1
);
