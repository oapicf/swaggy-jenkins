package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for GithubFile.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-02-01T01:27:02.805814468Z[Etc/UTC]", comments = "Generator version: 7.18.0")
case class GithubFile(
  content: Option[GithubContent],
  `class`: Option[String]
)

object GithubFile {
  implicit lazy val githubFileJsonFormat: Format[GithubFile] = Json.format[GithubFile]
}

