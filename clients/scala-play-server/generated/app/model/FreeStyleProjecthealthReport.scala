package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for FreeStyleProjecthealthReport.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-11-01T13:50:45.681735658Z[Etc/UTC]", comments = "Generator version: 7.26.0")
case class FreeStyleProjecthealthReport(
  description: Option[String],
  iconClassName: Option[String],
  iconUrl: Option[String],
  score: Option[Int],
  `class`: Option[String]
)

object FreeStyleProjecthealthReport {
  implicit lazy val freeStyleProjecthealthReportJsonFormat: Format[FreeStyleProjecthealthReport] = Json.format[FreeStyleProjecthealthReport]
}

