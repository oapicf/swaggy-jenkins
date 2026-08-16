package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelinelatestRunartifacts.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-08-16T01:41:51.296244513Z[Etc/UTC]", comments = "Generator version: 7.24.0")
case class PipelinelatestRunartifacts(
  name: Option[String],
  size: Option[Int],
  url: Option[String],
  `class`: Option[String]
)

object PipelinelatestRunartifacts {
  implicit lazy val pipelinelatestRunartifactsJsonFormat: Format[PipelinelatestRunartifacts] = Json.format[PipelinelatestRunartifacts]
}

