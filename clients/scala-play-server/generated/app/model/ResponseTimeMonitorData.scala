package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ResponseTimeMonitorData.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2025-05-10T02:42:00.809218355Z[Etc/UTC]", comments = "Generator version: 7.12.0")
case class ResponseTimeMonitorData(
  `class`: Option[String],
  timestamp: Option[Int],
  average: Option[Int]
)

object ResponseTimeMonitorData {
  implicit lazy val responseTimeMonitorDataJsonFormat: Format[ResponseTimeMonitorData] = Json.format[ResponseTimeMonitorData]
}

