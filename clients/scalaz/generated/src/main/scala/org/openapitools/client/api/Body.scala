package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import Body._

case class Body (
  favorite: Boolean)

object Body {
  import DateTimeCodecs._

  implicit val BodyCodecJson: CodecJson[Body] = CodecJson.derive[Body]
  implicit val BodyDecoder: EntityDecoder[Body] = jsonOf[Body]
  implicit val BodyEncoder: EntityEncoder[Body] = jsonEncoderOf[Body]
}
