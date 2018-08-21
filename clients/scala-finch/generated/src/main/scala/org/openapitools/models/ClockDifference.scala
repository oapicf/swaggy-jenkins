package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param Underscoreclass 
 * @param diff 
 */
case class ClockDifference(Underscoreclass: Option[String],
                diff: Option[Int]
                )

object ClockDifference {
    /**
     * Creates the codec for converting ClockDifference from and to JSON.
     */
    implicit val decoder: Decoder[ClockDifference] = deriveDecoder
    implicit val encoder: ObjectEncoder[ClockDifference] = deriveEncoder
}
