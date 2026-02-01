package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for GithubRespositoryContainer.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-02-01T01:27:02.805814468Z[Etc/UTC]", comments = "Generator version: 7.18.0")
case class GithubRespositoryContainer(
  `class`: Option[String],
  links: Option[GithubRespositoryContainerlinks],
  repositories: Option[GithubRepositories]
)

object GithubRespositoryContainer {
  implicit lazy val githubRespositoryContainerJsonFormat: Format[GithubRespositoryContainer] = Json.format[GithubRespositoryContainer]
}

