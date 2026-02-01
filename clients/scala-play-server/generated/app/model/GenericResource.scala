package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for GenericResource.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-02-01T01:27:02.805814468Z[Etc/UTC]", comments = "Generator version: 7.18.0")
case class GenericResource(
  `class`: Option[String],
  displayName: Option[String],
  durationInMillis: Option[Int],
  id: Option[String],
  result: Option[String],
  startTime: Option[String]
)

object GenericResource {
  implicit lazy val genericResourceJsonFormat: Format[GenericResource] = Json.format[GenericResource]
}

