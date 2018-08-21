package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.Link

/**
 * 
 * @param self 
 * @param Underscoreclass 
 */
case class FavoriteImpllinks(self: Option[Link],
                Underscoreclass: Option[String]
                )

object FavoriteImpllinks {
    /**
     * Creates the codec for converting FavoriteImpllinks from and to JSON.
     */
    implicit val decoder: Decoder[FavoriteImpllinks] = deriveDecoder
    implicit val encoder: ObjectEncoder[FavoriteImpllinks] = deriveEncoder
}
