package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for Queue.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-02-01T01:27:02.805814468Z[Etc/UTC]", comments = "Generator version: 7.18.0")
case class Queue(
  `class`: Option[String],
  items: Option[List[QueueBlockedItem]]
)

object Queue {
  implicit lazy val queueJsonFormat: Format[Queue] = Json.format[Queue]
}

