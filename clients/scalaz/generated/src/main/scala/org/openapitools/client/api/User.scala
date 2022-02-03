package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import User._

case class User (
  `class`: Option[String],
id: Option[String],
fullName: Option[String],
email: Option[String],
name: Option[String])

object User {
  import DateTimeCodecs._

  implicit val UserCodecJson: CodecJson[User] = CodecJson.derive[User]
  implicit val UserDecoder: EntityDecoder[User] = jsonOf[User]
  implicit val UserEncoder: EntityEncoder[User] = jsonEncoderOf[User]
}
