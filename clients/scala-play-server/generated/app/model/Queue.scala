package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for Queue.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2024-03-15T14:20:17.794970991Z[Etc/UTC]", comments = "Generator version: 7.4.0")
case class Queue(
  `class`: Option[String],
  items: Option[List[QueueBlockedItem]]
)

object Queue {
  implicit lazy val queueJsonFormat: Format[Queue] = Json.format[Queue]
}

