package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._
import io.swagger.models.PipelineBranchesitempullRequestlinks

/**
 * 
 * @param _links 
 * @param author 
 * @param id 
 * @param title 
 * @param url 
 * @param _class 
 */
case class PipelineBranchesitempullRequest(_links: Option[PipelineBranchesitempullRequestlinks],
                author: Option[String],
                id: Option[String],
                title: Option[String],
                url: Option[String],
                _class: Option[String]
                )

object PipelineBranchesitempullRequest {
    /**
     * Creates the codec for converting PipelineBranchesitempullRequest from and to JSON.
     */
    implicit val decoder: Decoder[PipelineBranchesitempullRequest] = deriveDecoder
    implicit val encoder: ObjectEncoder[PipelineBranchesitempullRequest] = deriveEncoder
}
