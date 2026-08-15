package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelineRunNode.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-08-15T02:30:45.020896586Z[Etc/UTC]", comments = "Generator version: 7.24.0")
case class PipelineRunNode(
  `class`: Option[String],
  displayName: Option[String],
  durationInMillis: Option[Int],
  edges: Option[List[PipelineRunNodeedges]],
  id: Option[String],
  result: Option[String],
  startTime: Option[String],
  state: Option[String]
)

object PipelineRunNode {
  implicit lazy val pipelineRunNodeJsonFormat: Format[PipelineRunNode] = Json.format[PipelineRunNode]
}

