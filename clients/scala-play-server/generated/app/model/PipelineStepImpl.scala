package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelineStepImpl.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-08-14T13:30:17.222677609Z[Etc/UTC]", comments = "Generator version: 7.24.0")
case class PipelineStepImpl(
  `class`: Option[String],
  links: Option[PipelineStepImpllinks],
  displayName: Option[String],
  durationInMillis: Option[Int],
  id: Option[String],
  input: Option[InputStepImpl],
  result: Option[String],
  startTime: Option[String],
  state: Option[String]
)

object PipelineStepImpl {
  implicit lazy val pipelineStepImplJsonFormat: Format[PipelineStepImpl] = Json.format[PipelineStepImpl]
}

