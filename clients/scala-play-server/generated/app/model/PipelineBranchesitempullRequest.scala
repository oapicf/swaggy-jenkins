package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelineBranchesitempullRequest.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-11-01T13:23:42.633582383Z[Etc/UTC]", comments = "Generator version: 7.26.0")
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

