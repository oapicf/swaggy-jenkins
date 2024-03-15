package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ExtensionClassContainerImpl1.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2024-03-15T14:20:17.794970991Z[Etc/UTC]", comments = "Generator version: 7.4.0")
case class ExtensionClassContainerImpl1(
  `class`: Option[String],
  links: Option[ExtensionClassContainerImpl1links],
  map: Option[ExtensionClassContainerImpl1map]
)

object ExtensionClassContainerImpl1 {
  implicit lazy val extensionClassContainerImpl1JsonFormat: Format[ExtensionClassContainerImpl1] = Json.format[ExtensionClassContainerImpl1]
}

