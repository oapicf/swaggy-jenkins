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
 * @param actions 
 * @param Underscoreclass 
 */
case class PipelineStepImpllinks(self: Option[Link],
                actions: Option[Link],
                Underscoreclass: Option[String]
                )

object PipelineStepImpllinks {
    /**
     * Creates the codec for converting PipelineStepImpllinks from and to JSON.
     */
    implicit val decoder: Decoder[PipelineStepImpllinks] = deriveDecoder
    implicit val encoder: ObjectEncoder[PipelineStepImpllinks] = deriveEncoder
}
