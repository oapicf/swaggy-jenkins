package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for InputStepImpl.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-08-15T12:33:08.170340609Z[Etc/UTC]", comments = "Generator version: 7.24.0")
case class InputStepImpl(
  `class`: Option[String],
  links: Option[InputStepImpllinks],
  id: Option[String],
  message: Option[String],
  ok: Option[String],
  parameters: Option[List[StringParameterDefinition]],
  submitter: Option[String]
)

object InputStepImpl {
  implicit lazy val inputStepImplJsonFormat: Format[InputStepImpl] = Json.format[InputStepImpl]
}

