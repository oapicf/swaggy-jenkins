package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for StringParameterDefinition.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-11-01T13:23:42.633582383Z[Etc/UTC]", comments = "Generator version: 7.26.0")
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

