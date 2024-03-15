package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for FreeStyleProjecthealthReport.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2024-03-15T14:20:17.794970991Z[Etc/UTC]", comments = "Generator version: 7.4.0")
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

