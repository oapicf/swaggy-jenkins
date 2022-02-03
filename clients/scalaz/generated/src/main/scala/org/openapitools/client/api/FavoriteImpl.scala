package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import FavoriteImpl._

case class FavoriteImpl (
  `class`: Option[String],
links: Option[FavoriteImpllinks],
item: Option[PipelineImpl])

object FavoriteImpl {
  import DateTimeCodecs._

  implicit val FavoriteImplCodecJson: CodecJson[FavoriteImpl] = CodecJson.derive[FavoriteImpl]
  implicit val FavoriteImplDecoder: EntityDecoder[FavoriteImpl] = jsonOf[FavoriteImpl]
  implicit val FavoriteImplEncoder: EntityEncoder[FavoriteImpl] = jsonEncoderOf[FavoriteImpl]
}
