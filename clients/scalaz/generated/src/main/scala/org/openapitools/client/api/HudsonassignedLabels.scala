package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import HudsonassignedLabels._

case class HudsonassignedLabels (
  `class`: Option[String])

object HudsonassignedLabels {
  import DateTimeCodecs._

  implicit val HudsonassignedLabelsCodecJson: CodecJson[HudsonassignedLabels] = CodecJson.derive[HudsonassignedLabels]
  implicit val HudsonassignedLabelsDecoder: EntityDecoder[HudsonassignedLabels] = jsonOf[HudsonassignedLabels]
  implicit val HudsonassignedLabelsEncoder: EntityEncoder[HudsonassignedLabels] = jsonEncoderOf[HudsonassignedLabels]
}
