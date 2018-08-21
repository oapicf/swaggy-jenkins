package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.PipelineImpllinks

/**
 * 
 * @param Underscoreclass 
 * @param displayName 
 * @param estimatedDurationInMillis 
 * @param fullName 
 * @param latestRun 
 * @param name 
 * @param organization 
 * @param weatherScore 
 * @param Underscorelinks 
 */
case class PipelineImpl(Underscoreclass: Option[String],
                displayName: Option[String],
                estimatedDurationInMillis: Option[Int],
                fullName: Option[String],
                latestRun: Option[String],
                name: Option[String],
                organization: Option[String],
                weatherScore: Option[Int],
                Underscorelinks: Option[PipelineImpllinks]
                )

object PipelineImpl {
    /**
     * Creates the codec for converting PipelineImpl from and to JSON.
     */
    implicit val decoder: Decoder[PipelineImpl] = deriveDecoder
    implicit val encoder: ObjectEncoder[PipelineImpl] = deriveEncoder
}
