package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.CauseAction
import org.openapitools.models.FreeStyleProject
import scala.collection.immutable.Seq

/**
 * 
 * @param Underscoreclass 
 * @param actions 
 * @param blocked 
 * @param buildable 
 * @param id 
 * @param inQueueSince 
 * @param params 
 * @param stuck 
 * @param task 
 * @param url 
 * @param why 
 * @param buildableStartMilliseconds 
 */
case class QueueBlockedItem(Underscoreclass: Option[String],
                actions: Option[Seq[CauseAction]],
                blocked: Option[Boolean],
                buildable: Option[Boolean],
                id: Option[Int],
                inQueueSince: Option[Int],
                params: Option[String],
                stuck: Option[Boolean],
                task: Option[FreeStyleProject],
                url: Option[String],
                why: Option[String],
                buildableStartMilliseconds: Option[Int]
                )

object QueueBlockedItem {
    /**
     * Creates the codec for converting QueueBlockedItem from and to JSON.
     */
    implicit val decoder: Decoder[QueueBlockedItem] = deriveDecoder
    implicit val encoder: ObjectEncoder[QueueBlockedItem] = deriveEncoder
}
