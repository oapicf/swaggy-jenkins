package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelineBranchesitem.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2024-03-15T14:20:17.794970991Z[Etc/UTC]", comments = "Generator version: 7.4.0")
case class PipelineBranchesitem(
  displayName: Option[String],
  estimatedDurationInMillis: Option[Int],
  name: Option[String],
  weatherScore: Option[Int],
  latestRun: Option[PipelineBranchesitemlatestRun],
  organization: Option[String],
  pullRequest: Option[PipelineBranchesitempullRequest],
  totalNumberOfPullRequests: Option[Int],
  `class`: Option[String]
)

object PipelineBranchesitem {
  implicit lazy val pipelineBranchesitemJsonFormat: Format[PipelineBranchesitem] = Json.format[PipelineBranchesitem]
}

