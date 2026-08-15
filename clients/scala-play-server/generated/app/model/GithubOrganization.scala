package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for GithubOrganization.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-08-15T12:33:08.170340609Z[Etc/UTC]", comments = "Generator version: 7.24.0")
case class GithubOrganization(
  `class`: Option[String],
  links: Option[GithubOrganizationlinks],
  jenkinsOrganizationPipeline: Option[Boolean],
  name: Option[String]
)

object GithubOrganization {
  implicit lazy val githubOrganizationJsonFormat: Format[GithubOrganization] = Json.format[GithubOrganization]
}

