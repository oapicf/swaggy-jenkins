package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ExtensionClassContainerImpl1links.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-10-11T12:08:51.915360815Z[Etc/UTC]", comments = "Generator version: 7.24.0")
case class ExtensionClassContainerImpl1links(
  self: Option[Link],
  `class`: Option[String]
)

object ExtensionClassContainerImpl1links {
  implicit lazy val extensionClassContainerImpl1linksJsonFormat: Format[ExtensionClassContainerImpl1links] = Json.format[ExtensionClassContainerImpl1links]
}

