package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for GenericResource.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2024-03-15T14:20:17.794970991Z[Etc/UTC]", comments = "Generator version: 7.4.0")
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

