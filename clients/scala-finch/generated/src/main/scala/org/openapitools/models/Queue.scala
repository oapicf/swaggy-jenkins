package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.QueueBlockedItem
import scala.collection.immutable.Seq

/**
 * 
 * @param Underscoreclass 
 * @param items 
 */
case class Queue(Underscoreclass: Option[String],
                items: Option[Seq[QueueBlockedItem]]
                )

object Queue {
    /**
     * Creates the codec for converting Queue from and to JSON.
     */
    implicit val decoder: Decoder[Queue] = deriveDecoder
    implicit val encoder: ObjectEncoder[Queue] = deriveEncoder
}
