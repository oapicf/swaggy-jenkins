package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._
import io.swagger.models.HudsonMasterComputerexecutors
import io.swagger.models.HudsonMasterComputermonitorData
import io.swagger.models.Label1
import scala.collection.immutable.Seq

/**
 * 
 * @param _class 
 * @param displayName 
 * @param executors 
 * @param icon 
 * @param iconClassName 
 * @param idle 
 * @param jnlpAgent 
 * @param launchSupported 
 * @param loadStatistics 
 * @param manualLaunchAllowed 
 * @param monitorData 
 * @param numExecutors 
 * @param offline 
 * @param offlineCause 
 * @param offlineCauseReason 
 * @param temporarilyOffline 
 */
case class HudsonMasterComputer(_class: Option[String],
                displayName: Option[String],
                executors: Option[Seq[HudsonMasterComputerexecutors]],
                icon: Option[String],
                iconClassName: Option[String],
                idle: Option[Boolean],
                jnlpAgent: Option[Boolean],
                launchSupported: Option[Boolean],
                loadStatistics: Option[Label1],
                manualLaunchAllowed: Option[Boolean],
                monitorData: Option[HudsonMasterComputermonitorData],
                numExecutors: Option[Int],
                offline: Option[Boolean],
                offlineCause: Option[String],
                offlineCauseReason: Option[String],
                temporarilyOffline: Option[Boolean]
                )

object HudsonMasterComputer {
    /**
     * Creates the codec for converting HudsonMasterComputer from and to JSON.
     */
    implicit val decoder: Decoder[HudsonMasterComputer] = deriveDecoder
    implicit val encoder: ObjectEncoder[HudsonMasterComputer] = deriveEncoder
}
