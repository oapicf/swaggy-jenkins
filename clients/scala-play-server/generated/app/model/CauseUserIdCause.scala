package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for CauseUserIdCause.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2025-05-10T02:42:00.809218355Z[Etc/UTC]", comments = "Generator version: 7.12.0")
case class CauseUserIdCause(
  `class`: Option[String],
  shortDescription: Option[String],
  userId: Option[String],
  userName: Option[String]
)

object CauseUserIdCause {
  implicit lazy val causeUserIdCauseJsonFormat: Format[CauseUserIdCause] = Json.format[CauseUserIdCause]
}

