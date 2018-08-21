package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.PipelineBranchesitempullRequestlinks

/**
 * 
 * @param Underscorelinks 
 * @param author 
 * @param id 
 * @param title 
 * @param url 
 * @param Underscoreclass 
 */
case class PipelineBranchesitempullRequest(Underscorelinks: Option[PipelineBranchesitempullRequestlinks],
                author: Option[String],
                id: Option[String],
                title: Option[String],
                url: Option[String],
                Underscoreclass: Option[String]
                )

object PipelineBranchesitempullRequest {
    /**
     * Creates the codec for converting PipelineBranchesitempullRequest from and to JSON.
     */
    implicit val decoder: Decoder[PipelineBranchesitempullRequest] = deriveDecoder
    implicit val encoder: ObjectEncoder[PipelineBranchesitempullRequest] = deriveEncoder
}
