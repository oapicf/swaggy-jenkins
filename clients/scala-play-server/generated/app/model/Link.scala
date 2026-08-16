package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for Link.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-08-16T01:41:51.296244513Z[Etc/UTC]", comments = "Generator version: 7.24.0")
case class Link(
  `class`: Option[String],
  href: Option[String]
)

object Link {
  implicit lazy val linkJsonFormat: Format[Link] = Json.format[Link]
}

