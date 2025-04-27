package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for GithubRepositorylinks.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2025-04-27T08:11:07.072823777Z[Etc/UTC]", comments = "Generator version: 7.12.0")
case class GithubRepositorylinks(
  self: Option[Link],
  `class`: Option[String]
)

object GithubRepositorylinks {
  implicit lazy val githubRepositorylinksJsonFormat: Format[GithubRepositorylinks] = Json.format[GithubRepositorylinks]
}

