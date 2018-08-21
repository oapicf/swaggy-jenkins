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
case class HudsonassignedLabels(Underscoreclass: Option[String]
                )

object HudsonassignedLabels {
    /**
     * Creates the codec for converting HudsonassignedLabels from and to JSON.
     */
    implicit val decoder: Decoder[HudsonassignedLabels] = deriveDecoder
    implicit val encoder: ObjectEncoder[HudsonassignedLabels] = deriveEncoder
}
