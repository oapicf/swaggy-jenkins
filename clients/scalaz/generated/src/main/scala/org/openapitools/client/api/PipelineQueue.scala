package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import PipelineQueue._

case class PipelineQueue (
  
object PipelineQueue {
  import DateTimeCodecs._

  implicit val PipelineQueueCodecJson: CodecJson[PipelineQueue] = CodecJson.derive[PipelineQueue]
  implicit val PipelineQueueDecoder: EntityDecoder[PipelineQueue] = jsonOf[PipelineQueue]
  implicit val PipelineQueueEncoder: EntityEncoder[PipelineQueue] = jsonEncoderOf[PipelineQueue]
}
