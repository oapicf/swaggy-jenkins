package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelineBranchesitemlatestRun.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-08-16T01:41:51.296244513Z[Etc/UTC]", comments = "Generator version: 7.24.0")
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

