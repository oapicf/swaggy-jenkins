package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for NullSCM.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-08-16T01:41:51.296244513Z[Etc/UTC]", comments = "Generator version: 7.24.0")
case class NullSCM(
  `class`: Option[String]
)

object NullSCM {
  implicit lazy val nullSCMJsonFormat: Format[NullSCM] = Json.format[NullSCM]
}

