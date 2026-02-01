package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelineRunartifacts.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-02-01T01:27:02.805814468Z[Etc/UTC]", comments = "Generator version: 7.18.0")
case class PipelineRunartifacts(
  name: Option[String],
  size: Option[Int],
  url: Option[String],
  `class`: Option[String]
)

object PipelineRunartifacts {
  implicit lazy val pipelineRunartifactsJsonFormat: Format[PipelineRunartifacts] = Json.format[PipelineRunartifacts]
}

