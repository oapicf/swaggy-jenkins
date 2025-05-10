package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelineActivity.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2025-05-10T02:42:00.809218355Z[Etc/UTC]", comments = "Generator version: 7.12.0")
case class PipelineActivity(
  `class`: Option[String],
  artifacts: Option[List[PipelineActivityartifacts]],
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
  commitId: Option[String]
)

object PipelineActivity {
  implicit lazy val pipelineActivityJsonFormat: Format[PipelineActivity] = Json.format[PipelineActivity]
}

