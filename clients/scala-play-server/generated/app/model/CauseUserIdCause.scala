package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for CauseUserIdCause.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-11-01T13:23:42.633582383Z[Etc/UTC]", comments = "Generator version: 7.26.0")
case class CauseUserIdCause(
  `class`: Option[String],
  shortDescription: Option[String],
  userId: Option[String],
  userName: Option[String]
)

object CauseUserIdCause {
  implicit lazy val causeUserIdCauseJsonFormat: Format[CauseUserIdCause] = Json.format[CauseUserIdCause]
}

