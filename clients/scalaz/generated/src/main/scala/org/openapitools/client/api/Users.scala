package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import Users._

case class Users (
  
object Users {
  import DateTimeCodecs._

  implicit val UsersCodecJson: CodecJson[Users] = CodecJson.derive[Users]
  implicit val UsersDecoder: EntityDecoder[Users] = jsonOf[Users]
  implicit val UsersEncoder: EntityEncoder[Users] = jsonEncoderOf[Users]
}
