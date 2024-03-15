package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for GithubFile.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2024-03-15T14:20:17.794970991Z[Etc/UTC]", comments = "Generator version: 7.4.0")
case class GithubFile(
  content: Option[GithubContent],
  `class`: Option[String]
)

object GithubFile {
  implicit lazy val githubFileJsonFormat: Format[GithubFile] = Json.format[GithubFile]
}

