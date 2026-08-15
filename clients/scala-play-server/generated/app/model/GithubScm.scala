package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for GithubScm.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-08-15T12:33:08.170340609Z[Etc/UTC]", comments = "Generator version: 7.24.0")
case class GithubScm(
  `class`: Option[String],
  links: Option[GithubScmlinks],
  credentialId: Option[String],
  id: Option[String],
  uri: Option[String]
)

object GithubScm {
  implicit lazy val githubScmJsonFormat: Format[GithubScm] = Json.format[GithubScm]
}

