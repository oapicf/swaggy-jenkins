package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelineRunImpl.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-02-01T01:27:02.805814468Z[Etc/UTC]", comments = "Generator version: 7.18.0")
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

