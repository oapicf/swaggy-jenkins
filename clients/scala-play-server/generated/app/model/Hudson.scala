package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for Hudson.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2024-03-15T14:20:17.794970991Z[Etc/UTC]", comments = "Generator version: 7.4.0")
case class Hudson(
  `class`: Option[String],
  assignedLabels: Option[List[HudsonassignedLabels]],
  mode: Option[String],
  nodeDescription: Option[String],
  nodeName: Option[String],
  numExecutors: Option[Int],
  description: Option[String],
  jobs: Option[List[FreeStyleProject]],
  primaryView: Option[AllView],
  quietingDown: Option[Boolean],
  slaveAgentPort: Option[Int],
  unlabeledLoad: Option[UnlabeledLoadStatistics],
  useCrumbs: Option[Boolean],
  useSecurity: Option[Boolean],
  views: Option[List[AllView]]
)

object Hudson {
  implicit lazy val hudsonJsonFormat: Format[Hudson] = Json.format[Hudson]
}

