package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.PipelineRunNodeedges
import scala.collection.immutable.Seq

/**
 * 
 * @param Underscoreclass 
 * @param displayName 
 * @param durationInMillis 
 * @param edges 
 * @param id 
 * @param result 
 * @param startTime 
 * @param state 
 */
case class PipelineRunNode(Underscoreclass: Option[String],
                displayName: Option[String],
                durationInMillis: Option[Int],
                edges: Option[Seq[PipelineRunNodeedges]],
                id: Option[String],
                result: Option[String],
                startTime: Option[String],
                state: Option[String]
                )

object PipelineRunNode {
    /**
     * Creates the codec for converting PipelineRunNode from and to JSON.
     */
    implicit val decoder: Decoder[PipelineRunNode] = deriveDecoder
    implicit val encoder: ObjectEncoder[PipelineRunNode] = deriveEncoder
}
