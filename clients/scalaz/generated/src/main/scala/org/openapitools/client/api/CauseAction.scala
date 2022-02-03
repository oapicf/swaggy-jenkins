package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CauseAction._

case class CauseAction (
  `class`: Option[String],
causes: Option[List[CauseUserIdCause]])

object CauseAction {
  import DateTimeCodecs._

  implicit val CauseActionCodecJson: CodecJson[CauseAction] = CodecJson.derive[CauseAction]
  implicit val CauseActionDecoder: EntityDecoder[CauseAction] = jsonOf[CauseAction]
  implicit val CauseActionEncoder: EntityEncoder[CauseAction] = jsonEncoderOf[CauseAction]
}
