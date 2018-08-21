package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import UnlabeledLoadStatistics._

case class UnlabeledLoadStatistics (
  `class`: Option[String])

object UnlabeledLoadStatistics {
  import DateTimeCodecs._

  implicit val UnlabeledLoadStatisticsCodecJson: CodecJson[UnlabeledLoadStatistics] = CodecJson.derive[UnlabeledLoadStatistics]
  implicit val UnlabeledLoadStatisticsDecoder: EntityDecoder[UnlabeledLoadStatistics] = jsonOf[UnlabeledLoadStatistics]
  implicit val UnlabeledLoadStatisticsEncoder: EntityEncoder[UnlabeledLoadStatistics] = jsonEncoderOf[UnlabeledLoadStatistics]
}
