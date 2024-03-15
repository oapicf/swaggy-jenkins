package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for DefaultCrumbIssuer.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2024-03-15T14:20:17.794970991Z[Etc/UTC]", comments = "Generator version: 7.4.0")
case class DefaultCrumbIssuer(
  `class`: Option[String],
  crumb: Option[String],
  crumbRequestField: Option[String]
)

object DefaultCrumbIssuer {
  implicit lazy val defaultCrumbIssuerJsonFormat: Format[DefaultCrumbIssuer] = Json.format[DefaultCrumbIssuer]
}

