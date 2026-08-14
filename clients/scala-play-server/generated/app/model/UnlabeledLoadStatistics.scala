package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for UnlabeledLoadStatistics.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-08-14T13:30:17.222677609Z[Etc/UTC]", comments = "Generator version: 7.24.0")
case class UnlabeledLoadStatistics(
  `class`: Option[String]
)

object UnlabeledLoadStatistics {
  implicit lazy val unlabeledLoadStatisticsJsonFormat: Format[UnlabeledLoadStatistics] = Json.format[UnlabeledLoadStatistics]
}

