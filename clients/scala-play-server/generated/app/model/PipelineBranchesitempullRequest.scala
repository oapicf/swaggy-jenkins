package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelineBranchesitempullRequest.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2025-05-10T02:42:00.809218355Z[Etc/UTC]", comments = "Generator version: 7.12.0")
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

