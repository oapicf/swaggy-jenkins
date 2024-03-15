package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for MultibranchPipeline.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2024-03-15T14:20:17.794970991Z[Etc/UTC]", comments = "Generator version: 7.4.0")
case class MultibranchPipeline(
  displayName: Option[String],
  estimatedDurationInMillis: Option[Int],
  latestRun: Option[String],
  name: Option[String],
  organization: Option[String],
  weatherScore: Option[Int],
  branchNames: Option[List[String]],
  numberOfFailingBranches: Option[Int],
  numberOfFailingPullRequests: Option[Int],
  numberOfSuccessfulBranches: Option[Int],
  numberOfSuccessfulPullRequests: Option[Int],
  totalNumberOfBranches: Option[Int],
  totalNumberOfPullRequests: Option[Int],
  `class`: Option[String]
)

object MultibranchPipeline {
  implicit lazy val multibranchPipelineJsonFormat: Format[MultibranchPipeline] = Json.format[MultibranchPipeline]
}

