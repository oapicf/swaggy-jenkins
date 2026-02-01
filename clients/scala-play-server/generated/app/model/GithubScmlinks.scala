package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for GithubScmlinks.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-02-01T01:27:02.805814468Z[Etc/UTC]", comments = "Generator version: 7.18.0")
case class GithubScmlinks(
  self: Option[Link],
  `class`: Option[String]
)

object GithubScmlinks {
  implicit lazy val githubScmlinksJsonFormat: Format[GithubScmlinks] = Json.format[GithubScmlinks]
}

