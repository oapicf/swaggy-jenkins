package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import Link._

case class Link (
  `class`: Option[String],
href: Option[String])

object Link {
  import DateTimeCodecs._

  implicit val LinkCodecJson: CodecJson[Link] = CodecJson.derive[Link]
  implicit val LinkDecoder: EntityDecoder[Link] = jsonOf[Link]
  implicit val LinkEncoder: EntityEncoder[Link] = jsonEncoderOf[Link]
}
