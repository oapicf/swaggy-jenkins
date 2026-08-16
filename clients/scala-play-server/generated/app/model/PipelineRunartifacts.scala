package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelineRunartifacts.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-08-16T01:41:51.296244513Z[Etc/UTC]", comments = "Generator version: 7.24.0")
case class PipelineRunartifacts(
  name: Option[String],
  size: Option[Int],
  url: Option[String],
  `class`: Option[String]
)

object PipelineRunartifacts {
  implicit lazy val pipelineRunartifactsJsonFormat: Format[PipelineRunartifacts] = Json.format[PipelineRunartifacts]
}

