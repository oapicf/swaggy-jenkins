package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for GithubRepositorypermissions.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-02-01T01:27:02.805814468Z[Etc/UTC]", comments = "Generator version: 7.18.0")
case class GithubRepositorypermissions(
  admin: Option[Boolean],
  push: Option[Boolean],
  pull: Option[Boolean],
  `class`: Option[String]
)

object GithubRepositorypermissions {
  implicit lazy val githubRepositorypermissionsJsonFormat: Format[GithubRepositorypermissions] = Json.format[GithubRepositorypermissions]
}

