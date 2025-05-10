package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelineImpl.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2025-05-10T02:42:00.809218355Z[Etc/UTC]", comments = "Generator version: 7.12.0")
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

