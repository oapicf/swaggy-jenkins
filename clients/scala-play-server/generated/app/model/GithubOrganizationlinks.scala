package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for GithubOrganizationlinks.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-08-15T12:33:08.170340609Z[Etc/UTC]", comments = "Generator version: 7.24.0")
case class GithubOrganizationlinks(
  repositories: Option[Link],
  self: Option[Link],
  `class`: Option[String]
)

object GithubOrganizationlinks {
  implicit lazy val githubOrganizationlinksJsonFormat: Format[GithubOrganizationlinks] = Json.format[GithubOrganizationlinks]
}

