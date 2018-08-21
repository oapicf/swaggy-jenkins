package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import PipelineRunNodes._

case class PipelineRunNodes (
  
object PipelineRunNodes {
  import DateTimeCodecs._

  implicit val PipelineRunNodesCodecJson: CodecJson[PipelineRunNodes] = CodecJson.derive[PipelineRunNodes]
  implicit val PipelineRunNodesDecoder: EntityDecoder[PipelineRunNodes] = jsonOf[PipelineRunNodes]
  implicit val PipelineRunNodesEncoder: EntityEncoder[PipelineRunNodes] = jsonEncoderOf[PipelineRunNodes]
}
