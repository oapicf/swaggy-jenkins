package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import NullSCM._

case class NullSCM (
  `class`: Option[String])

object NullSCM {
  import DateTimeCodecs._

  implicit val NullSCMCodecJson: CodecJson[NullSCM] = CodecJson.derive[NullSCM]
  implicit val NullSCMDecoder: EntityDecoder[NullSCM] = jsonOf[NullSCM]
  implicit val NullSCMEncoder: EntityEncoder[NullSCM] = jsonEncoderOf[NullSCM]
}
