package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for SwapSpaceMonitorMemoryUsage2.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-08-15T02:30:45.020896586Z[Etc/UTC]", comments = "Generator version: 7.24.0")
case class SwapSpaceMonitorMemoryUsage2(
  `class`: Option[String],
  availablePhysicalMemory: Option[Int],
  availableSwapSpace: Option[Int],
  totalPhysicalMemory: Option[Int],
  totalSwapSpace: Option[Int]
)

object SwapSpaceMonitorMemoryUsage2 {
  implicit lazy val swapSpaceMonitorMemoryUsage2JsonFormat: Format[SwapSpaceMonitorMemoryUsage2] = Json.format[SwapSpaceMonitorMemoryUsage2]
}

