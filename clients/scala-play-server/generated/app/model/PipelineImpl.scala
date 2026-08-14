package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelineImpl.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-08-14T13:30:17.222677609Z[Etc/UTC]", comments = "Generator version: 7.24.0")
case class PipelineImpl(
  `class`: Option[String],
  displayName: Option[String],
  estimatedDurationInMillis: Option[Int],
  fullName: Option[String],
  latestRun: Option[String],
  name: Option[String],
  organization: Option[String],
  weatherScore: Option[Int],
  links: Option[PipelineImpllinks]
)

object PipelineImpl {
  implicit lazy val pipelineImplJsonFormat: Format[PipelineImpl] = Json.format[PipelineImpl]
}

