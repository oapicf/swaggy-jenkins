package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import PipelineRunNodeSteps._

case class PipelineRunNodeSteps (
  
object PipelineRunNodeSteps {
  import DateTimeCodecs._

  implicit val PipelineRunNodeStepsCodecJson: CodecJson[PipelineRunNodeSteps] = CodecJson.derive[PipelineRunNodeSteps]
  implicit val PipelineRunNodeStepsDecoder: EntityDecoder[PipelineRunNodeSteps] = jsonOf[PipelineRunNodeSteps]
  implicit val PipelineRunNodeStepsEncoder: EntityEncoder[PipelineRunNodeSteps] = jsonEncoderOf[PipelineRunNodeSteps]
}
