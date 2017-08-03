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
case class UnlabeledLoadStatistics(_class: Option[String]
                )

object UnlabeledLoadStatistics {
    /**
     * Creates the codec for converting UnlabeledLoadStatistics from and to JSON.
     */
    implicit val decoder: Decoder[UnlabeledLoadStatistics] = deriveDecoder
    implicit val encoder: ObjectEncoder[UnlabeledLoadStatistics] = deriveEncoder
}
