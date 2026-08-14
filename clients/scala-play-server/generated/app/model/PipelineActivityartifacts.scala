package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelineActivityartifacts.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-08-14T13:30:17.222677609Z[Etc/UTC]", comments = "Generator version: 7.24.0")
case class PipelineActivityartifacts(
  name: Option[String],
  size: Option[Int],
  url: Option[String],
  `class`: Option[String]
)

object PipelineActivityartifacts {
  implicit lazy val pipelineActivityartifactsJsonFormat: Format[PipelineActivityartifacts] = Json.format[PipelineActivityartifacts]
}

