package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import PipelinelatestRun._

case class PipelinelatestRun (
  artifacts: Option[List[PipelinelatestRunartifacts]],
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
commitId: Option[String],
`class`: Option[String])

object PipelinelatestRun {
  import DateTimeCodecs._

  implicit val PipelinelatestRunCodecJson: CodecJson[PipelinelatestRun] = CodecJson.derive[PipelinelatestRun]
  implicit val PipelinelatestRunDecoder: EntityDecoder[PipelinelatestRun] = jsonOf[PipelinelatestRun]
  implicit val PipelinelatestRunEncoder: EntityEncoder[PipelinelatestRun] = jsonEncoderOf[PipelinelatestRun]
}
