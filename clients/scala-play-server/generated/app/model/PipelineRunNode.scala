package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for PipelineRunNode.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2025-04-27T08:11:07.072823777Z[Etc/UTC]", comments = "Generator version: 7.12.0")
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

