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
case class InputStepImpllinks(self: Option[Link],
                Underscoreclass: Option[String]
                )

object InputStepImpllinks {
    /**
     * Creates the codec for converting InputStepImpllinks from and to JSON.
     */
    implicit val decoder: Decoder[InputStepImpllinks] = deriveDecoder
    implicit val encoder: ObjectEncoder[InputStepImpllinks] = deriveEncoder
}
