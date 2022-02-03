package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import PipelineRun._

case class PipelineRun (
  `class`: Option[String],
artifacts: Option[List[PipelineRunartifacts]],
durationInMillis: Option[Integer],
estimatedDurationInMillis: Option[Integer],
enQueueTime: Option[String],
endTime: Option[String],
id: Option[String],
organization: Option[String],
pipeline: Option[String],
result: Option[String],
runSummary: Option[String],
startTime: Option[String],
state: Option[String],
`type`: Option[String],
commitId: Option[String])

object PipelineRun {
  import DateTimeCodecs._

  implicit val PipelineRunCodecJson: CodecJson[PipelineRun] = CodecJson.derive[PipelineRun]
  implicit val PipelineRunDecoder: EntityDecoder[PipelineRun] = jsonOf[PipelineRun]
  implicit val PipelineRunEncoder: EntityEncoder[PipelineRun] = jsonEncoderOf[PipelineRun]
}
