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
case class PipelineActivityartifacts(name: Option[String],
                size: Option[Int],
                url: Option[String],
                Underscoreclass: Option[String]
                )

object PipelineActivityartifacts {
    /**
     * Creates the codec for converting PipelineActivityartifacts from and to JSON.
     */
    implicit val decoder: Decoder[PipelineActivityartifacts] = deriveDecoder
    implicit val encoder: ObjectEncoder[PipelineActivityartifacts] = deriveEncoder
}
