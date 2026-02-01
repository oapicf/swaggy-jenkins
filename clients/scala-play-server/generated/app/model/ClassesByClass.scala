package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for ClassesByClass.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-02-01T01:27:02.805814468Z[Etc/UTC]", comments = "Generator version: 7.18.0")
case class ClassesByClass(
  classes: Option[List[String]],
  `class`: Option[String]
)

object ClassesByClass {
  implicit lazy val classesByClassJsonFormat: Format[ClassesByClass] = Json.format[ClassesByClass]
}

