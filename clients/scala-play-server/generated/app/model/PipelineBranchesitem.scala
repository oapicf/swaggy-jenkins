package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelineBranchesitem.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-08-14T13:30:17.222677609Z[Etc/UTC]", comments = "Generator version: 7.24.0")
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

