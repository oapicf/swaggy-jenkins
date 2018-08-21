package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import UserFavorites._

case class UserFavorites (
  
object UserFavorites {
  import DateTimeCodecs._

  implicit val UserFavoritesCodecJson: CodecJson[UserFavorites] = CodecJson.derive[UserFavorites]
  implicit val UserFavoritesDecoder: EntityDecoder[UserFavorites] = jsonOf[UserFavorites]
  implicit val UserFavoritesEncoder: EntityEncoder[UserFavorites] = jsonEncoderOf[UserFavorites]
}
