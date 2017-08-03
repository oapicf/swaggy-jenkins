package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._

/**
 * 
 * @param id 
 * @param _class 
 */
case class PipelineRunNodeedges(id: Option[String],
                _class: Option[String]
                )

object PipelineRunNodeedges {
    /**
     * Creates the codec for converting PipelineRunNodeedges from and to JSON.
     */
    implicit val decoder: Decoder[PipelineRunNodeedges] = deriveDecoder
    implicit val encoder: ObjectEncoder[PipelineRunNodeedges] = deriveEncoder
}
