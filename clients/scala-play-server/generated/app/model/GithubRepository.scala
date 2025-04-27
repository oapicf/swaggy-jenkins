package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for GithubRepository.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2025-04-27T08:11:07.072823777Z[Etc/UTC]", comments = "Generator version: 7.12.0")
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

