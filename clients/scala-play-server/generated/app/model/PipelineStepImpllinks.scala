package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelineStepImpllinks.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2025-05-10T02:42:00.809218355Z[Etc/UTC]", comments = "Generator version: 7.12.0")
case class PipelineStepImpllinks(
  self: Option[Link],
  actions: Option[Link],
  `class`: Option[String]
)

object PipelineStepImpllinks {
  implicit lazy val pipelineStepImpllinksJsonFormat: Format[PipelineStepImpllinks] = Json.format[PipelineStepImpllinks]
}

