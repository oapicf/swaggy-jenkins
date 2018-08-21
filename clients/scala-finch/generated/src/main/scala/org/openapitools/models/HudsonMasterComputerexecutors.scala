package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.FreeStyleBuild

/**
 * 
 * @param currentExecutable 
 * @param idle 
 * @param likelyStuck 
 * @param number 
 * @param progress 
 * @param Underscoreclass 
 */
case class HudsonMasterComputerexecutors(currentExecutable: Option[FreeStyleBuild],
                idle: Option[Boolean],
                likelyStuck: Option[Boolean],
                number: Option[Int],
                progress: Option[Int],
                Underscoreclass: Option[String]
                )

object HudsonMasterComputerexecutors {
    /**
     * Creates the codec for converting HudsonMasterComputerexecutors from and to JSON.
     */
    implicit val decoder: Decoder[HudsonMasterComputerexecutors] = deriveDecoder
    implicit val encoder: ObjectEncoder[HudsonMasterComputerexecutors] = deriveEncoder
}
