package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for MultibranchPipeline.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2025-05-10T02:42:00.809218355Z[Etc/UTC]", comments = "Generator version: 7.12.0")
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

