package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelinelatestRunartifacts.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2025-04-27T08:11:07.072823777Z[Etc/UTC]", comments = "Generator version: 7.12.0")
case class PipelinelatestRunartifacts(
  name: Option[String],
  size: Option[Int],
  url: Option[String],
  `class`: Option[String]
)

object PipelinelatestRunartifacts {
  implicit lazy val pipelinelatestRunartifactsJsonFormat: Format[PipelinelatestRunartifacts] = Json.format[PipelinelatestRunartifacts]
}

