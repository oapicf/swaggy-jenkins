package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ListView.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2025-04-27T08:11:07.072823777Z[Etc/UTC]", comments = "Generator version: 7.12.0")
case class ListView(
  `class`: Option[String],
  description: Option[String],
  jobs: Option[List[FreeStyleProject]],
  name: Option[String],
  url: Option[String]
)

object ListView {
  implicit lazy val listViewJsonFormat: Format[ListView] = Json.format[ListView]
}

