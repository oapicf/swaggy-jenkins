package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelineBranchesitempullRequest.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-08-16T01:41:51.296244513Z[Etc/UTC]", comments = "Generator version: 7.24.0")
case class PipelineBranchesitempullRequest(
  links: Option[PipelineBranchesitempullRequestlinks],
  author: Option[String],
  id: Option[String],
  title: Option[String],
  url: Option[String],
  `class`: Option[String]
)

object PipelineBranchesitempullRequest {
  implicit lazy val pipelineBranchesitempullRequestJsonFormat: Format[PipelineBranchesitempullRequest] = Json.format[PipelineBranchesitempullRequest]
}

