package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import MultibranchPipeline._

case class MultibranchPipeline (
  displayName: Option[String],
estimatedDurationInMillis: Option[Integer],
latestRun: Option[String],
name: Option[String],
organization: Option[String],
weatherScore: Option[Integer],
branchNames: Option[List[String]],
numberOfFailingBranches: Option[Integer],
numberOfFailingPullRequests: Option[Integer],
numberOfSuccessfulBranches: Option[Integer],
numberOfSuccessfulPullRequests: Option[Integer],
totalNumberOfBranches: Option[Integer],
totalNumberOfPullRequests: Option[Integer],
`class`: Option[String])

object MultibranchPipeline {
  import DateTimeCodecs._

  implicit val MultibranchPipelineCodecJson: CodecJson[MultibranchPipeline] = CodecJson.derive[MultibranchPipeline]
  implicit val MultibranchPipelineDecoder: EntityDecoder[MultibranchPipeline] = jsonOf[MultibranchPipeline]
  implicit val MultibranchPipelineEncoder: EntityEncoder[MultibranchPipeline] = jsonEncoderOf[MultibranchPipeline]
}
