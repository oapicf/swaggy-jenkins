package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ExtensionClassContainerImpl1._

case class ExtensionClassContainerImpl1 (
  `class`: Option[String],
links: Option[ExtensionClassContainerImpl1links],
map: Option[ExtensionClassContainerImpl1map])

object ExtensionClassContainerImpl1 {
  import DateTimeCodecs._

  implicit val ExtensionClassContainerImpl1CodecJson: CodecJson[ExtensionClassContainerImpl1] = CodecJson.derive[ExtensionClassContainerImpl1]
  implicit val ExtensionClassContainerImpl1Decoder: EntityDecoder[ExtensionClassContainerImpl1] = jsonOf[ExtensionClassContainerImpl1]
  implicit val ExtensionClassContainerImpl1Encoder: EntityEncoder[ExtensionClassContainerImpl1] = jsonEncoderOf[ExtensionClassContainerImpl1]
}
