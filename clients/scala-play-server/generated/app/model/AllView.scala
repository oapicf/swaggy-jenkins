package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for AllView.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-11-01T13:50:45.681735658Z[Etc/UTC]", comments = "Generator version: 7.26.0")
case class AllView(
  `class`: Option[String],
  name: Option[String],
  url: Option[String]
)

object AllView {
  implicit lazy val allViewJsonFormat: Format[AllView] = Json.format[AllView]
}

