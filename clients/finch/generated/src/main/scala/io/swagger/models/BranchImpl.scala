package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._
import io.swagger.models.BranchImpllinks
import io.swagger.models.BranchImplpermissions
import io.swagger.models.PipelineRunImpl
import io.swagger.models.StringParameterDefinition
import scala.collection.immutable.Seq

/**
 * 
 * @param _class 
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
 * @param _links 
 * @param latestRun 
 */
case class BranchImpl(_class: Option[String],
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
                _links: Option[BranchImpllinks],
                latestRun: Option[PipelineRunImpl]
                )

object BranchImpl {
    /**
     * Creates the codec for converting BranchImpl from and to JSON.
     */
    implicit val decoder: Decoder[BranchImpl] = deriveDecoder
    implicit val encoder: ObjectEncoder[BranchImpl] = deriveEncoder
}
