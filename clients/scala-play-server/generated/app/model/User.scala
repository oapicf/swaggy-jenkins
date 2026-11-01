package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for User.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-11-01T13:23:42.633582383Z[Etc/UTC]", comments = "Generator version: 7.26.0")
case class User(
  `class`: Option[String],
  id: Option[String],
  fullName: Option[String],
  email: Option[String],
  name: Option[String]
)

object User {
  implicit lazy val userJsonFormat: Format[User] = Json.format[User]
}

