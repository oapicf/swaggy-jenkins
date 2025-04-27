package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for FreeStyleBuild.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2025-04-27T08:11:07.072823777Z[Etc/UTC]", comments = "Generator version: 7.12.0")
case class FreeStyleBuild(
  `class`: Option[String],
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
  implicit lazy val freeStyleBuildJsonFormat: Format[FreeStyleBuild] = Json.format[FreeStyleBuild]
}

