package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._
import io.swagger.models.PipelineRunartifacts
import scala.collection.immutable.Seq

/**
 * 
 * @param _class 
 * @param artifacts 
 * @param durationInMillis 
 * @param estimatedDurationInMillis 
 * @param enQueueTime 
 * @param endTime 
 * @param id 
 * @param organization 
 * @param pipeline 
 * @param result 
 * @param runSummary 
 * @param startTime 
 * @param state 
 * @param _type 
 * @param commitId 
 */
case class PipelineRun(_class: Option[String],
                artifacts: Option[Seq[PipelineRunartifacts]],
                durationInMillis: Option[Int],
                estimatedDurationInMillis: Option[Int],
                enQueueTime: Option[String],
                endTime: Option[String],
                id: Option[String],
                organization: Option[String],
                pipeline: Option[String],
                result: Option[String],
                runSummary: Option[String],
                startTime: Option[String],
                state: Option[String],
                _type: Option[String],
                commitId: Option[String]
                )

object PipelineRun {
    /**
     * Creates the codec for converting PipelineRun from and to JSON.
     */
    implicit val decoder: Decoder[PipelineRun] = deriveDecoder
    implicit val encoder: ObjectEncoder[PipelineRun] = deriveEncoder
}
