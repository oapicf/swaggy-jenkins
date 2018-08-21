package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.ArrayList
import org.openapitools.models.PipelineActivity
import scala.collection.immutable.Seq

/**
 * 
 */
case class PipelineActivities()

object PipelineActivities {
    /**
     * Creates the codec for converting PipelineActivities from and to JSON.
     */
    implicit val decoder: Decoder[PipelineActivities] = deriveDecoder
    implicit val encoder: ObjectEncoder[PipelineActivities] = deriveEncoder
}
