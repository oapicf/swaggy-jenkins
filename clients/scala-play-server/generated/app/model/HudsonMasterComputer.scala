package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for HudsonMasterComputer.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2025-04-27T08:11:07.072823777Z[Etc/UTC]", comments = "Generator version: 7.12.0")
case class HudsonMasterComputer(
  `class`: Option[String],
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
  implicit lazy val hudsonMasterComputerJsonFormat: Format[HudsonMasterComputer] = Json.format[HudsonMasterComputer]
}

