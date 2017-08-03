package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._
import io.swagger.models.Link

/**
 * 
 * @param runs 
 * @param self 
 * @param queue 
 * @param actions 
 * @param _class 
 */
case class PipelineImpllinks(runs: Option[Link],
                self: Option[Link],
                queue: Option[Link],
                actions: Option[Link],
                _class: Option[String]
                )

object PipelineImpllinks {
    /**
     * Creates the codec for converting PipelineImpllinks from and to JSON.
     */
    implicit val decoder: Decoder[PipelineImpllinks] = deriveDecoder
    implicit val encoder: ObjectEncoder[PipelineImpllinks] = deriveEncoder
}
