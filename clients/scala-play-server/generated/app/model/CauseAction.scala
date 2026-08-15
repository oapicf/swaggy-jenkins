package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for CauseAction.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-08-15T02:30:45.020896586Z[Etc/UTC]", comments = "Generator version: 7.24.0")
case class CauseAction(
  `class`: Option[String],
  causes: Option[List[CauseUserIdCause]]
)

object CauseAction {
  implicit lazy val causeActionJsonFormat: Format[CauseAction] = Json.format[CauseAction]
}

