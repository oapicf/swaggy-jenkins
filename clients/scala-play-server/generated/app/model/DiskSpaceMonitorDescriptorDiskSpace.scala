package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for DiskSpaceMonitorDescriptorDiskSpace.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-08-16T01:41:51.296244513Z[Etc/UTC]", comments = "Generator version: 7.24.0")
case class DiskSpaceMonitorDescriptorDiskSpace(
  `class`: Option[String],
  timestamp: Option[Int],
  path: Option[String],
  size: Option[Int]
)

object DiskSpaceMonitorDescriptorDiskSpace {
  implicit lazy val diskSpaceMonitorDescriptorDiskSpaceJsonFormat: Format[DiskSpaceMonitorDescriptorDiskSpace] = Json.format[DiskSpaceMonitorDescriptorDiskSpace]
}

