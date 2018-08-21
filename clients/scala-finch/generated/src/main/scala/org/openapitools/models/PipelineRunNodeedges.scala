package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param id 
 * @param Underscoreclass 
 */
case class PipelineRunNodeedges(id: Option[String],
                Underscoreclass: Option[String]
                )

object PipelineRunNodeedges {
    /**
     * Creates the codec for converting PipelineRunNodeedges from and to JSON.
     */
    implicit val decoder: Decoder[PipelineRunNodeedges] = deriveDecoder
    implicit val encoder: ObjectEncoder[PipelineRunNodeedges] = deriveEncoder
}
