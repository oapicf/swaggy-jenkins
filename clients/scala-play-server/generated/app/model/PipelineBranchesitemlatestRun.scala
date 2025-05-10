package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelineBranchesitemlatestRun.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2025-05-10T02:42:00.809218355Z[Etc/UTC]", comments = "Generator version: 7.12.0")
case class PipelineBranchesitemlatestRun(
  durationInMillis: Option[Int],
  estimatedDurationInMillis: Option[Int],
  enQueueTime: Option[String],
  endTime: Option[String],
  id: Option[String],
  organization: Option[String],
  pipeline: Option[String],
  result: Option[String],
  runSummary: Option[String],
  startTime: Option[String],
  state: Option[String],
  `type`: Option[String],
  commitId: Option[String],
  `class`: Option[String]
)

object PipelineBranchesitemlatestRun {
  implicit lazy val pipelineBranchesitemlatestRunJsonFormat: Format[PipelineBranchesitemlatestRun] = Json.format[PipelineBranchesitemlatestRun]
}

