package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ListView.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-11-01T13:50:45.681735658Z[Etc/UTC]", comments = "Generator version: 7.26.0")
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

