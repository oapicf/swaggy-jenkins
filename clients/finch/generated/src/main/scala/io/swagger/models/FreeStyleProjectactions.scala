package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._

/**
 * 
 * @param _class 
 */
case class FreeStyleProjectactions(_class: Option[String]
                )

object FreeStyleProjectactions {
    /**
     * Creates the codec for converting FreeStyleProjectactions from and to JSON.
     */
    implicit val decoder: Decoder[FreeStyleProjectactions] = deriveDecoder
    implicit val encoder: ObjectEncoder[FreeStyleProjectactions] = deriveEncoder
}
