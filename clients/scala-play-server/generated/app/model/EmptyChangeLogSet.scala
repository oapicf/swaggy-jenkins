package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for EmptyChangeLogSet.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-08-14T13:30:17.222677609Z[Etc/UTC]", comments = "Generator version: 7.24.0")
case class EmptyChangeLogSet(
  `class`: Option[String],
  kind: Option[String]
)

object EmptyChangeLogSet {
  implicit lazy val emptyChangeLogSetJsonFormat: Format[EmptyChangeLogSet] = Json.format[EmptyChangeLogSet]
}

