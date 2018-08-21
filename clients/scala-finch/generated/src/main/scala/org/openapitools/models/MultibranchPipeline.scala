package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import scala.collection.immutable.Seq

/**
 * 
 * @param displayName 
 * @param estimatedDurationInMillis 
 * @param latestRun 
 * @param name 
 * @param organization 
 * @param weatherScore 
 * @param branchNames 
 * @param numberOfFailingBranches 
 * @param numberOfFailingPullRequests 
 * @param numberOfSuccessfulBranches 
 * @param numberOfSuccessfulPullRequests 
 * @param totalNumberOfBranches 
 * @param totalNumberOfPullRequests 
 * @param Underscoreclass 
 */
case class MultibranchPipeline(displayName: Option[String],
                estimatedDurationInMillis: Option[Int],
                latestRun: Option[String],
                name: Option[String],
                organization: Option[String],
                weatherScore: Option[Int],
                branchNames: Option[Seq[String]],
                numberOfFailingBranches: Option[Int],
                numberOfFailingPullRequests: Option[Int],
                numberOfSuccessfulBranches: Option[Int],
                numberOfSuccessfulPullRequests: Option[Int],
                totalNumberOfBranches: Option[Int],
                totalNumberOfPullRequests: Option[Int],
                Underscoreclass: Option[String]
                )

object MultibranchPipeline {
    /**
     * Creates the codec for converting MultibranchPipeline from and to JSON.
     */
    implicit val decoder: Decoder[MultibranchPipeline] = deriveDecoder
    implicit val encoder: ObjectEncoder[MultibranchPipeline] = deriveEncoder
}
