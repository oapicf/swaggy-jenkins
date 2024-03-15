package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for StringParameterValue.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2024-03-15T14:20:17.794970991Z[Etc/UTC]", comments = "Generator version: 7.4.0")
case class StringParameterValue(
  `class`: Option[String],
  name: Option[String],
  value: Option[String]
)

object StringParameterValue {
  implicit lazy val stringParameterValueJsonFormat: Format[StringParameterValue] = Json.format[StringParameterValue]
}

