package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for SwapSpaceMonitorMemoryUsage2.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2025-04-27T08:11:07.072823777Z[Etc/UTC]", comments = "Generator version: 7.12.0")
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

