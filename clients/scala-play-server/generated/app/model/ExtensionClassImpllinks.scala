package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ExtensionClassImpllinks.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-02-01T01:27:02.805814468Z[Etc/UTC]", comments = "Generator version: 7.18.0")
case class ExtensionClassImpllinks(
  self: Option[Link],
  `class`: Option[String]
)

object ExtensionClassImpllinks {
  implicit lazy val extensionClassImpllinksJsonFormat: Format[ExtensionClassImpllinks] = Json.format[ExtensionClassImpllinks]
}

