package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for GithubRepositorypermissions.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2025-04-27T08:11:07.072823777Z[Etc/UTC]", comments = "Generator version: 7.12.0")
case class GithubRepositorypermissions(
  admin: Option[Boolean],
  push: Option[Boolean],
  pull: Option[Boolean],
  `class`: Option[String]
)

object GithubRepositorypermissions {
  implicit lazy val githubRepositorypermissionsJsonFormat: Format[GithubRepositorypermissions] = Json.format[GithubRepositorypermissions]
}

