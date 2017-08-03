package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._
import io.swagger.models.Link

/**
 * 
 * @param nodes 
 * @param log 
 * @param self 
 * @param actions 
 * @param steps 
 * @param _class 
 */
case class PipelineRunImpllinks(nodes: Option[Link],
                log: Option[Link],
                self: Option[Link],
                actions: Option[Link],
                steps: Option[Link],
                _class: Option[String]
                )

object PipelineRunImpllinks {
    /**
     * Creates the codec for converting PipelineRunImpllinks from and to JSON.
     */
    implicit val decoder: Decoder[PipelineRunImpllinks] = deriveDecoder
    implicit val encoder: ObjectEncoder[PipelineRunImpllinks] = deriveEncoder
}
