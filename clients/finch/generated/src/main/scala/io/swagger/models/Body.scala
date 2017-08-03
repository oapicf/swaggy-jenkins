package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._

/**
 * 
 * @param favorite 
 */
case class Body(favorite: Boolean
                )

object Body {
    /**
     * Creates the codec for converting Body from and to JSON.
     */
    implicit val decoder: Decoder[Body] = deriveDecoder
    implicit val encoder: ObjectEncoder[Body] = deriveEncoder
}
