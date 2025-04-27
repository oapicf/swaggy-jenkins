package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for AllView.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2025-04-27T08:11:07.072823777Z[Etc/UTC]", comments = "Generator version: 7.12.0")
case class AllView(
  `class`: Option[String],
  name: Option[String],
  url: Option[String]
)

object AllView {
  implicit lazy val allViewJsonFormat: Format[AllView] = Json.format[AllView]
}

