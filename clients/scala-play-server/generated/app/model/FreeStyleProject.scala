package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for FreeStyleProject.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2024-03-15T14:20:17.794970991Z[Etc/UTC]", comments = "Generator version: 7.4.0")
case class FreeStyleProject(
  `class`: Option[String],
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
  implicit lazy val freeStyleProjectJsonFormat: Format[FreeStyleProject] = Json.format[FreeStyleProject]
}

