package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelineBranchesitempullRequest.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2024-03-15T14:20:17.794970991Z[Etc/UTC]", comments = "Generator version: 7.4.0")
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

