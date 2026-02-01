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
 * @param runs 
 * @param queue 
 * @param Underscoreclass 
 */
case class PipelineImpllinks(self: Option[Link],
                actions: Option[Link],
                runs: Option[Link],
                queue: Option[Link],
                Underscoreclass: Option[String]
                )

object PipelineImpllinks {
    /**
     * Creates the codec for converting PipelineImpllinks from and to JSON.
     */
    implicit val decoder: Decoder[PipelineImpllinks] = deriveDecoder
    implicit val encoder: ObjectEncoder[PipelineImpllinks] = deriveEncoder
}
