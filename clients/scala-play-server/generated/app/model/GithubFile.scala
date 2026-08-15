package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for GithubFile.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-08-15T12:33:08.170340609Z[Etc/UTC]", comments = "Generator version: 7.24.0")
case class GithubFile(
  content: Option[GithubContent],
  `class`: Option[String]
)

object GithubFile {
  implicit lazy val githubFileJsonFormat: Format[GithubFile] = Json.format[GithubFile]
}

