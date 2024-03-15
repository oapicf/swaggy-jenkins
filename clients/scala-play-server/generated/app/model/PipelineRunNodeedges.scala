package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelineRunNodeedges.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2024-03-15T14:20:17.794970991Z[Etc/UTC]", comments = "Generator version: 7.4.0")
case class PipelineRunNodeedges(
  id: Option[String],
  `class`: Option[String]
)

object PipelineRunNodeedges {
  implicit lazy val pipelineRunNodeedgesJsonFormat: Format[PipelineRunNodeedges] = Json.format[PipelineRunNodeedges]
}

