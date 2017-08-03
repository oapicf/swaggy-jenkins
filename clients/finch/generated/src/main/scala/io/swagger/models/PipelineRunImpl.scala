package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._
import io.swagger.models.PipelineRunImpllinks

/**
 * 
 * @param _class 
 * @param _links 
 * @param durationInMillis 
 * @param enQueueTime 
 * @param endTime 
 * @param estimatedDurationInMillis 
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
case class PipelineRunImpl(_class: Option[String],
                _links: Option[PipelineRunImpllinks],
                durationInMillis: Option[Int],
                enQueueTime: Option[String],
                endTime: Option[String],
                estimatedDurationInMillis: Option[Int],
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

object PipelineRunImpl {
    /**
     * Creates the codec for converting PipelineRunImpl from and to JSON.
     */
    implicit val decoder: Decoder[PipelineRunImpl] = deriveDecoder
    implicit val encoder: ObjectEncoder[PipelineRunImpl] = deriveEncoder
}
