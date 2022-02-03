package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ExtensionClassImpllinks._

case class ExtensionClassImpllinks (
  self: Option[Link],
`class`: Option[String])

object ExtensionClassImpllinks {
  import DateTimeCodecs._

  implicit val ExtensionClassImpllinksCodecJson: CodecJson[ExtensionClassImpllinks] = CodecJson.derive[ExtensionClassImpllinks]
  implicit val ExtensionClassImpllinksDecoder: EntityDecoder[ExtensionClassImpllinks] = jsonOf[ExtensionClassImpllinks]
  implicit val ExtensionClassImpllinksEncoder: EntityEncoder[ExtensionClassImpllinks] = jsonEncoderOf[ExtensionClassImpllinks]
}
