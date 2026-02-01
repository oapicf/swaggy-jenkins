package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for HudsonMasterComputermonitorData.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-02-01T01:27:02.805814468Z[Etc/UTC]", comments = "Generator version: 7.18.0")
case class HudsonMasterComputermonitorData(
  hudsonNodeMonitorsSwapSpaceMonitor: Option[SwapSpaceMonitorMemoryUsage2],
  hudsonNodeMonitorsTemporarySpaceMonitor: Option[DiskSpaceMonitorDescriptorDiskSpace],
  hudsonNodeMonitorsDiskSpaceMonitor: Option[DiskSpaceMonitorDescriptorDiskSpace],
  hudsonNodeMonitorsArchitectureMonitor: Option[String],
  hudsonNodeMonitorsResponseTimeMonitor: Option[ResponseTimeMonitorData],
  hudsonNodeMonitorsClockMonitor: Option[ClockDifference],
  `class`: Option[String]
)

object HudsonMasterComputermonitorData {
  implicit lazy val hudsonMasterComputermonitorDataJsonFormat: Format[HudsonMasterComputermonitorData] = Json.format[HudsonMasterComputermonitorData]
}

