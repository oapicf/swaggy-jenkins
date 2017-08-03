package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._
import io.swagger.models.ArrayList
import io.swagger.models.PipelineRun
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
