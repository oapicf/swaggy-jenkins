package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for Organisation.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-02-01T01:27:02.805814468Z[Etc/UTC]", comments = "Generator version: 7.18.0")
case class Organisation(
  `class`: Option[String],
  name: Option[String]
)

object Organisation {
  implicit lazy val organisationJsonFormat: Format[Organisation] = Json.format[Organisation]
}

