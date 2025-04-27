package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelineRunartifacts.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2025-04-27T08:11:07.072823777Z[Etc/UTC]", comments = "Generator version: 7.12.0")
case class PipelineRunartifacts(
  name: Option[String],
  size: Option[Int],
  url: Option[String],
  `class`: Option[String]
)

object PipelineRunartifacts {
  implicit lazy val pipelineRunartifactsJsonFormat: Format[PipelineRunartifacts] = Json.format[PipelineRunartifacts]
}

