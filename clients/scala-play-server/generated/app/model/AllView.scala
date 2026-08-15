package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for AllView.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-08-15T12:33:08.170340609Z[Etc/UTC]", comments = "Generator version: 7.24.0")
case class AllView(
  `class`: Option[String],
  name: Option[String],
  url: Option[String]
)

object AllView {
  implicit lazy val allViewJsonFormat: Format[AllView] = Json.format[AllView]
}

