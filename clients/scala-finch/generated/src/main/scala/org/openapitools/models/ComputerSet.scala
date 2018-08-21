package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.HudsonMasterComputer
import scala.collection.immutable.Seq

/**
 * 
 * @param Underscoreclass 
 * @param busyExecutors 
 * @param computer 
 * @param displayName 
 * @param totalExecutors 
 */
case class ComputerSet(Underscoreclass: Option[String],
                busyExecutors: Option[Int],
                computer: Option[Seq[HudsonMasterComputer]],
                displayName: Option[String],
                totalExecutors: Option[Int]
                )

object ComputerSet {
    /**
     * Creates the codec for converting ComputerSet from and to JSON.
     */
    implicit val decoder: Decoder[ComputerSet] = deriveDecoder
    implicit val encoder: ObjectEncoder[ComputerSet] = deriveEncoder
}
