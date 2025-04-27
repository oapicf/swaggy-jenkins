package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ClassesByClass.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2025-04-27T08:11:07.072823777Z[Etc/UTC]", comments = "Generator version: 7.12.0")
case class ClassesByClass(
  classes: Option[List[String]],
  `class`: Option[String]
)

object ClassesByClass {
  implicit lazy val classesByClassJsonFormat: Format[ClassesByClass] = Json.format[ClassesByClass]
}

