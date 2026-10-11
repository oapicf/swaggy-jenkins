package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for GithubRepository.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-10-11T12:08:51.915360815Z[Etc/UTC]", comments = "Generator version: 7.24.0")
case class GithubRepository(
  `class`: Option[String],
  links: Option[GithubRepositorylinks],
  defaultBranch: Option[String],
  description: Option[String],
  name: Option[String],
  permissions: Option[GithubRepositorypermissions],
  `private`: Option[Boolean],
  fullName: Option[String]
)

object GithubRepository {
  implicit lazy val githubRepositoryJsonFormat: Format[GithubRepository] = Json.format[GithubRepository]
}

