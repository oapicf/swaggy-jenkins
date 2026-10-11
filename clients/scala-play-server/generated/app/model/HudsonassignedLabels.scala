package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for HudsonassignedLabels.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-10-11T12:08:51.915360815Z[Etc/UTC]", comments = "Generator version: 7.24.0")
case class HudsonassignedLabels(
  `class`: Option[String]
)

object HudsonassignedLabels {
  implicit lazy val hudsonassignedLabelsJsonFormat: Format[HudsonassignedLabels] = Json.format[HudsonassignedLabels]
}

