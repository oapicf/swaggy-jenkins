package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import AllView._

case class AllView (
  `class`: Option[String],
name: Option[String],
url: Option[String])

object AllView {
  import DateTimeCodecs._

  implicit val AllViewCodecJson: CodecJson[AllView] = CodecJson.derive[AllView]
  implicit val AllViewDecoder: EntityDecoder[AllView] = jsonOf[AllView]
  implicit val AllViewEncoder: EntityEncoder[AllView] = jsonEncoderOf[AllView]
}
