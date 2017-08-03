package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._
import io.swagger.models.HudsonMasterComputer
import scala.collection.immutable.Seq

/**
 * 
 * @param _class 
 * @param busyExecutors 
 * @param computer 
 * @param displayName 
 * @param totalExecutors 
 */
case class ComputerSet(_class: Option[String],
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
