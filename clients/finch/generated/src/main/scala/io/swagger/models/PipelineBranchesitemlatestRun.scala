package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._

/**
 * 
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
case class PipelineBranchesitemlatestRun(durationInMillis: Option[Int],
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

object PipelineBranchesitemlatestRun {
    /**
     * Creates the codec for converting PipelineBranchesitemlatestRun from and to JSON.
     */
    implicit val decoder: Decoder[PipelineBranchesitemlatestRun] = deriveDecoder
    implicit val encoder: ObjectEncoder[PipelineBranchesitemlatestRun] = deriveEncoder
}
