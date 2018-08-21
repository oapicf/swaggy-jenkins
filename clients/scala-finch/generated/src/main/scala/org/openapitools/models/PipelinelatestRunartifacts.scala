package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param name 
 * @param size 
 * @param url 
 * @param Underscoreclass 
 */
case class PipelinelatestRunartifacts(name: Option[String],
                size: Option[Int],
                url: Option[String],
                Underscoreclass: Option[String]
                )

object PipelinelatestRunartifacts {
    /**
     * Creates the codec for converting PipelinelatestRunartifacts from and to JSON.
     */
    implicit val decoder: Decoder[PipelinelatestRunartifacts] = deriveDecoder
    implicit val encoder: ObjectEncoder[PipelinelatestRunartifacts] = deriveEncoder
}
