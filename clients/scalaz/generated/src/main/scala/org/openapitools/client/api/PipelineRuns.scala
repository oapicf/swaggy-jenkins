package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import PipelineRuns._

case class PipelineRuns (
  
object PipelineRuns {
  import DateTimeCodecs._

  implicit val PipelineRunsCodecJson: CodecJson[PipelineRuns] = CodecJson.derive[PipelineRuns]
  implicit val PipelineRunsDecoder: EntityDecoder[PipelineRuns] = jsonOf[PipelineRuns]
  implicit val PipelineRunsEncoder: EntityEncoder[PipelineRuns] = jsonEncoderOf[PipelineRuns]
}
