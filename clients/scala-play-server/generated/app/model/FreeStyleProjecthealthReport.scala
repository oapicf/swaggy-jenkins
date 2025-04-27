package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for FreeStyleProjecthealthReport.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2025-04-27T08:11:07.072823777Z[Etc/UTC]", comments = "Generator version: 7.12.0")
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

