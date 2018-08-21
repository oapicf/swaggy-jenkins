package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import ExtensionClassContainerImpl1map._

case class ExtensionClassContainerImpl1map (
  ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl: Option[ExtensionClassImpl],
ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl: Option[ExtensionClassImpl],
`class`: Option[String])

object ExtensionClassContainerImpl1map {
  import DateTimeCodecs._

  implicit val ExtensionClassContainerImpl1mapCodecJson: CodecJson[ExtensionClassContainerImpl1map] = CodecJson.derive[ExtensionClassContainerImpl1map]
  implicit val ExtensionClassContainerImpl1mapDecoder: EntityDecoder[ExtensionClassContainerImpl1map] = jsonOf[ExtensionClassContainerImpl1map]
  implicit val ExtensionClassContainerImpl1mapEncoder: EntityEncoder[ExtensionClassContainerImpl1map] = jsonEncoderOf[ExtensionClassContainerImpl1map]
}
