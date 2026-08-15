package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for GithubRepositories.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-08-15T12:33:08.170340609Z[Etc/UTC]", comments = "Generator version: 7.24.0")
case class GithubRepositories(
  `class`: Option[String],
  links: Option[GithubRepositorieslinks],
  items: Option[List[GithubRepository]],
  lastPage: Option[Int],
  nextPage: Option[Int],
  pageSize: Option[Int]
)

object GithubRepositories {
  implicit lazy val githubRepositoriesJsonFormat: Format[GithubRepositories] = Json.format[GithubRepositories]
}

