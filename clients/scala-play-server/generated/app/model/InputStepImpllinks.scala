package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for InputStepImpllinks.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-02-01T01:27:02.805814468Z[Etc/UTC]", comments = "Generator version: 7.18.0")
case class InputStepImpllinks(
  self: Option[Link],
  `class`: Option[String]
)

object InputStepImpllinks {
  implicit lazy val inputStepImpllinksJsonFormat: Format[InputStepImpllinks] = Json.format[InputStepImpllinks]
}

