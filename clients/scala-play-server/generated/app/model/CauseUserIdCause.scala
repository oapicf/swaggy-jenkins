package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for CauseUserIdCause.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-08-16T01:41:51.296244513Z[Etc/UTC]", comments = "Generator version: 7.24.0")
case class CauseUserIdCause(
  `class`: Option[String],
  shortDescription: Option[String],
  userId: Option[String],
  userName: Option[String]
)

object CauseUserIdCause {
  implicit lazy val causeUserIdCauseJsonFormat: Format[CauseUserIdCause] = Json.format[CauseUserIdCause]
}

