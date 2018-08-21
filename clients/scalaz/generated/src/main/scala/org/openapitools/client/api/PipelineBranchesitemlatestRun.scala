package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import PipelineBranchesitemlatestRun._

case class PipelineBranchesitemlatestRun (
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

object PipelineBranchesitemlatestRun {
  import DateTimeCodecs._

  implicit val PipelineBranchesitemlatestRunCodecJson: CodecJson[PipelineBranchesitemlatestRun] = CodecJson.derive[PipelineBranchesitemlatestRun]
  implicit val PipelineBranchesitemlatestRunDecoder: EntityDecoder[PipelineBranchesitemlatestRun] = jsonOf[PipelineBranchesitemlatestRun]
  implicit val PipelineBranchesitemlatestRunEncoder: EntityEncoder[PipelineBranchesitemlatestRun] = jsonEncoderOf[PipelineBranchesitemlatestRun]
}
