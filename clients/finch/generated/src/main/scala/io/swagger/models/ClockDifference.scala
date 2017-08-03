package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._

/**
 * 
 * @param _class 
 * @param diff 
 */
case class ClockDifference(_class: Option[String],
                diff: Option[Int]
                )

object ClockDifference {
    /**
     * Creates the codec for converting ClockDifference from and to JSON.
     */
    implicit val decoder: Decoder[ClockDifference] = deriveDecoder
    implicit val encoder: ObjectEncoder[ClockDifference] = deriveEncoder
}
