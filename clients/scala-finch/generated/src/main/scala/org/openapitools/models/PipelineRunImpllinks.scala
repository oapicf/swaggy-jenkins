package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.Link

/**
 * 
 * @param nodes 
 * @param log 
 * @param self 
 * @param actions 
 * @param steps 
 * @param Underscoreclass 
 */
case class PipelineRunImpllinks(nodes: Option[Link],
                log: Option[Link],
                self: Option[Link],
                actions: Option[Link],
                steps: Option[Link],
                Underscoreclass: Option[String]
                )

object PipelineRunImpllinks {
    /**
     * Creates the codec for converting PipelineRunImpllinks from and to JSON.
     */
    implicit val decoder: Decoder[PipelineRunImpllinks] = deriveDecoder
    implicit val encoder: ObjectEncoder[PipelineRunImpllinks] = deriveEncoder
}
