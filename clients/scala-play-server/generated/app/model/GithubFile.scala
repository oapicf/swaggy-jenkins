package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for GithubFile.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-11-01T13:50:45.681735658Z[Etc/UTC]", comments = "Generator version: 7.26.0")
case class GithubFile(
  content: Option[GithubContent],
  `class`: Option[String]
)

object GithubFile {
  implicit lazy val githubFileJsonFormat: Format[GithubFile] = Json.format[GithubFile]
}

