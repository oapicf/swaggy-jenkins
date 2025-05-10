package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for User.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2025-05-10T02:42:00.809218355Z[Etc/UTC]", comments = "Generator version: 7.12.0")
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

