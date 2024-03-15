package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for QueueBlockedItem.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2024-03-15T14:20:17.794970991Z[Etc/UTC]", comments = "Generator version: 7.4.0")
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

