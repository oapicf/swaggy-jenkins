package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for HudsonMasterComputerexecutors.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-10-11T12:08:51.915360815Z[Etc/UTC]", comments = "Generator version: 7.24.0")
case class HudsonMasterComputerexecutors(
  currentExecutable: Option[FreeStyleBuild],
  idle: Option[Boolean],
  likelyStuck: Option[Boolean],
  number: Option[Int],
  progress: Option[Int],
  `class`: Option[String]
)

object HudsonMasterComputerexecutors {
  implicit lazy val hudsonMasterComputerexecutorsJsonFormat: Format[HudsonMasterComputerexecutors] = Json.format[HudsonMasterComputerexecutors]
}

