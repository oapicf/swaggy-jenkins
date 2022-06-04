/**
 * Swaggy Jenkins
 * Jenkins API clients generated from Swagger / Open API specification
 *
 * The version of the OpenAPI document: 1.5.1-pre.0
 * Contact: blah@cliffano.com
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


export interface AllView {
  _class?: string;
  name?: string;
  url?: string;
}


export interface BranchImpl {
  _class?: string;
  displayName?: string;
  estimatedDurationInMillis?: number;
  fullDisplayName?: string;
  fullName?: string;
  name?: string;
  organization?: string;
  parameters?: Array<StringParameterDefinition>;
  permissions?: BranchImplpermissions;
  weatherScore?: number;
  pullRequest?: string;
  _links?: BranchImpllinks;
  latestRun?: PipelineRunImpl;
}


export interface BranchImpllinks {
  self?: Link;
  actions?: Link;
  runs?: Link;
  queue?: Link;
  _class?: string;
}


export interface BranchImplpermissions {
  create?: boolean;
  read?: boolean;
  start?: boolean;
  stop?: boolean;
  _class?: string;
}


export interface CauseAction {
  _class?: string;
  causes?: Array<CauseUserIdCause>;
}


export interface CauseUserIdCause {
  _class?: string;
  shortDescription?: string;
  userId?: string;
  userName?: string;
}


export interface ClassesByClass {
  classes?: Array<string>;
  _class?: string;
}


export interface ClockDifference {
  _class?: string;
  diff?: number;
}


export interface ComputerSet {
  _class?: string;
  busyExecutors?: number;
  computer?: Array<HudsonMasterComputer>;
  displayName?: string;
  totalExecutors?: number;
}


export interface DefaultCrumbIssuer {
  _class?: string;
  crumb?: string;
  crumbRequestField?: string;
}


export interface DiskSpaceMonitorDescriptorDiskSpace {
  _class?: string;
  timestamp?: number;
  path?: string;
  size?: number;
}


export interface EmptyChangeLogSet {
  _class?: string;
  kind?: string;
}


export interface ExtensionClassContainerImpl1 {
  _class?: string;
  _links?: ExtensionClassContainerImpl1links;
  map?: ExtensionClassContainerImpl1map;
}


export interface ExtensionClassContainerImpl1links {
  self?: Link;
  _class?: string;
}


export interface ExtensionClassContainerImpl1map {
  io_jenkins_blueocean_service_embedded_rest_PipelineImpl?: ExtensionClassImpl;
  io_jenkins_blueocean_service_embedded_rest_MultiBranchPipelineImpl?: ExtensionClassImpl;
  _class?: string;
}


export interface ExtensionClassImpl {
  _class?: string;
  _links?: ExtensionClassImpllinks;
  classes?: Array<string>;
}


export interface ExtensionClassImpllinks {
  self?: Link;
  _class?: string;
}


export interface FavoriteImpl {
  _class?: string;
  _links?: FavoriteImpllinks;
  item?: PipelineImpl;
}


export interface FavoriteImpllinks {
  self?: Link;
  _class?: string;
}


export interface FreeStyleBuild {
  _class?: string;
  number?: number;
  url?: string;
  actions?: Array<CauseAction>;
  building?: boolean;
  description?: string;
  displayName?: string;
  duration?: number;
  estimatedDuration?: number;
  executor?: string;
  fullDisplayName?: string;
  id?: string;
  keepLog?: boolean;
  queueId?: number;
  result?: string;
  timestamp?: number;
  builtOn?: string;
  changeSet?: EmptyChangeLogSet;
}


export interface FreeStyleProject {
  _class?: string;
  name?: string;
  url?: string;
  color?: string;
  actions?: Array<FreeStyleProjectactions>;
  description?: string;
  displayName?: string;
  displayNameOrNull?: string;
  fullDisplayName?: string;
  fullName?: string;
  buildable?: boolean;
  builds?: Array<FreeStyleBuild>;
  firstBuild?: FreeStyleBuild;
  healthReport?: Array<FreeStyleProjecthealthReport>;
  inQueue?: boolean;
  keepDependencies?: boolean;
  lastBuild?: FreeStyleBuild;
  lastCompletedBuild?: FreeStyleBuild;
  lastFailedBuild?: string;
  lastStableBuild?: FreeStyleBuild;
  lastSuccessfulBuild?: FreeStyleBuild;
  lastUnstableBuild?: string;
  lastUnsuccessfulBuild?: string;
  nextBuildNumber?: number;
  queueItem?: string;
  concurrentBuild?: boolean;
  scm?: NullSCM;
}


export interface FreeStyleProjectactions {
  _class?: string;
}


export interface FreeStyleProjecthealthReport {
  description?: string;
  iconClassName?: string;
  iconUrl?: string;
  score?: number;
  _class?: string;
}


export interface GenericResource {
  _class?: string;
  displayName?: string;
  durationInMillis?: number;
  id?: string;
  result?: string;
  startTime?: string;
}


export interface GithubContent {
  name?: string;
  sha?: string;
  _class?: string;
  repo?: string;
  size?: number;
  owner?: string;
  path?: string;
  base64Data?: string;
}


export interface GithubFile {
  content?: GithubContent;
  _class?: string;
}


export interface GithubOrganization {
  _class?: string;
  _links?: GithubOrganizationlinks;
  jenkinsOrganizationPipeline?: boolean;
  name?: string;
}


export interface GithubOrganizationlinks {
  repositories?: Link;
  self?: Link;
  _class?: string;
}


export interface GithubRepositories {
  _class?: string;
  _links?: GithubRepositorieslinks;
  items?: Array<GithubRepository>;
  lastPage?: number;
  nextPage?: number;
  pageSize?: number;
}


export interface GithubRepositorieslinks {
  self?: Link;
  _class?: string;
}


export interface GithubRepository {
  _class?: string;
  _links?: GithubRepositorylinks;
  defaultBranch?: string;
  description?: string;
  name?: string;
  permissions?: GithubRepositorypermissions;
  _private?: boolean;
  fullName?: string;
}


export interface GithubRepositorylinks {
  self?: Link;
  _class?: string;
}


export interface GithubRepositorypermissions {
  admin?: boolean;
  push?: boolean;
  pull?: boolean;
  _class?: string;
}


export interface GithubRespositoryContainer {
  _class?: string;
  _links?: GithubRespositoryContainerlinks;
  repositories?: GithubRepositories;
}


export interface GithubRespositoryContainerlinks {
  self?: Link;
  _class?: string;
}


export interface GithubScm {
  _class?: string;
  _links?: GithubScmlinks;
  credentialId?: string;
  id?: string;
  uri?: string;
}


export interface GithubScmlinks {
  self?: Link;
  _class?: string;
}


export interface Hudson {
  _class?: string;
  assignedLabels?: Array<HudsonassignedLabels>;
  mode?: string;
  nodeDescription?: string;
  nodeName?: string;
  numExecutors?: number;
  description?: string;
  jobs?: Array<FreeStyleProject>;
  primaryView?: AllView;
  quietingDown?: boolean;
  slaveAgentPort?: number;
  unlabeledLoad?: UnlabeledLoadStatistics;
  useCrumbs?: boolean;
  useSecurity?: boolean;
  views?: Array<AllView>;
}


export interface HudsonMasterComputer {
  _class?: string;
  displayName?: string;
  executors?: Array<HudsonMasterComputerexecutors>;
  icon?: string;
  iconClassName?: string;
  idle?: boolean;
  jnlpAgent?: boolean;
  launchSupported?: boolean;
  loadStatistics?: Label1;
  manualLaunchAllowed?: boolean;
  monitorData?: HudsonMasterComputermonitorData;
  numExecutors?: number;
  offline?: boolean;
  offlineCause?: string;
  offlineCauseReason?: string;
  temporarilyOffline?: boolean;
}


export interface HudsonMasterComputerexecutors {
  currentExecutable?: FreeStyleBuild;
  idle?: boolean;
  likelyStuck?: boolean;
  number?: number;
  progress?: number;
  _class?: string;
}


export interface HudsonMasterComputermonitorData {
  hudson_node_monitors_SwapSpaceMonitor?: SwapSpaceMonitorMemoryUsage2;
  hudson_node_monitors_TemporarySpaceMonitor?: DiskSpaceMonitorDescriptorDiskSpace;
  hudson_node_monitors_DiskSpaceMonitor?: DiskSpaceMonitorDescriptorDiskSpace;
  hudson_node_monitors_ArchitectureMonitor?: string;
  hudson_node_monitors_ResponseTimeMonitor?: ResponseTimeMonitorData;
  hudson_node_monitors_ClockMonitor?: ClockDifference;
  _class?: string;
}


export interface HudsonassignedLabels {
  _class?: string;
}


export interface InputStepImpl {
  _class?: string;
  _links?: InputStepImpllinks;
  id?: string;
  message?: string;
  ok?: string;
  parameters?: Array<StringParameterDefinition>;
  submitter?: string;
}


export interface InputStepImpllinks {
  self?: Link;
  _class?: string;
}


export interface Label1 {
  _class?: string;
}


export interface Link {
  _class?: string;
  href?: string;
}


export interface ListView {
  _class?: string;
  description?: string;
  jobs?: Array<FreeStyleProject>;
  name?: string;
  url?: string;
}


export interface MultibranchPipeline {
  displayName?: string;
  estimatedDurationInMillis?: number;
  latestRun?: string;
  name?: string;
  organization?: string;
  weatherScore?: number;
  branchNames?: Array<string>;
  numberOfFailingBranches?: number;
  numberOfFailingPullRequests?: number;
  numberOfSuccessfulBranches?: number;
  numberOfSuccessfulPullRequests?: number;
  totalNumberOfBranches?: number;
  totalNumberOfPullRequests?: number;
  _class?: string;
}


export interface NullSCM {
  _class?: string;
}


export interface Organisation {
  _class?: string;
  name?: string;
}


export interface Pipeline {
  _class?: string;
  organization?: string;
  name?: string;
  displayName?: string;
  fullName?: string;
  weatherScore?: number;
  estimatedDurationInMillis?: number;
  latestRun?: PipelinelatestRun;
}


export interface PipelineActivity {
  _class?: string;
  artifacts?: Array<PipelineActivityartifacts>;
  durationInMillis?: number;
  estimatedDurationInMillis?: number;
  enQueueTime?: string;
  endTime?: string;
  id?: string;
  organization?: string;
  pipeline?: string;
  result?: string;
  runSummary?: string;
  startTime?: string;
  state?: string;
  type?: string;
  commitId?: string;
}


export interface PipelineActivityartifacts {
  name?: string;
  size?: number;
  url?: string;
  _class?: string;
}


export interface PipelineBranchesitem {
  displayName?: string;
  estimatedDurationInMillis?: number;
  name?: string;
  weatherScore?: number;
  latestRun?: PipelineBranchesitemlatestRun;
  organization?: string;
  pullRequest?: PipelineBranchesitempullRequest;
  totalNumberOfPullRequests?: number;
  _class?: string;
}


export interface PipelineBranchesitemlatestRun {
  durationInMillis?: number;
  estimatedDurationInMillis?: number;
  enQueueTime?: string;
  endTime?: string;
  id?: string;
  organization?: string;
  pipeline?: string;
  result?: string;
  runSummary?: string;
  startTime?: string;
  state?: string;
  type?: string;
  commitId?: string;
  _class?: string;
}


export interface PipelineBranchesitempullRequest {
  _links?: PipelineBranchesitempullRequestlinks;
  author?: string;
  id?: string;
  title?: string;
  url?: string;
  _class?: string;
}


export interface PipelineBranchesitempullRequestlinks {
  self?: string;
  _class?: string;
}


export interface PipelineFolderImpl {
  _class?: string;
  displayName?: string;
  fullName?: string;
  name?: string;
  organization?: string;
  numberOfFolders?: number;
  numberOfPipelines?: number;
}


export interface PipelineImpl {
  _class?: string;
  displayName?: string;
  estimatedDurationInMillis?: number;
  fullName?: string;
  latestRun?: string;
  name?: string;
  organization?: string;
  weatherScore?: number;
  _links?: PipelineImpllinks;
}


export interface PipelineImpllinks {
  runs?: Link;
  self?: Link;
  queue?: Link;
  actions?: Link;
  _class?: string;
}


export interface PipelineRun {
  _class?: string;
  artifacts?: Array<PipelineRunartifacts>;
  durationInMillis?: number;
  estimatedDurationInMillis?: number;
  enQueueTime?: string;
  endTime?: string;
  id?: string;
  organization?: string;
  pipeline?: string;
  result?: string;
  runSummary?: string;
  startTime?: string;
  state?: string;
  type?: string;
  commitId?: string;
}


export interface PipelineRunImpl {
  _class?: string;
  _links?: PipelineRunImpllinks;
  durationInMillis?: number;
  enQueueTime?: string;
  endTime?: string;
  estimatedDurationInMillis?: number;
  id?: string;
  organization?: string;
  pipeline?: string;
  result?: string;
  runSummary?: string;
  startTime?: string;
  state?: string;
  type?: string;
  commitId?: string;
}


export interface PipelineRunImpllinks {
  nodes?: Link;
  log?: Link;
  self?: Link;
  actions?: Link;
  steps?: Link;
  _class?: string;
}


export interface PipelineRunNode {
  _class?: string;
  displayName?: string;
  durationInMillis?: number;
  edges?: Array<PipelineRunNodeedges>;
  id?: string;
  result?: string;
  startTime?: string;
  state?: string;
}


export interface PipelineRunNodeedges {
  id?: string;
  _class?: string;
}


export interface PipelineRunartifacts {
  name?: string;
  size?: number;
  url?: string;
  _class?: string;
}


export interface PipelineStepImpl {
  _class?: string;
  _links?: PipelineStepImpllinks;
  displayName?: string;
  durationInMillis?: number;
  id?: string;
  input?: InputStepImpl;
  result?: string;
  startTime?: string;
  state?: string;
}


export interface PipelineStepImpllinks {
  self?: Link;
  actions?: Link;
  _class?: string;
}


export interface PipelinelatestRun {
  artifacts?: Array<PipelinelatestRunartifacts>;
  durationInMillis?: number;
  estimatedDurationInMillis?: number;
  enQueueTime?: string;
  endTime?: string;
  id?: string;
  organization?: string;
  pipeline?: string;
  result?: string;
  runSummary?: string;
  startTime?: string;
  state?: string;
  type?: string;
  commitId?: string;
  _class?: string;
}


export interface PipelinelatestRunartifacts {
  name?: string;
  size?: number;
  url?: string;
  _class?: string;
}


export interface Queue {
  _class?: string;
  items?: Array<QueueBlockedItem>;
}


export interface QueueBlockedItem {
  _class?: string;
  actions?: Array<CauseAction>;
  blocked?: boolean;
  buildable?: boolean;
  id?: number;
  inQueueSince?: number;
  params?: string;
  stuck?: boolean;
  task?: FreeStyleProject;
  url?: string;
  why?: string;
  buildableStartMilliseconds?: number;
}


export interface QueueItemImpl {
  _class?: string;
  expectedBuildNumber?: number;
  id?: string;
  pipeline?: string;
  queuedTime?: number;
}


export interface QueueLeftItem {
  _class?: string;
  actions?: Array<CauseAction>;
  blocked?: boolean;
  buildable?: boolean;
  id?: number;
  inQueueSince?: number;
  params?: string;
  stuck?: boolean;
  task?: FreeStyleProject;
  url?: string;
  why?: string;
  cancelled?: boolean;
  executable?: FreeStyleBuild;
}


export interface ResponseTimeMonitorData {
  _class?: string;
  timestamp?: number;
  average?: number;
}


export interface StringParameterDefinition {
  _class?: string;
  defaultParameterValue?: StringParameterValue;
  description?: string;
  name?: string;
  type?: string;
}


export interface StringParameterValue {
  _class?: string;
  name?: string;
  value?: string;
}


export interface SwapSpaceMonitorMemoryUsage2 {
  _class?: string;
  availablePhysicalMemory?: number;
  availableSwapSpace?: number;
  totalPhysicalMemory?: number;
  totalSwapSpace?: number;
}


export interface UnlabeledLoadStatistics {
  _class?: string;
}


export interface User {
  _class?: string;
  id?: string;
  fullName?: string;
  email?: string;
  name?: string;
}

