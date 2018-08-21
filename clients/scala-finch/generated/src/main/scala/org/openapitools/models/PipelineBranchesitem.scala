package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.PipelineBranchesitemlatestRun
import org.openapitools.models.PipelineBranchesitempullRequest

/**
 * 
 * @param displayName 
 * @param estimatedDurationInMillis 
 * @param name 
 * @param weatherScore 
 * @param latestRun 
 * @param organization 
 * @param pullRequest 
 * @param totalNumberOfPullRequests 
 * @param Underscoreclass 
 */
case class PipelineBranchesitem(displayName: Option[String],
                estimatedDurationInMillis: Option[Int],
                name: Option[String],
                weatherScore: Option[Int],
                latestRun: Option[PipelineBranchesitemlatestRun],
                organization: Option[String],
                pullRequest: Option[PipelineBranchesitempullRequest],
                totalNumberOfPullRequests: Option[Int],
                Underscoreclass: Option[String]
                )

object PipelineBranchesitem {
    /**
     * Creates the codec for converting PipelineBranchesitem from and to JSON.
     */
    implicit val decoder: Decoder[PipelineBranchesitem] = deriveDecoder
    implicit val encoder: ObjectEncoder[PipelineBranchesitem] = deriveEncoder
}
