package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.CauseAction
import org.openapitools.models.EmptyChangeLogSet
import scala.collection.immutable.Seq

/**
 * 
 * @param Underscoreclass 
 * @param number 
 * @param url 
 * @param actions 
 * @param building 
 * @param description 
 * @param displayName 
 * @param duration 
 * @param estimatedDuration 
 * @param executor 
 * @param fullDisplayName 
 * @param id 
 * @param keepLog 
 * @param queueId 
 * @param result 
 * @param timestamp 
 * @param builtOn 
 * @param changeSet 
 */
case class FreeStyleBuild(Underscoreclass: Option[String],
                number: Option[Int],
                url: Option[String],
                actions: Option[Seq[CauseAction]],
                building: Option[Boolean],
                description: Option[String],
                displayName: Option[String],
                duration: Option[Int],
                estimatedDuration: Option[Int],
                executor: Option[String],
                fullDisplayName: Option[String],
                id: Option[String],
                keepLog: Option[Boolean],
                queueId: Option[Int],
                result: Option[String],
                timestamp: Option[Int],
                builtOn: Option[String],
                changeSet: Option[EmptyChangeLogSet]
                )

object FreeStyleBuild {
    /**
     * Creates the codec for converting FreeStyleBuild from and to JSON.
     */
    implicit val decoder: Decoder[FreeStyleBuild] = deriveDecoder
    implicit val encoder: ObjectEncoder[FreeStyleBuild] = deriveEncoder
}
