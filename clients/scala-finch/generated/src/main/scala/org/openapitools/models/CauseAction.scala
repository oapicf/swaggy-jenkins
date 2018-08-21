package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.CauseUserIdCause
import scala.collection.immutable.Seq

/**
 * 
 * @param Underscoreclass 
 * @param causes 
 */
case class CauseAction(Underscoreclass: Option[String],
                causes: Option[Seq[CauseUserIdCause]]
                )

object CauseAction {
    /**
     * Creates the codec for converting CauseAction from and to JSON.
     */
    implicit val decoder: Decoder[CauseAction] = deriveDecoder
    implicit val encoder: ObjectEncoder[CauseAction] = deriveEncoder
}
