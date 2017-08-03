package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._
import io.swagger.models.FavoriteImpllinks
import io.swagger.models.PipelineImpl

/**
 * 
 * @param _class 
 * @param _links 
 * @param item 
 */
case class FavoriteImpl(_class: Option[String],
                _links: Option[FavoriteImpllinks],
                item: Option[PipelineImpl]
                )

object FavoriteImpl {
    /**
     * Creates the codec for converting FavoriteImpl from and to JSON.
     */
    implicit val decoder: Decoder[FavoriteImpl] = deriveDecoder
    implicit val encoder: ObjectEncoder[FavoriteImpl] = deriveEncoder
}
