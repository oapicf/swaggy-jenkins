package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._
import io.swagger.models.QueueBlockedItem
import scala.collection.immutable.Seq

/**
 * 
 * @param _class 
 * @param items 
 */
case class Queue(_class: Option[String],
                items: Option[Seq[QueueBlockedItem]]
                )

object Queue {
    /**
     * Creates the codec for converting Queue from and to JSON.
     */
    implicit val decoder: Decoder[Queue] = deriveDecoder
    implicit val encoder: ObjectEncoder[Queue] = deriveEncoder
}
