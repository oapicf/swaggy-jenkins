package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._
import io.swagger.models.ArrayList
import io.swagger.models.FavoriteImpl
import scala.collection.immutable.Seq

/**
 * 
 */
case class UserFavorites()

object UserFavorites {
    /**
     * Creates the codec for converting UserFavorites from and to JSON.
     */
    implicit val decoder: Decoder[UserFavorites] = deriveDecoder
    implicit val encoder: ObjectEncoder[UserFavorites] = deriveEncoder
}
