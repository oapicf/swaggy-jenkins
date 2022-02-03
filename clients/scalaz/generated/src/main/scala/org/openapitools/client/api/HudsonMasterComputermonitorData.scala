package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import HudsonMasterComputermonitorData._

case class HudsonMasterComputermonitorData (
  hudsonNodeMonitorsSwapSpaceMonitor: Option[SwapSpaceMonitorMemoryUsage2],
hudsonNodeMonitorsTemporarySpaceMonitor: Option[DiskSpaceMonitorDescriptorDiskSpace],
hudsonNodeMonitorsDiskSpaceMonitor: Option[DiskSpaceMonitorDescriptorDiskSpace],
hudsonNodeMonitorsArchitectureMonitor: Option[String],
hudsonNodeMonitorsResponseTimeMonitor: Option[ResponseTimeMonitorData],
hudsonNodeMonitorsClockMonitor: Option[ClockDifference],
`class`: Option[String])

object HudsonMasterComputermonitorData {
  import DateTimeCodecs._

  implicit val HudsonMasterComputermonitorDataCodecJson: CodecJson[HudsonMasterComputermonitorData] = CodecJson.derive[HudsonMasterComputermonitorData]
  implicit val HudsonMasterComputermonitorDataDecoder: EntityDecoder[HudsonMasterComputermonitorData] = jsonOf[HudsonMasterComputermonitorData]
  implicit val HudsonMasterComputermonitorDataEncoder: EntityEncoder[HudsonMasterComputermonitorData] = jsonEncoderOf[HudsonMasterComputermonitorData]
}
