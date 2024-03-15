package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for StringParameterDefinition.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2024-03-15T14:20:17.794970991Z[Etc/UTC]", comments = "Generator version: 7.4.0")
case class StringParameterDefinition(
  `class`: Option[String],
  defaultParameterValue: Option[StringParameterValue],
  description: Option[String],
  name: Option[String],
  `type`: Option[String]
)

object StringParameterDefinition {
  implicit lazy val stringParameterDefinitionJsonFormat: Format[StringParameterDefinition] = Json.format[StringParameterDefinition]
}

