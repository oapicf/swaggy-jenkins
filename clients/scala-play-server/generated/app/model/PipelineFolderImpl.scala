package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelineFolderImpl.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2024-03-15T14:20:17.794970991Z[Etc/UTC]", comments = "Generator version: 7.4.0")
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

