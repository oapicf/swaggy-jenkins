package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for DefaultCrumbIssuer.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2025-04-27T08:11:07.072823777Z[Etc/UTC]", comments = "Generator version: 7.12.0")
case class DefaultCrumbIssuer(
  `class`: Option[String],
  crumb: Option[String],
  crumbRequestField: Option[String]
)

object DefaultCrumbIssuer {
  implicit lazy val defaultCrumbIssuerJsonFormat: Format[DefaultCrumbIssuer] = Json.format[DefaultCrumbIssuer]
}

