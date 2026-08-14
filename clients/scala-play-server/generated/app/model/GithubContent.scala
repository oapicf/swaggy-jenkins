package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for GithubContent.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-08-14T13:30:17.222677609Z[Etc/UTC]", comments = "Generator version: 7.24.0")
case class GithubContent(
  name: Option[String],
  sha: Option[String],
  `class`: Option[String],
  repo: Option[String],
  size: Option[Int],
  owner: Option[String],
  path: Option[String],
  base64Data: Option[String]
)

object GithubContent {
  implicit lazy val githubContentJsonFormat: Format[GithubContent] = Json.format[GithubContent]
}

