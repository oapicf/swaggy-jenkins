package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.InputStepImpl
import org.openapitools.models.PipelineStepImpllinks

/**
 * 
 * @param Underscoreclass 
 * @param Underscorelinks 
 * @param displayName 
 * @param durationInMillis 
 * @param id 
 * @param input 
 * @param result 
 * @param startTime 
 * @param state 
 */
case class PipelineStepImpl(Underscoreclass: Option[String],
                Underscorelinks: Option[PipelineStepImpllinks],
                displayName: Option[String],
                durationInMillis: Option[Int],
                id: Option[String],
                input: Option[InputStepImpl],
                result: Option[String],
                startTime: Option[String],
                state: Option[String]
                )

object PipelineStepImpl {
    /**
     * Creates the codec for converting PipelineStepImpl from and to JSON.
     */
    implicit val decoder: Decoder[PipelineStepImpl] = deriveDecoder
    implicit val encoder: ObjectEncoder[PipelineStepImpl] = deriveEncoder
}
