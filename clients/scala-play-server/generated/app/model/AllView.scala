package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for AllView.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2024-03-15T14:20:17.794970991Z[Etc/UTC]", comments = "Generator version: 7.4.0")
case class AllView(
  `class`: Option[String],
  name: Option[String],
  url: Option[String]
)

object AllView {
  implicit lazy val allViewJsonFormat: Format[AllView] = Json.format[AllView]
}

