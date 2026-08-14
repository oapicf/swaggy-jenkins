package org.openapitools.models

import java.time._

import io.circe.refined._
import io.circe.syntax._
import io.circe.{ Decoder, Encoder }
import io.circe.generic.semiauto.{ deriveDecoder, deriveEncoder }


/**
* 
* @param Underscoreclass 
* @param name 
* @param url 
*/

case class AllView(
  Underscoreclass: Option[String],
  name: Option[String],
  url: Option[String]
)
object AllView {
  implicit val encoderAllView: Encoder[AllView] = deriveEncoder[AllView].mapJson(_.dropNullValues)
  implicit val decoderAllView: Decoder[AllView] = deriveDecoder[AllView]
}

/**
* 
* @param Underscoreclass 
* @param displayName 
* @param estimatedDurationInMillis 
* @param fullDisplayName 
* @param fullName 
* @param name 
* @param organization 
* @param parameters 
* @param permissions 
* @param weatherScore 
* @param pullRequest 
* @param Underscorelinks 
* @param latestRun 
*/

case class BranchImpl(
  Underscoreclass: Option[String],
  displayName: Option[String],
  estimatedDurationInMillis: Option[Int],
  fullDisplayName: Option[String],
  fullName: Option[String],
  name: Option[String],
  organization: Option[String],
  parameters: Option[List[StringParameterDefinition]],
  permissions: Option[BranchImplpermissions],
  weatherScore: Option[Int],
  pullRequest: Option[String],
  Underscorelinks: Option[BranchImpllinks],
  latestRun: Option[PipelineRunImpl]
)
object BranchImpl {
  implicit val encoderBranchImpl: Encoder[BranchImpl] = deriveEncoder[BranchImpl].mapJson(_.dropNullValues)
  implicit val decoderBranchImpl: Decoder[BranchImpl] = deriveDecoder[BranchImpl]
}

/**
* 
* @param self 
* @param actions 
* @param runs 
* @param queue 
* @param Underscoreclass 
*/

case class BranchImpllinks(
  self: Option[Link],
  actions: Option[Link],
  runs: Option[Link],
  queue: Option[Link],
  Underscoreclass: Option[String]
)
object BranchImpllinks {
  implicit val encoderBranchImpllinks: Encoder[BranchImpllinks] = deriveEncoder[BranchImpllinks].mapJson(_.dropNullValues)
  implicit val decoderBranchImpllinks: Decoder[BranchImpllinks] = deriveDecoder[BranchImpllinks]
}

/**
* 
* @param create 
* @param read 
* @param start 
* @param stop 
* @param Underscoreclass 
*/

case class BranchImplpermissions(
  create: Option[Boolean],
  read: Option[Boolean],
  start: Option[Boolean],
  stop: Option[Boolean],
  Underscoreclass: Option[String]
)
object BranchImplpermissions {
  implicit val encoderBranchImplpermissions: Encoder[BranchImplpermissions] = deriveEncoder[BranchImplpermissions].mapJson(_.dropNullValues)
  implicit val decoderBranchImplpermissions: Decoder[BranchImplpermissions] = deriveDecoder[BranchImplpermissions]
}

/**
* 
* @param Underscoreclass 
* @param causes 
*/

case class CauseAction(
  Underscoreclass: Option[String],
  causes: Option[List[CauseUserIdCause]]
)
object CauseAction {
  implicit val encoderCauseAction: Encoder[CauseAction] = deriveEncoder[CauseAction].mapJson(_.dropNullValues)
  implicit val decoderCauseAction: Decoder[CauseAction] = deriveDecoder[CauseAction]
}

/**
* 
* @param Underscoreclass 
* @param shortDescription 
* @param userId 
* @param userName 
*/

case class CauseUserIdCause(
  Underscoreclass: Option[String],
  shortDescription: Option[String],
  userId: Option[String],
  userName: Option[String]
)
object CauseUserIdCause {
  implicit val encoderCauseUserIdCause: Encoder[CauseUserIdCause] = deriveEncoder[CauseUserIdCause].mapJson(_.dropNullValues)
  implicit val decoderCauseUserIdCause: Decoder[CauseUserIdCause] = deriveDecoder[CauseUserIdCause]
}

/**
* 
* @param classes 
* @param Underscoreclass 
*/

case class ClassesByClass(
  classes: Option[List[String]],
  Underscoreclass: Option[String]
)
object ClassesByClass {
  implicit val encoderClassesByClass: Encoder[ClassesByClass] = deriveEncoder[ClassesByClass].mapJson(_.dropNullValues)
  implicit val decoderClassesByClass: Decoder[ClassesByClass] = deriveDecoder[ClassesByClass]
}

/**
* 
* @param Underscoreclass 
* @param diff 
*/

case class ClockDifference(
  Underscoreclass: Option[String],
  diff: Option[Int]
)
object ClockDifference {
  implicit val encoderClockDifference: Encoder[ClockDifference] = deriveEncoder[ClockDifference].mapJson(_.dropNullValues)
  implicit val decoderClockDifference: Decoder[ClockDifference] = deriveDecoder[ClockDifference]
}

/**
* 
* @param Underscoreclass 
* @param busyExecutors 
* @param computer 
* @param displayName 
* @param totalExecutors 
*/

case class ComputerSet(
  Underscoreclass: Option[String],
  busyExecutors: Option[Int],
  computer: Option[List[HudsonMasterComputer]],
  displayName: Option[String],
  totalExecutors: Option[Int]
)
object ComputerSet {
  implicit val encoderComputerSet: Encoder[ComputerSet] = deriveEncoder[ComputerSet].mapJson(_.dropNullValues)
  implicit val decoderComputerSet: Decoder[ComputerSet] = deriveDecoder[ComputerSet]
}

/**
* 
* @param Underscoreclass 
* @param crumb 
* @param crumbRequestField 
*/

case class DefaultCrumbIssuer(
  Underscoreclass: Option[String],
  crumb: Option[String],
  crumbRequestField: Option[String]
)
object DefaultCrumbIssuer {
  implicit val encoderDefaultCrumbIssuer: Encoder[DefaultCrumbIssuer] = deriveEncoder[DefaultCrumbIssuer].mapJson(_.dropNullValues)
  implicit val decoderDefaultCrumbIssuer: Decoder[DefaultCrumbIssuer] = deriveDecoder[DefaultCrumbIssuer]
}

/**
* 
* @param Underscoreclass 
* @param timestamp 
* @param path 
* @param size 
*/

case class DiskSpaceMonitorDescriptorDiskSpace(
  Underscoreclass: Option[String],
  timestamp: Option[Int],
  path: Option[String],
  size: Option[Int]
)
object DiskSpaceMonitorDescriptorDiskSpace {
  implicit val encoderDiskSpaceMonitorDescriptorDiskSpace: Encoder[DiskSpaceMonitorDescriptorDiskSpace] = deriveEncoder[DiskSpaceMonitorDescriptorDiskSpace].mapJson(_.dropNullValues)
  implicit val decoderDiskSpaceMonitorDescriptorDiskSpace: Decoder[DiskSpaceMonitorDescriptorDiskSpace] = deriveDecoder[DiskSpaceMonitorDescriptorDiskSpace]
}

/**
* 
* @param Underscoreclass 
* @param kind 
*/

case class EmptyChangeLogSet(
  Underscoreclass: Option[String],
  kind: Option[String]
)
object EmptyChangeLogSet {
  implicit val encoderEmptyChangeLogSet: Encoder[EmptyChangeLogSet] = deriveEncoder[EmptyChangeLogSet].mapJson(_.dropNullValues)
  implicit val decoderEmptyChangeLogSet: Decoder[EmptyChangeLogSet] = deriveDecoder[EmptyChangeLogSet]
}

/**
* 
* @param Underscoreclass 
* @param Underscorelinks 
* @param map 
*/

case class ExtensionClassContainerImpl1(
  Underscoreclass: Option[String],
  Underscorelinks: Option[ExtensionClassContainerImpl1links],
  map: Option[ExtensionClassContainerImpl1map]
)
object ExtensionClassContainerImpl1 {
  implicit val encoderExtensionClassContainerImpl1: Encoder[ExtensionClassContainerImpl1] = deriveEncoder[ExtensionClassContainerImpl1].mapJson(_.dropNullValues)
  implicit val decoderExtensionClassContainerImpl1: Decoder[ExtensionClassContainerImpl1] = deriveDecoder[ExtensionClassContainerImpl1]
}

/**
* 
* @param self 
* @param Underscoreclass 
*/

case class ExtensionClassContainerImpl1links(
  self: Option[Link],
  Underscoreclass: Option[String]
)
object ExtensionClassContainerImpl1links {
  implicit val encoderExtensionClassContainerImpl1links: Encoder[ExtensionClassContainerImpl1links] = deriveEncoder[ExtensionClassContainerImpl1links].mapJson(_.dropNullValues)
  implicit val decoderExtensionClassContainerImpl1links: Decoder[ExtensionClassContainerImpl1links] = deriveDecoder[ExtensionClassContainerImpl1links]
}

/**
* 
* @param ioPeriodjenkinsPeriodblueoceanPeriodservicePeriodembeddedPeriodrestPeriodPipelineImpl 
* @param ioPeriodjenkinsPeriodblueoceanPeriodservicePeriodembeddedPeriodrestPeriodMultiBranchPipelineImpl 
* @param Underscoreclass 
*/

case class ExtensionClassContainerImpl1map(
  ioPeriodjenkinsPeriodblueoceanPeriodservicePeriodembeddedPeriodrestPeriodPipelineImpl: Option[ExtensionClassImpl],
  ioPeriodjenkinsPeriodblueoceanPeriodservicePeriodembeddedPeriodrestPeriodMultiBranchPipelineImpl: Option[ExtensionClassImpl],
  Underscoreclass: Option[String]
)
object ExtensionClassContainerImpl1map {
  implicit val encoderExtensionClassContainerImpl1map: Encoder[ExtensionClassContainerImpl1map] = deriveEncoder[ExtensionClassContainerImpl1map].mapJson(_.dropNullValues)
  implicit val decoderExtensionClassContainerImpl1map: Decoder[ExtensionClassContainerImpl1map] = deriveDecoder[ExtensionClassContainerImpl1map]
}

/**
* 
* @param Underscoreclass 
* @param Underscorelinks 
* @param classes 
*/

case class ExtensionClassImpl(
  Underscoreclass: Option[String],
  Underscorelinks: Option[ExtensionClassImpllinks],
  classes: Option[List[String]]
)
object ExtensionClassImpl {
  implicit val encoderExtensionClassImpl: Encoder[ExtensionClassImpl] = deriveEncoder[ExtensionClassImpl].mapJson(_.dropNullValues)
  implicit val decoderExtensionClassImpl: Decoder[ExtensionClassImpl] = deriveDecoder[ExtensionClassImpl]
}

/**
* 
* @param self 
* @param Underscoreclass 
*/

case class ExtensionClassImpllinks(
  self: Option[Link],
  Underscoreclass: Option[String]
)
object ExtensionClassImpllinks {
  implicit val encoderExtensionClassImpllinks: Encoder[ExtensionClassImpllinks] = deriveEncoder[ExtensionClassImpllinks].mapJson(_.dropNullValues)
  implicit val decoderExtensionClassImpllinks: Decoder[ExtensionClassImpllinks] = deriveDecoder[ExtensionClassImpllinks]
}

/**
* 
* @param Underscoreclass 
* @param Underscorelinks 
* @param item 
*/

case class FavoriteImpl(
  Underscoreclass: Option[String],
  Underscorelinks: Option[FavoriteImpllinks],
  item: Option[PipelineImpl]
)
object FavoriteImpl {
  implicit val encoderFavoriteImpl: Encoder[FavoriteImpl] = deriveEncoder[FavoriteImpl].mapJson(_.dropNullValues)
  implicit val decoderFavoriteImpl: Decoder[FavoriteImpl] = deriveDecoder[FavoriteImpl]
}

/**
* 
* @param self 
* @param Underscoreclass 
*/

case class FavoriteImpllinks(
  self: Option[Link],
  Underscoreclass: Option[String]
)
object FavoriteImpllinks {
  implicit val encoderFavoriteImpllinks: Encoder[FavoriteImpllinks] = deriveEncoder[FavoriteImpllinks].mapJson(_.dropNullValues)
  implicit val decoderFavoriteImpllinks: Decoder[FavoriteImpllinks] = deriveDecoder[FavoriteImpllinks]
}

/**
* 
* @param Underscoreclass 
* @param number 
* @param url 
* @param actions 
* @param building 
* @param description 
* @param displayName 
* @param duration 
* @param estimatedDuration 
* @param executor 
* @param fullDisplayName 
* @param id 
* @param keepLog 
* @param queueId 
* @param result 
* @param timestamp 
* @param builtOn 
* @param changeSet 
*/

case class FreeStyleBuild(
  Underscoreclass: Option[String],
  number: Option[Int],
  url: Option[String],
  actions: Option[List[CauseAction]],
  building: Option[Boolean],
  description: Option[String],
  displayName: Option[String],
  duration: Option[Int],
  estimatedDuration: Option[Int],
  executor: Option[String],
  fullDisplayName: Option[String],
  id: Option[String],
  keepLog: Option[Boolean],
  queueId: Option[Int],
  result: Option[String],
  timestamp: Option[Int],
  builtOn: Option[String],
  changeSet: Option[EmptyChangeLogSet]
)
object FreeStyleBuild {
  implicit val encoderFreeStyleBuild: Encoder[FreeStyleBuild] = deriveEncoder[FreeStyleBuild].mapJson(_.dropNullValues)
  implicit val decoderFreeStyleBuild: Decoder[FreeStyleBuild] = deriveDecoder[FreeStyleBuild]
}

/**
* 
* @param Underscoreclass 
* @param name 
* @param url 
* @param color 
* @param actions 
* @param description 
* @param displayName 
* @param displayNameOrNull 
* @param fullDisplayName 
* @param fullName 
* @param buildable 
* @param builds 
* @param firstBuild 
* @param healthReport 
* @param inQueue 
* @param keepDependencies 
* @param lastBuild 
* @param lastCompletedBuild 
* @param lastFailedBuild 
* @param lastStableBuild 
* @param lastSuccessfulBuild 
* @param lastUnstableBuild 
* @param lastUnsuccessfulBuild 
* @param nextBuildNumber 
* @param queueItem 
* @param concurrentBuild 
* @param scm 
*/

case class FreeStyleProject(
  Underscoreclass: Option[String],
  name: Option[String],
  url: Option[String],
  color: Option[String],
  actions: Option[List[FreeStyleProjectactions]],
  description: Option[String],
  displayName: Option[String],
  displayNameOrNull: Option[String],
  fullDisplayName: Option[String],
  fullName: Option[String],
  buildable: Option[Boolean],
  builds: Option[List[FreeStyleBuild]],
  firstBuild: Option[FreeStyleBuild],
  healthReport: Option[List[FreeStyleProjecthealthReport]],
  inQueue: Option[Boolean],
  keepDependencies: Option[Boolean],
  lastBuild: Option[FreeStyleBuild],
  lastCompletedBuild: Option[FreeStyleBuild],
  lastFailedBuild: Option[String],
  lastStableBuild: Option[FreeStyleBuild],
  lastSuccessfulBuild: Option[FreeStyleBuild],
  lastUnstableBuild: Option[String],
  lastUnsuccessfulBuild: Option[String],
  nextBuildNumber: Option[Int],
  queueItem: Option[String],
  concurrentBuild: Option[Boolean],
  scm: Option[NullSCM]
)
object FreeStyleProject {
  implicit val encoderFreeStyleProject: Encoder[FreeStyleProject] = deriveEncoder[FreeStyleProject].mapJson(_.dropNullValues)
  implicit val decoderFreeStyleProject: Decoder[FreeStyleProject] = deriveDecoder[FreeStyleProject]
}

/**
* 
* @param Underscoreclass 
*/

case class FreeStyleProjectactions(
  Underscoreclass: Option[String]
)
object FreeStyleProjectactions {
  implicit val encoderFreeStyleProjectactions: Encoder[FreeStyleProjectactions] = deriveEncoder[FreeStyleProjectactions].mapJson(_.dropNullValues)
  implicit val decoderFreeStyleProjectactions: Decoder[FreeStyleProjectactions] = deriveDecoder[FreeStyleProjectactions]
}

/**
* 
* @param description 
* @param iconClassName 
* @param iconUrl 
* @param score 
* @param Underscoreclass 
*/

case class FreeStyleProjecthealthReport(
  description: Option[String],
  iconClassName: Option[String],
  iconUrl: Option[String],
  score: Option[Int],
  Underscoreclass: Option[String]
)
object FreeStyleProjecthealthReport {
  implicit val encoderFreeStyleProjecthealthReport: Encoder[FreeStyleProjecthealthReport] = deriveEncoder[FreeStyleProjecthealthReport].mapJson(_.dropNullValues)
  implicit val decoderFreeStyleProjecthealthReport: Decoder[FreeStyleProjecthealthReport] = deriveDecoder[FreeStyleProjecthealthReport]
}

/**
* 
* @param Underscoreclass 
* @param displayName 
* @param durationInMillis 
* @param id 
* @param result 
* @param startTime 
*/

case class GenericResource(
  Underscoreclass: Option[String],
  displayName: Option[String],
  durationInMillis: Option[Int],
  id: Option[String],
  result: Option[String],
  startTime: Option[String]
)
object GenericResource {
  implicit val encoderGenericResource: Encoder[GenericResource] = deriveEncoder[GenericResource].mapJson(_.dropNullValues)
  implicit val decoderGenericResource: Decoder[GenericResource] = deriveDecoder[GenericResource]
}

/**
* 
* @param name 
* @param sha 
* @param Underscoreclass 
* @param repo 
* @param size 
* @param owner 
* @param path 
* @param base64Data 
*/

case class GithubContent(
  name: Option[String],
  sha: Option[String],
  Underscoreclass: Option[String],
  repo: Option[String],
  size: Option[Int],
  owner: Option[String],
  path: Option[String],
  base64Data: Option[String]
)
object GithubContent {
  implicit val encoderGithubContent: Encoder[GithubContent] = deriveEncoder[GithubContent].mapJson(_.dropNullValues)
  implicit val decoderGithubContent: Decoder[GithubContent] = deriveDecoder[GithubContent]
}

/**
* 
* @param content 
* @param Underscoreclass 
*/

case class GithubFile(
  content: Option[GithubContent],
  Underscoreclass: Option[String]
)
object GithubFile {
  implicit val encoderGithubFile: Encoder[GithubFile] = deriveEncoder[GithubFile].mapJson(_.dropNullValues)
  implicit val decoderGithubFile: Decoder[GithubFile] = deriveDecoder[GithubFile]
}

/**
* 
* @param Underscoreclass 
* @param Underscorelinks 
* @param jenkinsOrganizationPipeline 
* @param name 
*/

case class GithubOrganization(
  Underscoreclass: Option[String],
  Underscorelinks: Option[GithubOrganizationlinks],
  jenkinsOrganizationPipeline: Option[Boolean],
  name: Option[String]
)
object GithubOrganization {
  implicit val encoderGithubOrganization: Encoder[GithubOrganization] = deriveEncoder[GithubOrganization].mapJson(_.dropNullValues)
  implicit val decoderGithubOrganization: Decoder[GithubOrganization] = deriveDecoder[GithubOrganization]
}

/**
* 
* @param repositories 
* @param self 
* @param Underscoreclass 
*/

case class GithubOrganizationlinks(
  repositories: Option[Link],
  self: Option[Link],
  Underscoreclass: Option[String]
)
object GithubOrganizationlinks {
  implicit val encoderGithubOrganizationlinks: Encoder[GithubOrganizationlinks] = deriveEncoder[GithubOrganizationlinks].mapJson(_.dropNullValues)
  implicit val decoderGithubOrganizationlinks: Decoder[GithubOrganizationlinks] = deriveDecoder[GithubOrganizationlinks]
}

/**
* 
* @param Underscoreclass 
* @param Underscorelinks 
* @param items 
* @param lastPage 
* @param nextPage 
* @param pageSize 
*/

case class GithubRepositories(
  Underscoreclass: Option[String],
  Underscorelinks: Option[GithubRepositorieslinks],
  items: Option[List[GithubRepository]],
  lastPage: Option[Int],
  nextPage: Option[Int],
  pageSize: Option[Int]
)
object GithubRepositories {
  implicit val encoderGithubRepositories: Encoder[GithubRepositories] = deriveEncoder[GithubRepositories].mapJson(_.dropNullValues)
  implicit val decoderGithubRepositories: Decoder[GithubRepositories] = deriveDecoder[GithubRepositories]
}

/**
* 
* @param self 
* @param Underscoreclass 
*/

case class GithubRepositorieslinks(
  self: Option[Link],
  Underscoreclass: Option[String]
)
object GithubRepositorieslinks {
  implicit val encoderGithubRepositorieslinks: Encoder[GithubRepositorieslinks] = deriveEncoder[GithubRepositorieslinks].mapJson(_.dropNullValues)
  implicit val decoderGithubRepositorieslinks: Decoder[GithubRepositorieslinks] = deriveDecoder[GithubRepositorieslinks]
}

/**
* 
* @param Underscoreclass 
* @param Underscorelinks 
* @param defaultBranch 
* @param description 
* @param name 
* @param permissions 
* @param `private` 
* @param fullName 
*/

case class GithubRepository(
  Underscoreclass: Option[String],
  Underscorelinks: Option[GithubRepositorylinks],
  defaultBranch: Option[String],
  description: Option[String],
  name: Option[String],
  permissions: Option[GithubRepositorypermissions],
  `private`: Option[Boolean],
  fullName: Option[String]
)
object GithubRepository {
  implicit val encoderGithubRepository: Encoder[GithubRepository] = deriveEncoder[GithubRepository].mapJson(_.dropNullValues)
  implicit val decoderGithubRepository: Decoder[GithubRepository] = deriveDecoder[GithubRepository]
}

/**
* 
* @param self 
* @param Underscoreclass 
*/

case class GithubRepositorylinks(
  self: Option[Link],
  Underscoreclass: Option[String]
)
object GithubRepositorylinks {
  implicit val encoderGithubRepositorylinks: Encoder[GithubRepositorylinks] = deriveEncoder[GithubRepositorylinks].mapJson(_.dropNullValues)
  implicit val decoderGithubRepositorylinks: Decoder[GithubRepositorylinks] = deriveDecoder[GithubRepositorylinks]
}

/**
* 
* @param admin 
* @param push 
* @param pull 
* @param Underscoreclass 
*/

case class GithubRepositorypermissions(
  admin: Option[Boolean],
  push: Option[Boolean],
  pull: Option[Boolean],
  Underscoreclass: Option[String]
)
object GithubRepositorypermissions {
  implicit val encoderGithubRepositorypermissions: Encoder[GithubRepositorypermissions] = deriveEncoder[GithubRepositorypermissions].mapJson(_.dropNullValues)
  implicit val decoderGithubRepositorypermissions: Decoder[GithubRepositorypermissions] = deriveDecoder[GithubRepositorypermissions]
}

/**
* 
* @param Underscoreclass 
* @param Underscorelinks 
* @param repositories 
*/

case class GithubRespositoryContainer(
  Underscoreclass: Option[String],
  Underscorelinks: Option[GithubRespositoryContainerlinks],
  repositories: Option[GithubRepositories]
)
object GithubRespositoryContainer {
  implicit val encoderGithubRespositoryContainer: Encoder[GithubRespositoryContainer] = deriveEncoder[GithubRespositoryContainer].mapJson(_.dropNullValues)
  implicit val decoderGithubRespositoryContainer: Decoder[GithubRespositoryContainer] = deriveDecoder[GithubRespositoryContainer]
}

/**
* 
* @param self 
* @param Underscoreclass 
*/

case class GithubRespositoryContainerlinks(
  self: Option[Link],
  Underscoreclass: Option[String]
)
object GithubRespositoryContainerlinks {
  implicit val encoderGithubRespositoryContainerlinks: Encoder[GithubRespositoryContainerlinks] = deriveEncoder[GithubRespositoryContainerlinks].mapJson(_.dropNullValues)
  implicit val decoderGithubRespositoryContainerlinks: Decoder[GithubRespositoryContainerlinks] = deriveDecoder[GithubRespositoryContainerlinks]
}

/**
* 
* @param Underscoreclass 
* @param Underscorelinks 
* @param credentialId 
* @param id 
* @param uri 
*/

case class GithubScm(
  Underscoreclass: Option[String],
  Underscorelinks: Option[GithubScmlinks],
  credentialId: Option[String],
  id: Option[String],
  uri: Option[String]
)
object GithubScm {
  implicit val encoderGithubScm: Encoder[GithubScm] = deriveEncoder[GithubScm].mapJson(_.dropNullValues)
  implicit val decoderGithubScm: Decoder[GithubScm] = deriveDecoder[GithubScm]
}

/**
* 
* @param self 
* @param Underscoreclass 
*/

case class GithubScmlinks(
  self: Option[Link],
  Underscoreclass: Option[String]
)
object GithubScmlinks {
  implicit val encoderGithubScmlinks: Encoder[GithubScmlinks] = deriveEncoder[GithubScmlinks].mapJson(_.dropNullValues)
  implicit val decoderGithubScmlinks: Decoder[GithubScmlinks] = deriveDecoder[GithubScmlinks]
}

/**
* 
* @param Underscoreclass 
* @param assignedLabels 
* @param mode 
* @param nodeDescription 
* @param nodeName 
* @param numExecutors 
* @param description 
* @param jobs 
* @param primaryView 
* @param quietingDown 
* @param slaveAgentPort 
* @param unlabeledLoad 
* @param useCrumbs 
* @param useSecurity 
* @param views 
*/

case class Hudson(
  Underscoreclass: Option[String],
  assignedLabels: Option[List[HudsonassignedLabels]],
  mode: Option[String],
  nodeDescription: Option[String],
  nodeName: Option[String],
  numExecutors: Option[Int],
  description: Option[String],
  jobs: Option[List[FreeStyleProject]],
  primaryView: Option[AllView],
  quietingDown: Option[Boolean],
  slaveAgentPort: Option[Int],
  unlabeledLoad: Option[UnlabeledLoadStatistics],
  useCrumbs: Option[Boolean],
  useSecurity: Option[Boolean],
  views: Option[List[AllView]]
)
object Hudson {
  implicit val encoderHudson: Encoder[Hudson] = deriveEncoder[Hudson].mapJson(_.dropNullValues)
  implicit val decoderHudson: Decoder[Hudson] = deriveDecoder[Hudson]
}

/**
* 
* @param Underscoreclass 
* @param displayName 
* @param executors 
* @param icon 
* @param iconClassName 
* @param idle 
* @param jnlpAgent 
* @param launchSupported 
* @param loadStatistics 
* @param manualLaunchAllowed 
* @param monitorData 
* @param numExecutors 
* @param offline 
* @param offlineCause 
* @param offlineCauseReason 
* @param temporarilyOffline 
*/

case class HudsonMasterComputer(
  Underscoreclass: Option[String],
  displayName: Option[String],
  executors: Option[List[HudsonMasterComputerexecutors]],
  icon: Option[String],
  iconClassName: Option[String],
  idle: Option[Boolean],
  jnlpAgent: Option[Boolean],
  launchSupported: Option[Boolean],
  loadStatistics: Option[Label1],
  manualLaunchAllowed: Option[Boolean],
  monitorData: Option[HudsonMasterComputermonitorData],
  numExecutors: Option[Int],
  offline: Option[Boolean],
  offlineCause: Option[String],
  offlineCauseReason: Option[String],
  temporarilyOffline: Option[Boolean]
)
object HudsonMasterComputer {
  implicit val encoderHudsonMasterComputer: Encoder[HudsonMasterComputer] = deriveEncoder[HudsonMasterComputer].mapJson(_.dropNullValues)
  implicit val decoderHudsonMasterComputer: Decoder[HudsonMasterComputer] = deriveDecoder[HudsonMasterComputer]
}

/**
* 
* @param currentExecutable 
* @param idle 
* @param likelyStuck 
* @param number 
* @param progress 
* @param Underscoreclass 
*/

case class HudsonMasterComputerexecutors(
  currentExecutable: Option[FreeStyleBuild],
  idle: Option[Boolean],
  likelyStuck: Option[Boolean],
  number: Option[Int],
  progress: Option[Int],
  Underscoreclass: Option[String]
)
object HudsonMasterComputerexecutors {
  implicit val encoderHudsonMasterComputerexecutors: Encoder[HudsonMasterComputerexecutors] = deriveEncoder[HudsonMasterComputerexecutors].mapJson(_.dropNullValues)
  implicit val decoderHudsonMasterComputerexecutors: Decoder[HudsonMasterComputerexecutors] = deriveDecoder[HudsonMasterComputerexecutors]
}

/**
* 
* @param hudsonPeriodnodeUnderscoremonitorsPeriodSwapSpaceMonitor 
* @param hudsonPeriodnodeUnderscoremonitorsPeriodTemporarySpaceMonitor 
* @param hudsonPeriodnodeUnderscoremonitorsPeriodDiskSpaceMonitor 
* @param hudsonPeriodnodeUnderscoremonitorsPeriodArchitectureMonitor 
* @param hudsonPeriodnodeUnderscoremonitorsPeriodResponseTimeMonitor 
* @param hudsonPeriodnodeUnderscoremonitorsPeriodClockMonitor 
* @param Underscoreclass 
*/

case class HudsonMasterComputermonitorData(
  hudsonPeriodnodeUnderscoremonitorsPeriodSwapSpaceMonitor: Option[SwapSpaceMonitorMemoryUsage2],
  hudsonPeriodnodeUnderscoremonitorsPeriodTemporarySpaceMonitor: Option[DiskSpaceMonitorDescriptorDiskSpace],
  hudsonPeriodnodeUnderscoremonitorsPeriodDiskSpaceMonitor: Option[DiskSpaceMonitorDescriptorDiskSpace],
  hudsonPeriodnodeUnderscoremonitorsPeriodArchitectureMonitor: Option[String],
  hudsonPeriodnodeUnderscoremonitorsPeriodResponseTimeMonitor: Option[ResponseTimeMonitorData],
  hudsonPeriodnodeUnderscoremonitorsPeriodClockMonitor: Option[ClockDifference],
  Underscoreclass: Option[String]
)
object HudsonMasterComputermonitorData {
  implicit val encoderHudsonMasterComputermonitorData: Encoder[HudsonMasterComputermonitorData] = deriveEncoder[HudsonMasterComputermonitorData].mapJson(_.dropNullValues)
  implicit val decoderHudsonMasterComputermonitorData: Decoder[HudsonMasterComputermonitorData] = deriveDecoder[HudsonMasterComputermonitorData]
}

/**
* 
* @param Underscoreclass 
*/

case class HudsonassignedLabels(
  Underscoreclass: Option[String]
)
object HudsonassignedLabels {
  implicit val encoderHudsonassignedLabels: Encoder[HudsonassignedLabels] = deriveEncoder[HudsonassignedLabels].mapJson(_.dropNullValues)
  implicit val decoderHudsonassignedLabels: Decoder[HudsonassignedLabels] = deriveDecoder[HudsonassignedLabels]
}

/**
* 
* @param Underscoreclass 
* @param Underscorelinks 
* @param id 
* @param message 
* @param ok 
* @param parameters 
* @param submitter 
*/

case class InputStepImpl(
  Underscoreclass: Option[String],
  Underscorelinks: Option[InputStepImpllinks],
  id: Option[String],
  message: Option[String],
  ok: Option[String],
  parameters: Option[List[StringParameterDefinition]],
  submitter: Option[String]
)
object InputStepImpl {
  implicit val encoderInputStepImpl: Encoder[InputStepImpl] = deriveEncoder[InputStepImpl].mapJson(_.dropNullValues)
  implicit val decoderInputStepImpl: Decoder[InputStepImpl] = deriveDecoder[InputStepImpl]
}

/**
* 
* @param self 
* @param Underscoreclass 
*/

case class InputStepImpllinks(
  self: Option[Link],
  Underscoreclass: Option[String]
)
object InputStepImpllinks {
  implicit val encoderInputStepImpllinks: Encoder[InputStepImpllinks] = deriveEncoder[InputStepImpllinks].mapJson(_.dropNullValues)
  implicit val decoderInputStepImpllinks: Decoder[InputStepImpllinks] = deriveDecoder[InputStepImpllinks]
}

/**
* 
* @param Underscoreclass 
*/

case class Label1(
  Underscoreclass: Option[String]
)
object Label1 {
  implicit val encoderLabel1: Encoder[Label1] = deriveEncoder[Label1].mapJson(_.dropNullValues)
  implicit val decoderLabel1: Decoder[Label1] = deriveDecoder[Label1]
}

/**
* 
* @param Underscoreclass 
* @param href 
*/

case class Link(
  Underscoreclass: Option[String],
  href: Option[String]
)
object Link {
  implicit val encoderLink: Encoder[Link] = deriveEncoder[Link].mapJson(_.dropNullValues)
  implicit val decoderLink: Decoder[Link] = deriveDecoder[Link]
}

/**
* 
* @param Underscoreclass 
* @param description 
* @param jobs 
* @param name 
* @param url 
*/

case class ListView(
  Underscoreclass: Option[String],
  description: Option[String],
  jobs: Option[List[FreeStyleProject]],
  name: Option[String],
  url: Option[String]
)
object ListView {
  implicit val encoderListView: Encoder[ListView] = deriveEncoder[ListView].mapJson(_.dropNullValues)
  implicit val decoderListView: Decoder[ListView] = deriveDecoder[ListView]
}

/**
* 
* @param displayName 
* @param estimatedDurationInMillis 
* @param latestRun 
* @param name 
* @param organization 
* @param weatherScore 
* @param branchNames 
* @param numberOfFailingBranches 
* @param numberOfFailingPullRequests 
* @param numberOfSuccessfulBranches 
* @param numberOfSuccessfulPullRequests 
* @param totalNumberOfBranches 
* @param totalNumberOfPullRequests 
* @param Underscoreclass 
*/

case class MultibranchPipeline(
  displayName: Option[String],
  estimatedDurationInMillis: Option[Int],
  latestRun: Option[String],
  name: Option[String],
  organization: Option[String],
  weatherScore: Option[Int],
  branchNames: Option[List[String]],
  numberOfFailingBranches: Option[Int],
  numberOfFailingPullRequests: Option[Int],
  numberOfSuccessfulBranches: Option[Int],
  numberOfSuccessfulPullRequests: Option[Int],
  totalNumberOfBranches: Option[Int],
  totalNumberOfPullRequests: Option[Int],
  Underscoreclass: Option[String]
)
object MultibranchPipeline {
  implicit val encoderMultibranchPipeline: Encoder[MultibranchPipeline] = deriveEncoder[MultibranchPipeline].mapJson(_.dropNullValues)
  implicit val decoderMultibranchPipeline: Decoder[MultibranchPipeline] = deriveDecoder[MultibranchPipeline]
}

/**
* 
* @param Underscoreclass 
*/

case class NullSCM(
  Underscoreclass: Option[String]
)
object NullSCM {
  implicit val encoderNullSCM: Encoder[NullSCM] = deriveEncoder[NullSCM].mapJson(_.dropNullValues)
  implicit val decoderNullSCM: Decoder[NullSCM] = deriveDecoder[NullSCM]
}

/**
* 
* @param Underscoreclass 
* @param name 
*/

case class Organisation(
  Underscoreclass: Option[String],
  name: Option[String]
)
object Organisation {
  implicit val encoderOrganisation: Encoder[Organisation] = deriveEncoder[Organisation].mapJson(_.dropNullValues)
  implicit val decoderOrganisation: Decoder[Organisation] = deriveDecoder[Organisation]
}

/**
* 
* @param Underscoreclass 
* @param organization 
* @param name 
* @param displayName 
* @param fullName 
* @param weatherScore 
* @param estimatedDurationInMillis 
* @param latestRun 
*/

case class Pipeline(
  Underscoreclass: Option[String],
  organization: Option[String],
  name: Option[String],
  displayName: Option[String],
  fullName: Option[String],
  weatherScore: Option[Int],
  estimatedDurationInMillis: Option[Int],
  latestRun: Option[PipelinelatestRun]
)
object Pipeline {
  implicit val encoderPipeline: Encoder[Pipeline] = deriveEncoder[Pipeline].mapJson(_.dropNullValues)
  implicit val decoderPipeline: Decoder[Pipeline] = deriveDecoder[Pipeline]
}

/**
* 
* @param Underscoreclass 
* @param artifacts 
* @param durationInMillis 
* @param estimatedDurationInMillis 
* @param enQueueTime 
* @param endTime 
* @param id 
* @param organization 
* @param pipeline 
* @param result 
* @param runSummary 
* @param startTime 
* @param state 
* @param `type` 
* @param commitId 
*/

case class PipelineActivity(
  Underscoreclass: Option[String],
  artifacts: Option[List[PipelineActivityartifacts]],
  durationInMillis: Option[Int],
  estimatedDurationInMillis: Option[Int],
  enQueueTime: Option[String],
  endTime: Option[String],
  id: Option[String],
  organization: Option[String],
  pipeline: Option[String],
  result: Option[String],
  runSummary: Option[String],
  startTime: Option[String],
  state: Option[String],
  `type`: Option[String],
  commitId: Option[String]
)
object PipelineActivity {
  implicit val encoderPipelineActivity: Encoder[PipelineActivity] = deriveEncoder[PipelineActivity].mapJson(_.dropNullValues)
  implicit val decoderPipelineActivity: Decoder[PipelineActivity] = deriveDecoder[PipelineActivity]
}

/**
* 
* @param name 
* @param size 
* @param url 
* @param Underscoreclass 
*/

case class PipelineActivityartifacts(
  name: Option[String],
  size: Option[Int],
  url: Option[String],
  Underscoreclass: Option[String]
)
object PipelineActivityartifacts {
  implicit val encoderPipelineActivityartifacts: Encoder[PipelineActivityartifacts] = deriveEncoder[PipelineActivityartifacts].mapJson(_.dropNullValues)
  implicit val decoderPipelineActivityartifacts: Decoder[PipelineActivityartifacts] = deriveDecoder[PipelineActivityartifacts]
}

/**
* 
* @param displayName 
* @param estimatedDurationInMillis 
* @param name 
* @param weatherScore 
* @param latestRun 
* @param organization 
* @param pullRequest 
* @param totalNumberOfPullRequests 
* @param Underscoreclass 
*/

case class PipelineBranchesitem(
  displayName: Option[String],
  estimatedDurationInMillis: Option[Int],
  name: Option[String],
  weatherScore: Option[Int],
  latestRun: Option[PipelineBranchesitemlatestRun],
  organization: Option[String],
  pullRequest: Option[PipelineBranchesitempullRequest],
  totalNumberOfPullRequests: Option[Int],
  Underscoreclass: Option[String]
)
object PipelineBranchesitem {
  implicit val encoderPipelineBranchesitem: Encoder[PipelineBranchesitem] = deriveEncoder[PipelineBranchesitem].mapJson(_.dropNullValues)
  implicit val decoderPipelineBranchesitem: Decoder[PipelineBranchesitem] = deriveDecoder[PipelineBranchesitem]
}

/**
* 
* @param durationInMillis 
* @param estimatedDurationInMillis 
* @param enQueueTime 
* @param endTime 
* @param id 
* @param organization 
* @param pipeline 
* @param result 
* @param runSummary 
* @param startTime 
* @param state 
* @param `type` 
* @param commitId 
* @param Underscoreclass 
*/

case class PipelineBranchesitemlatestRun(
  durationInMillis: Option[Int],
  estimatedDurationInMillis: Option[Int],
  enQueueTime: Option[String],
  endTime: Option[String],
  id: Option[String],
  organization: Option[String],
  pipeline: Option[String],
  result: Option[String],
  runSummary: Option[String],
  startTime: Option[String],
  state: Option[String],
  `type`: Option[String],
  commitId: Option[String],
  Underscoreclass: Option[String]
)
object PipelineBranchesitemlatestRun {
  implicit val encoderPipelineBranchesitemlatestRun: Encoder[PipelineBranchesitemlatestRun] = deriveEncoder[PipelineBranchesitemlatestRun].mapJson(_.dropNullValues)
  implicit val decoderPipelineBranchesitemlatestRun: Decoder[PipelineBranchesitemlatestRun] = deriveDecoder[PipelineBranchesitemlatestRun]
}

/**
* 
* @param Underscorelinks 
* @param author 
* @param id 
* @param title 
* @param url 
* @param Underscoreclass 
*/

case class PipelineBranchesitempullRequest(
  Underscorelinks: Option[PipelineBranchesitempullRequestlinks],
  author: Option[String],
  id: Option[String],
  title: Option[String],
  url: Option[String],
  Underscoreclass: Option[String]
)
object PipelineBranchesitempullRequest {
  implicit val encoderPipelineBranchesitempullRequest: Encoder[PipelineBranchesitempullRequest] = deriveEncoder[PipelineBranchesitempullRequest].mapJson(_.dropNullValues)
  implicit val decoderPipelineBranchesitempullRequest: Decoder[PipelineBranchesitempullRequest] = deriveDecoder[PipelineBranchesitempullRequest]
}

/**
* 
* @param self 
* @param Underscoreclass 
*/

case class PipelineBranchesitempullRequestlinks(
  self: Option[String],
  Underscoreclass: Option[String]
)
object PipelineBranchesitempullRequestlinks {
  implicit val encoderPipelineBranchesitempullRequestlinks: Encoder[PipelineBranchesitempullRequestlinks] = deriveEncoder[PipelineBranchesitempullRequestlinks].mapJson(_.dropNullValues)
  implicit val decoderPipelineBranchesitempullRequestlinks: Decoder[PipelineBranchesitempullRequestlinks] = deriveDecoder[PipelineBranchesitempullRequestlinks]
}

/**
* 
* @param Underscoreclass 
* @param displayName 
* @param fullName 
* @param name 
* @param organization 
* @param numberOfFolders 
* @param numberOfPipelines 
*/

case class PipelineFolderImpl(
  Underscoreclass: Option[String],
  displayName: Option[String],
  fullName: Option[String],
  name: Option[String],
  organization: Option[String],
  numberOfFolders: Option[Int],
  numberOfPipelines: Option[Int]
)
object PipelineFolderImpl {
  implicit val encoderPipelineFolderImpl: Encoder[PipelineFolderImpl] = deriveEncoder[PipelineFolderImpl].mapJson(_.dropNullValues)
  implicit val decoderPipelineFolderImpl: Decoder[PipelineFolderImpl] = deriveDecoder[PipelineFolderImpl]
}

/**
* 
* @param Underscoreclass 
* @param displayName 
* @param estimatedDurationInMillis 
* @param fullName 
* @param latestRun 
* @param name 
* @param organization 
* @param weatherScore 
* @param Underscorelinks 
*/

case class PipelineImpl(
  Underscoreclass: Option[String],
  displayName: Option[String],
  estimatedDurationInMillis: Option[Int],
  fullName: Option[String],
  latestRun: Option[String],
  name: Option[String],
  organization: Option[String],
  weatherScore: Option[Int],
  Underscorelinks: Option[PipelineImpllinks]
)
object PipelineImpl {
  implicit val encoderPipelineImpl: Encoder[PipelineImpl] = deriveEncoder[PipelineImpl].mapJson(_.dropNullValues)
  implicit val decoderPipelineImpl: Decoder[PipelineImpl] = deriveDecoder[PipelineImpl]
}

/**
* 
* @param self 
* @param actions 
* @param runs 
* @param queue 
* @param Underscoreclass 
*/

case class PipelineImpllinks(
  self: Option[Link],
  actions: Option[Link],
  runs: Option[Link],
  queue: Option[Link],
  Underscoreclass: Option[String]
)
object PipelineImpllinks {
  implicit val encoderPipelineImpllinks: Encoder[PipelineImpllinks] = deriveEncoder[PipelineImpllinks].mapJson(_.dropNullValues)
  implicit val decoderPipelineImpllinks: Decoder[PipelineImpllinks] = deriveDecoder[PipelineImpllinks]
}

/**
* 
* @param Underscoreclass 
* @param artifacts 
* @param durationInMillis 
* @param estimatedDurationInMillis 
* @param enQueueTime 
* @param endTime 
* @param id 
* @param organization 
* @param pipeline 
* @param result 
* @param runSummary 
* @param startTime 
* @param state 
* @param `type` 
* @param commitId 
*/

case class PipelineRun(
  Underscoreclass: Option[String],
  artifacts: Option[List[PipelineRunartifacts]],
  durationInMillis: Option[Int],
  estimatedDurationInMillis: Option[Int],
  enQueueTime: Option[String],
  endTime: Option[String],
  id: Option[String],
  organization: Option[String],
  pipeline: Option[String],
  result: Option[String],
  runSummary: Option[String],
  startTime: Option[String],
  state: Option[String],
  `type`: Option[String],
  commitId: Option[String]
)
object PipelineRun {
  implicit val encoderPipelineRun: Encoder[PipelineRun] = deriveEncoder[PipelineRun].mapJson(_.dropNullValues)
  implicit val decoderPipelineRun: Decoder[PipelineRun] = deriveDecoder[PipelineRun]
}

/**
* 
* @param Underscoreclass 
* @param Underscorelinks 
* @param durationInMillis 
* @param enQueueTime 
* @param endTime 
* @param estimatedDurationInMillis 
* @param id 
* @param organization 
* @param pipeline 
* @param result 
* @param runSummary 
* @param startTime 
* @param state 
* @param `type` 
* @param commitId 
*/

case class PipelineRunImpl(
  Underscoreclass: Option[String],
  Underscorelinks: Option[PipelineRunImpllinks],
  durationInMillis: Option[Int],
  enQueueTime: Option[String],
  endTime: Option[String],
  estimatedDurationInMillis: Option[Int],
  id: Option[String],
  organization: Option[String],
  pipeline: Option[String],
  result: Option[String],
  runSummary: Option[String],
  startTime: Option[String],
  state: Option[String],
  `type`: Option[String],
  commitId: Option[String]
)
object PipelineRunImpl {
  implicit val encoderPipelineRunImpl: Encoder[PipelineRunImpl] = deriveEncoder[PipelineRunImpl].mapJson(_.dropNullValues)
  implicit val decoderPipelineRunImpl: Decoder[PipelineRunImpl] = deriveDecoder[PipelineRunImpl]
}

/**
* 
* @param nodes 
* @param log 
* @param self 
* @param actions 
* @param steps 
* @param Underscoreclass 
*/

case class PipelineRunImpllinks(
  nodes: Option[Link],
  log: Option[Link],
  self: Option[Link],
  actions: Option[Link],
  steps: Option[Link],
  Underscoreclass: Option[String]
)
object PipelineRunImpllinks {
  implicit val encoderPipelineRunImpllinks: Encoder[PipelineRunImpllinks] = deriveEncoder[PipelineRunImpllinks].mapJson(_.dropNullValues)
  implicit val decoderPipelineRunImpllinks: Decoder[PipelineRunImpllinks] = deriveDecoder[PipelineRunImpllinks]
}

/**
* 
* @param Underscoreclass 
* @param displayName 
* @param durationInMillis 
* @param edges 
* @param id 
* @param result 
* @param startTime 
* @param state 
*/

case class PipelineRunNode(
  Underscoreclass: Option[String],
  displayName: Option[String],
  durationInMillis: Option[Int],
  edges: Option[List[PipelineRunNodeedges]],
  id: Option[String],
  result: Option[String],
  startTime: Option[String],
  state: Option[String]
)
object PipelineRunNode {
  implicit val encoderPipelineRunNode: Encoder[PipelineRunNode] = deriveEncoder[PipelineRunNode].mapJson(_.dropNullValues)
  implicit val decoderPipelineRunNode: Decoder[PipelineRunNode] = deriveDecoder[PipelineRunNode]
}

/**
* 
* @param id 
* @param Underscoreclass 
*/

case class PipelineRunNodeedges(
  id: Option[String],
  Underscoreclass: Option[String]
)
object PipelineRunNodeedges {
  implicit val encoderPipelineRunNodeedges: Encoder[PipelineRunNodeedges] = deriveEncoder[PipelineRunNodeedges].mapJson(_.dropNullValues)
  implicit val decoderPipelineRunNodeedges: Decoder[PipelineRunNodeedges] = deriveDecoder[PipelineRunNodeedges]
}

/**
* 
* @param name 
* @param size 
* @param url 
* @param Underscoreclass 
*/

case class PipelineRunartifacts(
  name: Option[String],
  size: Option[Int],
  url: Option[String],
  Underscoreclass: Option[String]
)
object PipelineRunartifacts {
  implicit val encoderPipelineRunartifacts: Encoder[PipelineRunartifacts] = deriveEncoder[PipelineRunartifacts].mapJson(_.dropNullValues)
  implicit val decoderPipelineRunartifacts: Decoder[PipelineRunartifacts] = deriveDecoder[PipelineRunartifacts]
}

/**
* 
* @param Underscoreclass 
* @param Underscorelinks 
* @param displayName 
* @param durationInMillis 
* @param id 
* @param input 
* @param result 
* @param startTime 
* @param state 
*/

case class PipelineStepImpl(
  Underscoreclass: Option[String],
  Underscorelinks: Option[PipelineStepImpllinks],
  displayName: Option[String],
  durationInMillis: Option[Int],
  id: Option[String],
  input: Option[InputStepImpl],
  result: Option[String],
  startTime: Option[String],
  state: Option[String]
)
object PipelineStepImpl {
  implicit val encoderPipelineStepImpl: Encoder[PipelineStepImpl] = deriveEncoder[PipelineStepImpl].mapJson(_.dropNullValues)
  implicit val decoderPipelineStepImpl: Decoder[PipelineStepImpl] = deriveDecoder[PipelineStepImpl]
}

/**
* 
* @param self 
* @param actions 
* @param Underscoreclass 
*/

case class PipelineStepImpllinks(
  self: Option[Link],
  actions: Option[Link],
  Underscoreclass: Option[String]
)
object PipelineStepImpllinks {
  implicit val encoderPipelineStepImpllinks: Encoder[PipelineStepImpllinks] = deriveEncoder[PipelineStepImpllinks].mapJson(_.dropNullValues)
  implicit val decoderPipelineStepImpllinks: Decoder[PipelineStepImpllinks] = deriveDecoder[PipelineStepImpllinks]
}

/**
* 
* @param artifacts 
* @param durationInMillis 
* @param estimatedDurationInMillis 
* @param enQueueTime 
* @param endTime 
* @param id 
* @param organization 
* @param pipeline 
* @param result 
* @param runSummary 
* @param startTime 
* @param state 
* @param `type` 
* @param commitId 
* @param Underscoreclass 
*/

case class PipelinelatestRun(
  artifacts: Option[List[PipelinelatestRunartifacts]],
  durationInMillis: Option[Int],
  estimatedDurationInMillis: Option[Int],
  enQueueTime: Option[String],
  endTime: Option[String],
  id: Option[String],
  organization: Option[String],
  pipeline: Option[String],
  result: Option[String],
  runSummary: Option[String],
  startTime: Option[String],
  state: Option[String],
  `type`: Option[String],
  commitId: Option[String],
  Underscoreclass: Option[String]
)
object PipelinelatestRun {
  implicit val encoderPipelinelatestRun: Encoder[PipelinelatestRun] = deriveEncoder[PipelinelatestRun].mapJson(_.dropNullValues)
  implicit val decoderPipelinelatestRun: Decoder[PipelinelatestRun] = deriveDecoder[PipelinelatestRun]
}

/**
* 
* @param name 
* @param size 
* @param url 
* @param Underscoreclass 
*/

case class PipelinelatestRunartifacts(
  name: Option[String],
  size: Option[Int],
  url: Option[String],
  Underscoreclass: Option[String]
)
object PipelinelatestRunartifacts {
  implicit val encoderPipelinelatestRunartifacts: Encoder[PipelinelatestRunartifacts] = deriveEncoder[PipelinelatestRunartifacts].mapJson(_.dropNullValues)
  implicit val decoderPipelinelatestRunartifacts: Decoder[PipelinelatestRunartifacts] = deriveDecoder[PipelinelatestRunartifacts]
}

/**
* 
* @param Underscoreclass 
* @param items 
*/

case class Queue(
  Underscoreclass: Option[String],
  items: Option[List[QueueBlockedItem]]
)
object Queue {
  implicit val encoderQueue: Encoder[Queue] = deriveEncoder[Queue].mapJson(_.dropNullValues)
  implicit val decoderQueue: Decoder[Queue] = deriveDecoder[Queue]
}

/**
* 
* @param Underscoreclass 
* @param actions 
* @param blocked 
* @param buildable 
* @param id 
* @param inQueueSince 
* @param params 
* @param stuck 
* @param task 
* @param url 
* @param why 
* @param buildableStartMilliseconds 
*/

case class QueueBlockedItem(
  Underscoreclass: Option[String],
  actions: Option[List[CauseAction]],
  blocked: Option[Boolean],
  buildable: Option[Boolean],
  id: Option[Int],
  inQueueSince: Option[Int],
  params: Option[String],
  stuck: Option[Boolean],
  task: Option[FreeStyleProject],
  url: Option[String],
  why: Option[String],
  buildableStartMilliseconds: Option[Int]
)
object QueueBlockedItem {
  implicit val encoderQueueBlockedItem: Encoder[QueueBlockedItem] = deriveEncoder[QueueBlockedItem].mapJson(_.dropNullValues)
  implicit val decoderQueueBlockedItem: Decoder[QueueBlockedItem] = deriveDecoder[QueueBlockedItem]
}

/**
* 
* @param Underscoreclass 
* @param expectedBuildNumber 
* @param id 
* @param pipeline 
* @param queuedTime 
*/

case class QueueItemImpl(
  Underscoreclass: Option[String],
  expectedBuildNumber: Option[Int],
  id: Option[String],
  pipeline: Option[String],
  queuedTime: Option[Int]
)
object QueueItemImpl {
  implicit val encoderQueueItemImpl: Encoder[QueueItemImpl] = deriveEncoder[QueueItemImpl].mapJson(_.dropNullValues)
  implicit val decoderQueueItemImpl: Decoder[QueueItemImpl] = deriveDecoder[QueueItemImpl]
}

/**
* 
* @param Underscoreclass 
* @param actions 
* @param blocked 
* @param buildable 
* @param id 
* @param inQueueSince 
* @param params 
* @param stuck 
* @param task 
* @param url 
* @param why 
* @param cancelled 
* @param executable 
*/

case class QueueLeftItem(
  Underscoreclass: Option[String],
  actions: Option[List[CauseAction]],
  blocked: Option[Boolean],
  buildable: Option[Boolean],
  id: Option[Int],
  inQueueSince: Option[Int],
  params: Option[String],
  stuck: Option[Boolean],
  task: Option[FreeStyleProject],
  url: Option[String],
  why: Option[String],
  cancelled: Option[Boolean],
  executable: Option[FreeStyleBuild]
)
object QueueLeftItem {
  implicit val encoderQueueLeftItem: Encoder[QueueLeftItem] = deriveEncoder[QueueLeftItem].mapJson(_.dropNullValues)
  implicit val decoderQueueLeftItem: Decoder[QueueLeftItem] = deriveDecoder[QueueLeftItem]
}

/**
* 
* @param Underscoreclass 
* @param timestamp 
* @param average 
*/

case class ResponseTimeMonitorData(
  Underscoreclass: Option[String],
  timestamp: Option[Int],
  average: Option[Int]
)
object ResponseTimeMonitorData {
  implicit val encoderResponseTimeMonitorData: Encoder[ResponseTimeMonitorData] = deriveEncoder[ResponseTimeMonitorData].mapJson(_.dropNullValues)
  implicit val decoderResponseTimeMonitorData: Decoder[ResponseTimeMonitorData] = deriveDecoder[ResponseTimeMonitorData]
}

/**
* 
* @param Underscoreclass 
* @param defaultParameterValue 
* @param description 
* @param name 
* @param `type` 
*/

case class StringParameterDefinition(
  Underscoreclass: Option[String],
  defaultParameterValue: Option[StringParameterValue],
  description: Option[String],
  name: Option[String],
  `type`: Option[String]
)
object StringParameterDefinition {
  implicit val encoderStringParameterDefinition: Encoder[StringParameterDefinition] = deriveEncoder[StringParameterDefinition].mapJson(_.dropNullValues)
  implicit val decoderStringParameterDefinition: Decoder[StringParameterDefinition] = deriveDecoder[StringParameterDefinition]
}

/**
* 
* @param Underscoreclass 
* @param name 
* @param value 
*/

case class StringParameterValue(
  Underscoreclass: Option[String],
  name: Option[String],
  value: Option[String]
)
object StringParameterValue {
  implicit val encoderStringParameterValue: Encoder[StringParameterValue] = deriveEncoder[StringParameterValue].mapJson(_.dropNullValues)
  implicit val decoderStringParameterValue: Decoder[StringParameterValue] = deriveDecoder[StringParameterValue]
}

/**
* 
* @param Underscoreclass 
* @param availablePhysicalMemory 
* @param availableSwapSpace 
* @param totalPhysicalMemory 
* @param totalSwapSpace 
*/

case class SwapSpaceMonitorMemoryUsage2(
  Underscoreclass: Option[String],
  availablePhysicalMemory: Option[Int],
  availableSwapSpace: Option[Int],
  totalPhysicalMemory: Option[Int],
  totalSwapSpace: Option[Int]
)
object SwapSpaceMonitorMemoryUsage2 {
  implicit val encoderSwapSpaceMonitorMemoryUsage2: Encoder[SwapSpaceMonitorMemoryUsage2] = deriveEncoder[SwapSpaceMonitorMemoryUsage2].mapJson(_.dropNullValues)
  implicit val decoderSwapSpaceMonitorMemoryUsage2: Decoder[SwapSpaceMonitorMemoryUsage2] = deriveDecoder[SwapSpaceMonitorMemoryUsage2]
}

/**
* 
* @param Underscoreclass 
*/

case class UnlabeledLoadStatistics(
  Underscoreclass: Option[String]
)
object UnlabeledLoadStatistics {
  implicit val encoderUnlabeledLoadStatistics: Encoder[UnlabeledLoadStatistics] = deriveEncoder[UnlabeledLoadStatistics].mapJson(_.dropNullValues)
  implicit val decoderUnlabeledLoadStatistics: Decoder[UnlabeledLoadStatistics] = deriveDecoder[UnlabeledLoadStatistics]
}

/**
* 
* @param Underscoreclass 
* @param id 
* @param fullName 
* @param email 
* @param name 
*/

case class User(
  Underscoreclass: Option[String],
  id: Option[String],
  fullName: Option[String],
  email: Option[String],
  name: Option[String]
)
object User {
  implicit val encoderUser: Encoder[User] = deriveEncoder[User].mapJson(_.dropNullValues)
  implicit val decoderUser: Decoder[User] = deriveDecoder[User]
}

