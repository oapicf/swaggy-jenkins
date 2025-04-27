package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for Queue.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2025-04-27T08:11:07.072823777Z[Etc/UTC]", comments = "Generator version: 7.12.0")
case class Queue(
  `class`: Option[String],
  items: Option[List[QueueBlockedItem]]
)

object Queue {
  implicit lazy val queueJsonFormat: Format[Queue] = Json.format[Queue]
}

