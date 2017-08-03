package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._
import io.swagger.models.PipelinelatestRun

/**
 * 
 * @param _class 
 * @param organization 
 * @param name 
 * @param displayName 
 * @param fullName 
 * @param weatherScore 
 * @param estimatedDurationInMillis 
 * @param latestRun 
 */
case class Pipeline(_class: Option[String],
                organization: Option[String],
                name: Option[String],
                displayName: Option[String],
                fullName: Option[String],
                weatherScore: Option[Int],
                estimatedDurationInMillis: Option[Int],
                latestRun: Option[PipelinelatestRun]
                )

object Pipeline {
    /**
     * Creates the codec for converting Pipeline from and to JSON.
     */
    implicit val decoder: Decoder[Pipeline] = deriveDecoder
    implicit val encoder: ObjectEncoder[Pipeline] = deriveEncoder
}
