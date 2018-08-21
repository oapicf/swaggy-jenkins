package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.BranchImpllinks
import org.openapitools.models.BranchImplpermissions
import org.openapitools.models.PipelineRunImpl
import org.openapitools.models.StringParameterDefinition
import scala.collection.immutable.Seq

/**
 * 
 * @param Underscoreclass 
 * @param displayName 
 * @param estimatedDurationInMillis 
 * @param fullDisplayName 
 * @param fullName 
 * @param name 
 * @param organization 
 * @param parameters 
 * @param permissions 
 * @param weatherScore 
 * @param pullRequest 
 * @param Underscorelinks 
 * @param latestRun 
 */
case class BranchImpl(Underscoreclass: Option[String],
                displayName: Option[String],
                estimatedDurationInMillis: Option[Int],
                fullDisplayName: Option[String],
                fullName: Option[String],
                name: Option[String],
                organization: Option[String],
                parameters: Option[Seq[StringParameterDefinition]],
                permissions: Option[BranchImplpermissions],
                weatherScore: Option[Int],
                pullRequest: Option[String],
                Underscorelinks: Option[BranchImpllinks],
                latestRun: Option[PipelineRunImpl]
                )

object BranchImpl {
    /**
     * Creates the codec for converting BranchImpl from and to JSON.
     */
    implicit val decoder: Decoder[BranchImpl] = deriveDecoder
    implicit val encoder: ObjectEncoder[BranchImpl] = deriveEncoder
}
