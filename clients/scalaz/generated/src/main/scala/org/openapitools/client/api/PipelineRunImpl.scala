package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import PipelineRunImpl._

case class PipelineRunImpl (
  `class`: Option[String],
links: Option[PipelineRunImpllinks],
durationInMillis: Option[Integer],
enQueueTime: Option[String],
endTime: Option[String],
estimatedDurationInMillis: Option[Integer],
id: Option[String],
organization: Option[String],
pipeline: Option[String],
result: Option[String],
runSummary: Option[String],
startTime: Option[String],
state: Option[String],
`type`: Option[String],
commitId: Option[String])

object PipelineRunImpl {
  import DateTimeCodecs._

  implicit val PipelineRunImplCodecJson: CodecJson[PipelineRunImpl] = CodecJson.derive[PipelineRunImpl]
  implicit val PipelineRunImplDecoder: EntityDecoder[PipelineRunImpl] = jsonOf[PipelineRunImpl]
  implicit val PipelineRunImplEncoder: EntityEncoder[PipelineRunImpl] = jsonEncoderOf[PipelineRunImpl]
}
