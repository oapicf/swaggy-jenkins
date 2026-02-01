package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelinelatestRun.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-02-01T01:27:02.805814468Z[Etc/UTC]", comments = "Generator version: 7.18.0")
case class PipelinelatestRun(
  artifacts: Option[List[PipelinelatestRunartifacts]],
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

object PipelinelatestRun {
  implicit lazy val pipelinelatestRunJsonFormat: Format[PipelinelatestRun] = Json.format[PipelinelatestRun]
}

