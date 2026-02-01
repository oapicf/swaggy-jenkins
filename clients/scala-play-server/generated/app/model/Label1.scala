package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for Label1.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-02-01T01:27:02.805814468Z[Etc/UTC]", comments = "Generator version: 7.18.0")
case class Label1(
  `class`: Option[String]
)

object Label1 {
  implicit lazy val label1JsonFormat: Format[Label1] = Json.format[Label1]
}

