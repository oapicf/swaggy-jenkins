package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for CauseAction.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-02-01T01:27:02.805814468Z[Etc/UTC]", comments = "Generator version: 7.18.0")
case class CauseAction(
  `class`: Option[String],
  causes: Option[List[CauseUserIdCause]]
)

object CauseAction {
  implicit lazy val causeActionJsonFormat: Format[CauseAction] = Json.format[CauseAction]
}

