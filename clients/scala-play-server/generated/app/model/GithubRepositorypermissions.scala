package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for GithubRepositorypermissions.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2024-03-15T14:20:17.794970991Z[Etc/UTC]", comments = "Generator version: 7.4.0")
case class GithubRepositorypermissions(
  admin: Option[Boolean],
  push: Option[Boolean],
  pull: Option[Boolean],
  `class`: Option[String]
)

object GithubRepositorypermissions {
  implicit lazy val githubRepositorypermissionsJsonFormat: Format[GithubRepositorypermissions] = Json.format[GithubRepositorypermissions]
}

