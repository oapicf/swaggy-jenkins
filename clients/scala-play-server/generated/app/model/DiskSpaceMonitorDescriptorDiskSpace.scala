package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for DiskSpaceMonitorDescriptorDiskSpace.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-02-01T01:27:02.805814468Z[Etc/UTC]", comments = "Generator version: 7.18.0")
case class DiskSpaceMonitorDescriptorDiskSpace(
  `class`: Option[String],
  timestamp: Option[Int],
  path: Option[String],
  size: Option[Int]
)

object DiskSpaceMonitorDescriptorDiskSpace {
  implicit lazy val diskSpaceMonitorDescriptorDiskSpaceJsonFormat: Format[DiskSpaceMonitorDescriptorDiskSpace] = Json.format[DiskSpaceMonitorDescriptorDiskSpace]
}

