package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for QueueBlockedItem.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2025-05-10T02:42:00.809218355Z[Etc/UTC]", comments = "Generator version: 7.12.0")
case class QueueBlockedItem(
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
  buildableStartMilliseconds: Option[Int]
)

object QueueBlockedItem {
  implicit lazy val queueBlockedItemJsonFormat: Format[QueueBlockedItem] = Json.format[QueueBlockedItem]
}

