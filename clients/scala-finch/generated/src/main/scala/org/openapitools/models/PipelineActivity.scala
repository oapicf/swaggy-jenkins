package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.PipelineActivityartifacts
import scala.collection.immutable.Seq

/**
 * 
 * @param Underscoreclass 
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
case class PipelineActivity(Underscoreclass: Option[String],
                artifacts: Option[Seq[PipelineActivityartifacts]],
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

object PipelineActivity {
    /**
     * Creates the codec for converting PipelineActivity from and to JSON.
     */
    implicit val decoder: Decoder[PipelineActivity] = deriveDecoder
    implicit val encoder: ObjectEncoder[PipelineActivity] = deriveEncoder
}
