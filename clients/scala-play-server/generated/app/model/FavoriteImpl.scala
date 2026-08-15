package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for FavoriteImpl.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-08-15T12:33:08.170340609Z[Etc/UTC]", comments = "Generator version: 7.24.0")
case class FavoriteImpl(
  `class`: Option[String],
  links: Option[FavoriteImpllinks],
  item: Option[PipelineImpl]
)

object FavoriteImpl {
  implicit lazy val favoriteImplJsonFormat: Format[FavoriteImpl] = Json.format[FavoriteImpl]
}

