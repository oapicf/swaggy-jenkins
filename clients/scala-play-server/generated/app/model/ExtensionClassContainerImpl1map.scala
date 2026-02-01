package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ExtensionClassContainerImpl1map.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-02-01T01:27:02.805814468Z[Etc/UTC]", comments = "Generator version: 7.18.0")
case class ExtensionClassContainerImpl1map(
  ioJenkinsBlueoceanServiceEmbeddedRestPipelineImpl: Option[ExtensionClassImpl],
  ioJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl: Option[ExtensionClassImpl],
  `class`: Option[String]
)

object ExtensionClassContainerImpl1map {
  implicit lazy val extensionClassContainerImpl1mapJsonFormat: Format[ExtensionClassContainerImpl1map] = Json.format[ExtensionClassContainerImpl1map]
}

