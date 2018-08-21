package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime
import PipelineBranchesitem._

case class PipelineBranchesitem (
  displayName: Option[String],
estimatedDurationInMillis: Option[Integer],
name: Option[String],
weatherScore: Option[Integer],
latestRun: Option[PipelineBranchesitemlatestRun],
organization: Option[String],
pullRequest: Option[PipelineBranchesitempullRequest],
totalNumberOfPullRequests: Option[Integer],
`class`: Option[String])

object PipelineBranchesitem {
  import DateTimeCodecs._

  implicit val PipelineBranchesitemCodecJson: CodecJson[PipelineBranchesitem] = CodecJson.derive[PipelineBranchesitem]
  implicit val PipelineBranchesitemDecoder: EntityDecoder[PipelineBranchesitem] = jsonOf[PipelineBranchesitem]
  implicit val PipelineBranchesitemEncoder: EntityEncoder[PipelineBranchesitem] = jsonEncoderOf[PipelineBranchesitem]
}
