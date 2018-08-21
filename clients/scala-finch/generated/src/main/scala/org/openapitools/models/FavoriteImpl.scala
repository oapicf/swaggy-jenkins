package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.FavoriteImpllinks
import org.openapitools.models.PipelineImpl

/**
 * 
 * @param Underscoreclass 
 * @param Underscorelinks 
 * @param item 
 */
case class FavoriteImpl(Underscoreclass: Option[String],
                Underscorelinks: Option[FavoriteImpllinks],
                item: Option[PipelineImpl]
                )

object FavoriteImpl {
    /**
     * Creates the codec for converting FavoriteImpl from and to JSON.
     */
    implicit val decoder: Decoder[FavoriteImpl] = deriveDecoder
    implicit val encoder: ObjectEncoder[FavoriteImpl] = deriveEncoder
}
