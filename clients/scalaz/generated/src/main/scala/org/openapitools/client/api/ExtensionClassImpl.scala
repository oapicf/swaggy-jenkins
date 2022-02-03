package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ExtensionClassImpl._

case class ExtensionClassImpl (
  `class`: Option[String],
links: Option[ExtensionClassImpllinks],
classes: Option[List[String]])

object ExtensionClassImpl {
  import DateTimeCodecs._

  implicit val ExtensionClassImplCodecJson: CodecJson[ExtensionClassImpl] = CodecJson.derive[ExtensionClassImpl]
  implicit val ExtensionClassImplDecoder: EntityDecoder[ExtensionClassImpl] = jsonOf[ExtensionClassImpl]
  implicit val ExtensionClassImplEncoder: EntityEncoder[ExtensionClassImpl] = jsonEncoderOf[ExtensionClassImpl]
}
