package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import PipelinelatestRunartifacts._

case class PipelinelatestRunartifacts (
  name: Option[String],
size: Option[Integer],
url: Option[String],
`class`: Option[String])

object PipelinelatestRunartifacts {
  import DateTimeCodecs._

  implicit val PipelinelatestRunartifactsCodecJson: CodecJson[PipelinelatestRunartifacts] = CodecJson.derive[PipelinelatestRunartifacts]
  implicit val PipelinelatestRunartifactsDecoder: EntityDecoder[PipelinelatestRunartifacts] = jsonOf[PipelinelatestRunartifacts]
  implicit val PipelinelatestRunartifactsEncoder: EntityEncoder[PipelinelatestRunartifacts] = jsonEncoderOf[PipelinelatestRunartifacts]
}
