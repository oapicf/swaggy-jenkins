package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for DefaultCrumbIssuer.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-02-01T01:27:02.805814468Z[Etc/UTC]", comments = "Generator version: 7.18.0")
case class DefaultCrumbIssuer(
  `class`: Option[String],
  crumb: Option[String],
  crumbRequestField: Option[String]
)

object DefaultCrumbIssuer {
  implicit lazy val defaultCrumbIssuerJsonFormat: Format[DefaultCrumbIssuer] = Json.format[DefaultCrumbIssuer]
}

