package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import SwapSpaceMonitorMemoryUsage2._

case class SwapSpaceMonitorMemoryUsage2 (
  `class`: Option[String],
availablePhysicalMemory: Option[Integer],
availableSwapSpace: Option[Integer],
totalPhysicalMemory: Option[Integer],
totalSwapSpace: Option[Integer])

object SwapSpaceMonitorMemoryUsage2 {
  import DateTimeCodecs._

  implicit val SwapSpaceMonitorMemoryUsage2CodecJson: CodecJson[SwapSpaceMonitorMemoryUsage2] = CodecJson.derive[SwapSpaceMonitorMemoryUsage2]
  implicit val SwapSpaceMonitorMemoryUsage2Decoder: EntityDecoder[SwapSpaceMonitorMemoryUsage2] = jsonOf[SwapSpaceMonitorMemoryUsage2]
  implicit val SwapSpaceMonitorMemoryUsage2Encoder: EntityEncoder[SwapSpaceMonitorMemoryUsage2] = jsonEncoderOf[SwapSpaceMonitorMemoryUsage2]
}
