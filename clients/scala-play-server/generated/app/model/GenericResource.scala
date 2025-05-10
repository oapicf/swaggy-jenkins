package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for GenericResource.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2025-05-10T02:42:00.809218355Z[Etc/UTC]", comments = "Generator version: 7.12.0")
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

