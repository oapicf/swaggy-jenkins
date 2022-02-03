package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import ExtensionClassContainerImpl1links._

case class ExtensionClassContainerImpl1links (
  self: Option[Link],
`class`: Option[String])

object ExtensionClassContainerImpl1links {
  import DateTimeCodecs._

  implicit val ExtensionClassContainerImpl1linksCodecJson: CodecJson[ExtensionClassContainerImpl1links] = CodecJson.derive[ExtensionClassContainerImpl1links]
  implicit val ExtensionClassContainerImpl1linksDecoder: EntityDecoder[ExtensionClassContainerImpl1links] = jsonOf[ExtensionClassContainerImpl1links]
  implicit val ExtensionClassContainerImpl1linksEncoder: EntityEncoder[ExtensionClassContainerImpl1links] = jsonEncoderOf[ExtensionClassContainerImpl1links]
}
