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
case class HudsonassignedLabels(_class: Option[String]
                )

object HudsonassignedLabels {
    /**
     * Creates the codec for converting HudsonassignedLabels from and to JSON.
     */
    implicit val decoder: Decoder[HudsonassignedLabels] = deriveDecoder
    implicit val encoder: ObjectEncoder[HudsonassignedLabels] = deriveEncoder
}
