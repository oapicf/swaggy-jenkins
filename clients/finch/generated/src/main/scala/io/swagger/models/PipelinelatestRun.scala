package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._
import io.swagger.models.PipelinelatestRunartifacts
import scala.collection.immutable.Seq

/**
 * 
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
 * @param _class 
 */
case class PipelinelatestRun(artifacts: Option[Seq[PipelinelatestRunartifacts]],
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
                commitId: Option[String],
                _class: Option[String]
                )

object PipelinelatestRun {
    /**
     * Creates the codec for converting PipelinelatestRun from and to JSON.
     */
    implicit val decoder: Decoder[PipelinelatestRun] = deriveDecoder
    implicit val encoder: ObjectEncoder[PipelinelatestRun] = deriveEncoder
}
