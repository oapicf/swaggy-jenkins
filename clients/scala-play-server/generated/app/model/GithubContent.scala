package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for GithubContent.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-02-01T01:27:02.805814468Z[Etc/UTC]", comments = "Generator version: 7.18.0")
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

