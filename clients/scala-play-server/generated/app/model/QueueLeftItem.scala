package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for QueueLeftItem.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2025-04-27T08:11:07.072823777Z[Etc/UTC]", comments = "Generator version: 7.12.0")
case class QueueLeftItem(
  `class`: Option[String],
  actions: Option[List[CauseAction]],
  blocked: Option[Boolean],
  buildable: Option[Boolean],
  id: Option[Int],
  inQueueSince: Option[Int],
  params: Option[String],
  stuck: Option[Boolean],
  task: Option[FreeStyleProject],
  url: Option[String],
  why: Option[String],
  cancelled: Option[Boolean],
  executable: Option[FreeStyleBuild]
)

object QueueLeftItem {
  implicit lazy val queueLeftItemJsonFormat: Format[QueueLeftItem] = Json.format[QueueLeftItem]
}

