package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for HudsonMasterComputerexecutors.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-08-14T13:30:17.222677609Z[Etc/UTC]", comments = "Generator version: 7.24.0")
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

