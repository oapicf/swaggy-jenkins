package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import PipelineActivity._

case class PipelineActivity (
  `class`: Option[String],
artifacts: Option[List[PipelineActivityartifacts]],
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

object PipelineActivity {
  import DateTimeCodecs._

  implicit val PipelineActivityCodecJson: CodecJson[PipelineActivity] = CodecJson.derive[PipelineActivity]
  implicit val PipelineActivityDecoder: EntityDecoder[PipelineActivity] = jsonOf[PipelineActivity]
  implicit val PipelineActivityEncoder: EntityEncoder[PipelineActivity] = jsonEncoderOf[PipelineActivity]
}
