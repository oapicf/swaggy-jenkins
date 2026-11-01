package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelineRunNodeedges.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-11-01T13:50:45.681735658Z[Etc/UTC]", comments = "Generator version: 7.26.0")
case class PipelineRunNodeedges(
  id: Option[String],
  `class`: Option[String]
)

object PipelineRunNodeedges {
  implicit lazy val pipelineRunNodeedgesJsonFormat: Format[PipelineRunNodeedges] = Json.format[PipelineRunNodeedges]
}

