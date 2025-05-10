package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for InputStepImpllinks.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2025-05-10T02:42:00.809218355Z[Etc/UTC]", comments = "Generator version: 7.12.0")
case class InputStepImpllinks(
  self: Option[Link],
  `class`: Option[String]
)

object InputStepImpllinks {
  implicit lazy val inputStepImpllinksJsonFormat: Format[InputStepImpllinks] = Json.format[InputStepImpllinks]
}

