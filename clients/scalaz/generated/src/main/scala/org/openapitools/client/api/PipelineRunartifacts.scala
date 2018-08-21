package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import PipelineRunartifacts._

case class PipelineRunartifacts (
  name: Option[String],
size: Option[Integer],
url: Option[String],
`class`: Option[String])

object PipelineRunartifacts {
  import DateTimeCodecs._

  implicit val PipelineRunartifactsCodecJson: CodecJson[PipelineRunartifacts] = CodecJson.derive[PipelineRunartifacts]
  implicit val PipelineRunartifactsDecoder: EntityDecoder[PipelineRunartifacts] = jsonOf[PipelineRunartifacts]
  implicit val PipelineRunartifactsEncoder: EntityEncoder[PipelineRunartifacts] = jsonEncoderOf[PipelineRunartifacts]
}
