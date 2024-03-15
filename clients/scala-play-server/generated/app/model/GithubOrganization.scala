package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for GithubOrganization.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2024-03-15T14:20:17.794970991Z[Etc/UTC]", comments = "Generator version: 7.4.0")
case class GithubOrganization(
  `class`: Option[String],
  links: Option[GithubOrganizationlinks],
  jenkinsOrganizationPipeline: Option[Boolean],
  name: Option[String]
)

object GithubOrganization {
  implicit lazy val githubOrganizationJsonFormat: Format[GithubOrganization] = Json.format[GithubOrganization]
}

