package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for HudsonMasterComputerexecutors.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2024-03-15T14:20:17.794970991Z[Etc/UTC]", comments = "Generator version: 7.4.0")
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

