package org.openapitools.client.api

import argonaut._
import argonaut.EncodeJson._
import argonaut.DecodeJson._

import org.http4s.{EntityDecoder, EntityEncoder}
import org.http4s.argonaut._
import org.joda.time.DateTime


import PipelineBranchesitempullRequest._

case class PipelineBranchesitempullRequest (
  links: Option[PipelineBranchesitempullRequestlinks],
author: Option[String],
id: Option[String],
title: Option[String],
url: Option[String],
`class`: Option[String])

object PipelineBranchesitempullRequest {
  import DateTimeCodecs._

  implicit val PipelineBranchesitempullRequestCodecJson: CodecJson[PipelineBranchesitempullRequest] = CodecJson.derive[PipelineBranchesitempullRequest]
  implicit val PipelineBranchesitempullRequestDecoder: EntityDecoder[PipelineBranchesitempullRequest] = jsonOf[PipelineBranchesitempullRequest]
  implicit val PipelineBranchesitempullRequestEncoder: EntityEncoder[PipelineBranchesitempullRequest] = jsonEncoderOf[PipelineBranchesitempullRequest]
}
