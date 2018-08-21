package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.ArrayList
import org.openapitools.models.PipelineRun
import scala.collection.immutable.Seq

/**
 * 
 */
case class PipelineRuns()

object PipelineRuns {
    /**
     * Creates the codec for converting PipelineRuns from and to JSON.
     */
    implicit val decoder: Decoder[PipelineRuns] = deriveDecoder
    implicit val encoder: ObjectEncoder[PipelineRuns] = deriveEncoder
}
