package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for UnlabeledLoadStatistics.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2024-03-15T14:20:17.794970991Z[Etc/UTC]", comments = "Generator version: 7.4.0")
case class UnlabeledLoadStatistics(
  `class`: Option[String]
)

object UnlabeledLoadStatistics {
  implicit lazy val unlabeledLoadStatisticsJsonFormat: Format[UnlabeledLoadStatistics] = Json.format[UnlabeledLoadStatistics]
}

