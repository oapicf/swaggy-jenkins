package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for GithubScm.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2024-03-15T14:20:17.794970991Z[Etc/UTC]", comments = "Generator version: 7.4.0")
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

