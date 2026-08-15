package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ExtensionClassContainerImpl1.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-08-15T12:33:08.170340609Z[Etc/UTC]", comments = "Generator version: 7.24.0")
case class ExtensionClassContainerImpl1(
  `class`: Option[String],
  links: Option[ExtensionClassContainerImpl1links],
  map: Option[ExtensionClassContainerImpl1map]
)

object ExtensionClassContainerImpl1 {
  implicit lazy val extensionClassContainerImpl1JsonFormat: Format[ExtensionClassContainerImpl1] = Json.format[ExtensionClassContainerImpl1]
}

