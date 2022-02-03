package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import DiskSpaceMonitorDescriptorDiskSpace._

case class DiskSpaceMonitorDescriptorDiskSpace (
  `class`: Option[String],
timestamp: Option[Integer],
`path`: Option[String],
size: Option[Integer])

object DiskSpaceMonitorDescriptorDiskSpace {
  import DateTimeCodecs._

  implicit val DiskSpaceMonitorDescriptorDiskSpaceCodecJson: CodecJson[DiskSpaceMonitorDescriptorDiskSpace] = CodecJson.derive[DiskSpaceMonitorDescriptorDiskSpace]
  implicit val DiskSpaceMonitorDescriptorDiskSpaceDecoder: EntityDecoder[DiskSpaceMonitorDescriptorDiskSpace] = jsonOf[DiskSpaceMonitorDescriptorDiskSpace]
  implicit val DiskSpaceMonitorDescriptorDiskSpaceEncoder: EntityEncoder[DiskSpaceMonitorDescriptorDiskSpace] = jsonEncoderOf[DiskSpaceMonitorDescriptorDiskSpace]
}
