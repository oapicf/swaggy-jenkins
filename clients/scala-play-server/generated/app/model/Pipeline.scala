package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for Pipeline.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2025-05-10T02:42:00.809218355Z[Etc/UTC]", comments = "Generator version: 7.12.0")
case class Pipeline(
  `class`: Option[String],
  organization: Option[String],
  name: Option[String],
  displayName: Option[String],
  fullName: Option[String],
  weatherScore: Option[Int],
  estimatedDurationInMillis: Option[Int],
  latestRun: Option[PipelinelatestRun]
)

object Pipeline {
  implicit lazy val pipelineJsonFormat: Format[Pipeline] = Json.format[Pipeline]
}

