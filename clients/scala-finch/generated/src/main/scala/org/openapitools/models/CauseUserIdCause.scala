package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param Underscoreclass 
 * @param shortDescription 
 * @param userId 
 * @param userName 
 */
case class CauseUserIdCause(Underscoreclass: Option[String],
                shortDescription: Option[String],
                userId: Option[String],
                userName: Option[String]
                )

object CauseUserIdCause {
    /**
     * Creates the codec for converting CauseUserIdCause from and to JSON.
     */
    implicit val decoder: Decoder[CauseUserIdCause] = deriveDecoder
    implicit val encoder: ObjectEncoder[CauseUserIdCause] = deriveEncoder
}
