package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for StringParameterValue.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-02-01T01:27:02.805814468Z[Etc/UTC]", comments = "Generator version: 7.18.0")
case class StringParameterValue(
  `class`: Option[String],
  name: Option[String],
  value: Option[String]
)

object StringParameterValue {
  implicit lazy val stringParameterValueJsonFormat: Format[StringParameterValue] = Json.format[StringParameterValue]
}

