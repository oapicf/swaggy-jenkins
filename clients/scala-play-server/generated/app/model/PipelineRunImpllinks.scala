package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelineRunImpllinks.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2024-03-15T14:20:17.794970991Z[Etc/UTC]", comments = "Generator version: 7.4.0")
case class PipelineRunImpllinks(
  nodes: Option[Link],
  log: Option[Link],
  self: Option[Link],
  actions: Option[Link],
  steps: Option[Link],
  `class`: Option[String]
)

object PipelineRunImpllinks {
  implicit lazy val pipelineRunImpllinksJsonFormat: Format[PipelineRunImpllinks] = Json.format[PipelineRunImpllinks]
}

