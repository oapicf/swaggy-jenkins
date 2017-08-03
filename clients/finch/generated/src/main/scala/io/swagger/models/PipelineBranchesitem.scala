package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._
import io.swagger.models.PipelineBranchesitemlatestRun
import io.swagger.models.PipelineBranchesitempullRequest

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
 * @param _class 
 */
case class PipelineBranchesitem(displayName: Option[String],
                estimatedDurationInMillis: Option[Int],
                name: Option[String],
                weatherScore: Option[Int],
                latestRun: Option[PipelineBranchesitemlatestRun],
                organization: Option[String],
                pullRequest: Option[PipelineBranchesitempullRequest],
                totalNumberOfPullRequests: Option[Int],
                _class: Option[String]
                )

object PipelineBranchesitem {
    /**
     * Creates the codec for converting PipelineBranchesitem from and to JSON.
     */
    implicit val decoder: Decoder[PipelineBranchesitem] = deriveDecoder
    implicit val encoder: ObjectEncoder[PipelineBranchesitem] = deriveEncoder
}
