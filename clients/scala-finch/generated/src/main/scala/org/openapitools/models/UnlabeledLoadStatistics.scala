package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param Underscoreclass 
 */
case class UnlabeledLoadStatistics(Underscoreclass: Option[String]
                )

object UnlabeledLoadStatistics {
    /**
     * Creates the codec for converting UnlabeledLoadStatistics from and to JSON.
     */
    implicit val decoder: Decoder[UnlabeledLoadStatistics] = deriveDecoder
    implicit val encoder: ObjectEncoder[UnlabeledLoadStatistics] = deriveEncoder
}
