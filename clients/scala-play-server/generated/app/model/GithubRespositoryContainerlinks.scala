package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for GithubRespositoryContainerlinks.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-08-14T13:30:17.222677609Z[Etc/UTC]", comments = "Generator version: 7.24.0")
case class GithubRespositoryContainerlinks(
  self: Option[Link],
  `class`: Option[String]
)

object GithubRespositoryContainerlinks {
  implicit lazy val githubRespositoryContainerlinksJsonFormat: Format[GithubRespositoryContainerlinks] = Json.format[GithubRespositoryContainerlinks]
}

