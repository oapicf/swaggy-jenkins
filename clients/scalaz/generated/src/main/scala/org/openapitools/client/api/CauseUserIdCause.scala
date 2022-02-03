package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import CauseUserIdCause._

case class CauseUserIdCause (
  `class`: Option[String],
shortDescription: Option[String],
userId: Option[String],
userName: Option[String])

object CauseUserIdCause {
  import DateTimeCodecs._

  implicit val CauseUserIdCauseCodecJson: CodecJson[CauseUserIdCause] = CodecJson.derive[CauseUserIdCause]
  implicit val CauseUserIdCauseDecoder: EntityDecoder[CauseUserIdCause] = jsonOf[CauseUserIdCause]
  implicit val CauseUserIdCauseEncoder: EntityEncoder[CauseUserIdCause] = jsonEncoderOf[CauseUserIdCause]
}
