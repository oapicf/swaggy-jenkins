package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import FavoriteImpllinks._

case class FavoriteImpllinks (
  self: Option[Link],
`class`: Option[String])

object FavoriteImpllinks {
  import DateTimeCodecs._

  implicit val FavoriteImpllinksCodecJson: CodecJson[FavoriteImpllinks] = CodecJson.derive[FavoriteImpllinks]
  implicit val FavoriteImpllinksDecoder: EntityDecoder[FavoriteImpllinks] = jsonOf[FavoriteImpllinks]
  implicit val FavoriteImpllinksEncoder: EntityEncoder[FavoriteImpllinks] = jsonEncoderOf[FavoriteImpllinks]
}
