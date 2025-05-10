package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelineImpllinks.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2025-05-10T02:42:00.809218355Z[Etc/UTC]", comments = "Generator version: 7.12.0")
case class PipelineImpllinks(
  runs: Option[Link],
  self: Option[Link],
  queue: Option[Link],
  actions: Option[Link],
  `class`: Option[String]
)

object PipelineImpllinks {
  implicit lazy val pipelineImpllinksJsonFormat: Format[PipelineImpllinks] = Json.format[PipelineImpllinks]
}

