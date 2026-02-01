package model

import play.api.libs.json._

/**
  * Represents the Swagger definition for FavoriteImpl.
  */
@javax.annotation.Generated(value = Array("org.openapitools.codegen.languages.ScalaPlayFrameworkServerCodegen"), date = "2026-02-01T01:27:02.805814468Z[Etc/UTC]", comments = "Generator version: 7.18.0")
case class FavoriteImpl(
  `class`: Option[String],
  links: Option[FavoriteImpllinks],
  item: Option[PipelineImpl]
)

object FavoriteImpl {
  implicit lazy val favoriteImplJsonFormat: Format[FavoriteImpl] = Json.format[FavoriteImpl]
}

