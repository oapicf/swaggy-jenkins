package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for GithubScm.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-02-01T01:27:02.805814468Z[Etc/UTC]", comments = "Generator version: 7.18.0")
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

