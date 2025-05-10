package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ClockDifference.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2025-05-10T02:42:00.809218355Z[Etc/UTC]", comments = "Generator version: 7.12.0")
case class ClockDifference(
  `class`: Option[String],
  diff: Option[Int]
)

object ClockDifference {
  implicit lazy val clockDifferenceJsonFormat: Format[ClockDifference] = Json.format[ClockDifference]
}

