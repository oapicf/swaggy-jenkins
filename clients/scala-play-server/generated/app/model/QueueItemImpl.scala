package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for QueueItemImpl.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-08-14T13:30:17.222677609Z[Etc/UTC]", comments = "Generator version: 7.24.0")
case class QueueItemImpl(
  `class`: Option[String],
  expectedBuildNumber: Option[Int],
  id: Option[String],
  pipeline: Option[String],
  queuedTime: Option[Int]
)

object QueueItemImpl {
  implicit lazy val queueItemImplJsonFormat: Format[QueueItemImpl] = Json.format[QueueItemImpl]
}

