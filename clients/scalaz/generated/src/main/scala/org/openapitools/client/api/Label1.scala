package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import Label1._

case class Label1 (
  `class`: Option[String])

object Label1 {
  import DateTimeCodecs._

  implicit val Label1CodecJson: CodecJson[Label1] = CodecJson.derive[Label1]
  implicit val Label1Decoder: EntityDecoder[Label1] = jsonOf[Label1]
  implicit val Label1Encoder: EntityEncoder[Label1] = jsonEncoderOf[Label1]
}
