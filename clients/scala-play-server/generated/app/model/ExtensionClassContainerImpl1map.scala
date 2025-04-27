package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ExtensionClassContainerImpl1map.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2025-04-27T08:11:07.072823777Z[Etc/UTC]", comments = "Generator version: 7.12.0")
case class ExtensionClassContainerImpl1map(
  ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl: Option[ExtensionClassImpl],
  ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl: Option[ExtensionClassImpl],
  `class`: Option[String]
)

object ExtensionClassContainerImpl1map {
  implicit lazy val extensionClassContainerImpl1mapJsonFormat: Format[ExtensionClassContainerImpl1map] = Json.format[ExtensionClassContainerImpl1map]
}

