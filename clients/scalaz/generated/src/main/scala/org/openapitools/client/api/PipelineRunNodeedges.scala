package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import PipelineRunNodeedges._

case class PipelineRunNodeedges (
  id: Option[String],
`class`: Option[String])

object PipelineRunNodeedges {
  import DateTimeCodecs._

  implicit val PipelineRunNodeedgesCodecJson: CodecJson[PipelineRunNodeedges] = CodecJson.derive[PipelineRunNodeedges]
  implicit val PipelineRunNodeedgesDecoder: EntityDecoder[PipelineRunNodeedges] = jsonOf[PipelineRunNodeedges]
  implicit val PipelineRunNodeedgesEncoder: EntityEncoder[PipelineRunNodeedges] = jsonEncoderOf[PipelineRunNodeedges]
}
