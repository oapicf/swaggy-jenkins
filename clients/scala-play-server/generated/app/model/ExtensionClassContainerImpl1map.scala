package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ExtensionClassContainerImpl1map.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-08-15T12:33:08.170340609Z[Etc/UTC]", comments = "Generator version: 7.24.0")
case class ExtensionClassContainerImpl1map(
  ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl: Option[ExtensionClassImpl],
  ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl: Option[ExtensionClassImpl],
  `class`: Option[String]
)

object ExtensionClassContainerImpl1map {
  implicit lazy val extensionClassContainerImpl1mapJsonFormat: Format[ExtensionClassContainerImpl1map] = Json.format[ExtensionClassContainerImpl1map]
}

