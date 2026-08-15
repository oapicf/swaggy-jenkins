package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for GithubScmlinks.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-08-15T12:33:08.170340609Z[Etc/UTC]", comments = "Generator version: 7.24.0")
case class GithubScmlinks(
  self: Option[Link],
  `class`: Option[String]
)

object GithubScmlinks {
  implicit lazy val githubScmlinksJsonFormat: Format[GithubScmlinks] = Json.format[GithubScmlinks]
}

