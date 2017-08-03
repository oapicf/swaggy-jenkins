package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._
import io.swagger.models.AllView
import io.swagger.models.FreeStyleProject
import io.swagger.models.HudsonassignedLabels
import io.swagger.models.UnlabeledLoadStatistics
import scala.collection.immutable.Seq

/**
 * 
 * @param _class 
 * @param assignedLabels 
 * @param mode 
 * @param nodeDescription 
 * @param nodeName 
 * @param numExecutors 
 * @param description 
 * @param jobs 
 * @param primaryView 
 * @param quietingDown 
 * @param slaveAgentPort 
 * @param unlabeledLoad 
 * @param useCrumbs 
 * @param useSecurity 
 * @param views 
 */
case class Hudson(_class: Option[String],
                assignedLabels: Option[Seq[HudsonassignedLabels]],
                mode: Option[String],
                nodeDescription: Option[String],
                nodeName: Option[String],
                numExecutors: Option[Int],
                description: Option[String],
                jobs: Option[Seq[FreeStyleProject]],
                primaryView: Option[AllView],
                quietingDown: Option[Boolean],
                slaveAgentPort: Option[Int],
                unlabeledLoad: Option[UnlabeledLoadStatistics],
                useCrumbs: Option[Boolean],
                useSecurity: Option[Boolean],
                views: Option[Seq[AllView]]
                )

object Hudson {
    /**
     * Creates the codec for converting Hudson from and to JSON.
     */
    implicit val decoder: Decoder[Hudson] = deriveDecoder
    implicit val encoder: ObjectEncoder[Hudson] = deriveEncoder
}
