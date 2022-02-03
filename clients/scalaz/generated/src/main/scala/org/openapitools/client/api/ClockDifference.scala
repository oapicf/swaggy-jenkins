package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ClockDifference._

case class ClockDifference (
  `class`: Option[String],
diff: Option[Integer])

object ClockDifference {
  import DateTimeCodecs._

  implicit val ClockDifferenceCodecJson: CodecJson[ClockDifference] = CodecJson.derive[ClockDifference]
  implicit val ClockDifferenceDecoder: EntityDecoder[ClockDifference] = jsonOf[ClockDifference]
  implicit val ClockDifferenceEncoder: EntityEncoder[ClockDifference] = jsonEncoderOf[ClockDifference]
}
