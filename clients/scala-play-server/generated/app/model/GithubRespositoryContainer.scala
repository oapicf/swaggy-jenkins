package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for GithubRespositoryContainer.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-08-15T02:30:45.020896586Z[Etc/UTC]", comments = "Generator version: 7.24.0")
case class GithubRespositoryContainer(
  `class`: Option[String],
  links: Option[GithubRespositoryContainerlinks],
  repositories: Option[GithubRepositories]
)

object GithubRespositoryContainer {
  implicit lazy val githubRespositoryContainerJsonFormat: Format[GithubRespositoryContainer] = Json.format[GithubRespositoryContainer]
}

