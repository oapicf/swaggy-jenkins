package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for EmptyChangeLogSet.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2025-05-10T02:42:00.809218355Z[Etc/UTC]", comments = "Generator version: 7.12.0")
case class EmptyChangeLogSet(
  `class`: Option[String],
  kind: Option[String]
)

object EmptyChangeLogSet {
  implicit lazy val emptyChangeLogSetJsonFormat: Format[EmptyChangeLogSet] = Json.format[EmptyChangeLogSet]
}

