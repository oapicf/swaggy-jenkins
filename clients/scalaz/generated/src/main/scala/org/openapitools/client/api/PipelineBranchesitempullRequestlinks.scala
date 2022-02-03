package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import PipelineBranchesitempullRequestlinks._

case class PipelineBranchesitempullRequestlinks (
  self: Option[String],
`class`: Option[String])

object PipelineBranchesitempullRequestlinks {
  import DateTimeCodecs._

  implicit val PipelineBranchesitempullRequestlinksCodecJson: CodecJson[PipelineBranchesitempullRequestlinks] = CodecJson.derive[PipelineBranchesitempullRequestlinks]
  implicit val PipelineBranchesitempullRequestlinksDecoder: EntityDecoder[PipelineBranchesitempullRequestlinks] = jsonOf[PipelineBranchesitempullRequestlinks]
  implicit val PipelineBranchesitempullRequestlinksEncoder: EntityEncoder[PipelineBranchesitempullRequestlinks] = jsonEncoderOf[PipelineBranchesitempullRequestlinks]
}
