package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelineFolderImpl.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-11-01T13:50:45.681735658Z[Etc/UTC]", comments = "Generator version: 7.26.0")
case class PipelineFolderImpl(
  `class`: Option[String],
  displayName: Option[String],
  fullName: Option[String],
  name: Option[String],
  organization: Option[String],
  numberOfFolders: Option[Int],
  numberOfPipelines: Option[Int]
)

object PipelineFolderImpl {
  implicit lazy val pipelineFolderImplJsonFormat: Format[PipelineFolderImpl] = Json.format[PipelineFolderImpl]
}

