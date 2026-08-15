package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelineImpllinks.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-08-15T12:33:08.170340609Z[Etc/UTC]", comments = "Generator version: 7.24.0")
case class PipelineImpllinks(
  self: Option[Link],
  actions: Option[Link],
  runs: Option[Link],
  queue: Option[Link],
  `class`: Option[String]
)

object PipelineImpllinks {
  implicit lazy val pipelineImpllinksJsonFormat: Format[PipelineImpllinks] = Json.format[PipelineImpllinks]
}

