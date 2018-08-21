package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import PipelineRunSteps._

case class PipelineRunSteps (
  
object PipelineRunSteps {
  import DateTimeCodecs._

  implicit val PipelineRunStepsCodecJson: CodecJson[PipelineRunSteps] = CodecJson.derive[PipelineRunSteps]
  implicit val PipelineRunStepsDecoder: EntityDecoder[PipelineRunSteps] = jsonOf[PipelineRunSteps]
  implicit val PipelineRunStepsEncoder: EntityEncoder[PipelineRunSteps] = jsonEncoderOf[PipelineRunSteps]
}
