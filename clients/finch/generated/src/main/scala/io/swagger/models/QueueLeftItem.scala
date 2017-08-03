package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._
import io.swagger.models.CauseAction
import io.swagger.models.FreeStyleBuild
import io.swagger.models.FreeStyleProject
import scala.collection.immutable.Seq

/**
 * 
 * @param _class 
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
 * @param cancelled 
 * @param executable 
 */
case class QueueLeftItem(_class: Option[String],
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
                cancelled: Option[Boolean],
                executable: Option[FreeStyleBuild]
                )

object QueueLeftItem {
    /**
     * Creates the codec for converting QueueLeftItem from and to JSON.
     */
    implicit val decoder: Decoder[QueueLeftItem] = deriveDecoder
    implicit val encoder: ObjectEncoder[QueueLeftItem] = deriveEncoder
}
