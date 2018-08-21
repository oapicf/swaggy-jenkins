package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param Underscoreclass 
 * @param displayName 
 * @param durationInMillis 
 * @param id 
 * @param result 
 * @param startTime 
 */
case class GenericResource(Underscoreclass: Option[String],
                displayName: Option[String],
                durationInMillis: Option[Int],
                id: Option[String],
                result: Option[String],
                startTime: Option[String]
                )

object GenericResource {
    /**
     * Creates the codec for converting GenericResource from and to JSON.
     */
    implicit val decoder: Decoder[GenericResource] = deriveDecoder
    implicit val encoder: ObjectEncoder[GenericResource] = deriveEncoder
}
