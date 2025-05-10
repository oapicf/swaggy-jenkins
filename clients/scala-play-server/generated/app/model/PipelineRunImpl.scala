package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelineRunImpl.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2025-05-10T02:42:00.809218355Z[Etc/UTC]", comments = "Generator version: 7.12.0")
case class PipelineRunImpl(
  `class`: Option[String],
  links: Option[PipelineRunImpllinks],
  durationInMillis: Option[Int],
  enQueueTime: Option[String],
  endTime: Option[String],
  estimatedDurationInMillis: Option[Int],
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

object PipelineRunImpl {
  implicit lazy val pipelineRunImplJsonFormat: Format[PipelineRunImpl] = Json.format[PipelineRunImpl]
}

