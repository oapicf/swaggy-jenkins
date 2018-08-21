package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import ResponseTimeMonitorData._

case class ResponseTimeMonitorData (
  `class`: Option[String],
timestamp: Option[Integer],
average: Option[Integer])

object ResponseTimeMonitorData {
  import DateTimeCodecs._

  implicit val ResponseTimeMonitorDataCodecJson: CodecJson[ResponseTimeMonitorData] = CodecJson.derive[ResponseTimeMonitorData]
  implicit val ResponseTimeMonitorDataDecoder: EntityDecoder[ResponseTimeMonitorData] = jsonOf[ResponseTimeMonitorData]
  implicit val ResponseTimeMonitorDataEncoder: EntityEncoder[ResponseTimeMonitorData] = jsonEncoderOf[ResponseTimeMonitorData]
}
