package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for GithubContent.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2025-04-27T08:11:07.072823777Z[Etc/UTC]", comments = "Generator version: 7.12.0")
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

