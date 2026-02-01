package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelineImpl.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-02-01T01:27:02.805814468Z[Etc/UTC]", comments = "Generator version: 7.18.0")
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

