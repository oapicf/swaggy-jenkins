package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for FreeStyleProjectactions.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-11-01T13:50:45.681735658Z[Etc/UTC]", comments = "Generator version: 7.26.0")
case class FreeStyleProjectactions(
  `class`: Option[String]
)

object FreeStyleProjectactions {
  implicit lazy val freeStyleProjectactionsJsonFormat: Format[FreeStyleProjectactions] = Json.format[FreeStyleProjectactions]
}

