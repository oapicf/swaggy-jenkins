package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for Organisation.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-08-15T12:33:08.170340609Z[Etc/UTC]", comments = "Generator version: 7.24.0")
case class Organisation(
  `class`: Option[String],
  name: Option[String]
)

object Organisation {
  implicit lazy val organisationJsonFormat: Format[Organisation] = Json.format[Organisation]
}

