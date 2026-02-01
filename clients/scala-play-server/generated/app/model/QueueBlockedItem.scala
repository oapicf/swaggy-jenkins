package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for QueueBlockedItem.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-02-01T01:27:02.805814468Z[Etc/UTC]", comments = "Generator version: 7.18.0")
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

