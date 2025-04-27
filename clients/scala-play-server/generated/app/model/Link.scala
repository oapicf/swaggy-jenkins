package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for Link.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2025-04-27T08:11:07.072823777Z[Etc/UTC]", comments = "Generator version: 7.12.0")
case class Link(
  `class`: Option[String],
  href: Option[String]
)

object Link {
  implicit lazy val linkJsonFormat: Format[Link] = Json.format[Link]
}

