package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import PipelineActivityartifacts._

case class PipelineActivityartifacts (
  name: Option[String],
size: Option[Integer],
url: Option[String],
`class`: Option[String])

object PipelineActivityartifacts {
  import DateTimeCodecs._

  implicit val PipelineActivityartifactsCodecJson: CodecJson[PipelineActivityartifacts] = CodecJson.derive[PipelineActivityartifacts]
  implicit val PipelineActivityartifactsDecoder: EntityDecoder[PipelineActivityartifacts] = jsonOf[PipelineActivityartifacts]
  implicit val PipelineActivityartifactsEncoder: EntityEncoder[PipelineActivityartifacts] = jsonEncoderOf[PipelineActivityartifacts]
}
