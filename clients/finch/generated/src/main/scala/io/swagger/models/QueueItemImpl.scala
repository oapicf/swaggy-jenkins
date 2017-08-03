package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._

/**
 * 
 * @param _class 
 * @param expectedBuildNumber 
 * @param id 
 * @param pipeline 
 * @param queuedTime 
 */
case class QueueItemImpl(_class: Option[String],
                expectedBuildNumber: Option[Int],
                id: Option[String],
                pipeline: Option[String],
                queuedTime: Option[Int]
                )

object QueueItemImpl {
    /**
     * Creates the codec for converting QueueItemImpl from and to JSON.
     */
    implicit val decoder: Decoder[QueueItemImpl] = deriveDecoder
    implicit val encoder: ObjectEncoder[QueueItemImpl] = deriveEncoder
}
