package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for NullSCM.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-11-01T13:23:42.633582383Z[Etc/UTC]", comments = "Generator version: 7.26.0")
case class NullSCM(
  `class`: Option[String]
)

object NullSCM {
  implicit lazy val nullSCMJsonFormat: Format[NullSCM] = Json.format[NullSCM]
}

