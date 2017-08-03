package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._

/**
 * 
 * @param self 
 * @param _class 
 */
case class PipelineBranchesitempullRequestlinks(self: Option[String],
                _class: Option[String]
                )

object PipelineBranchesitempullRequestlinks {
    /**
     * Creates the codec for converting PipelineBranchesitempullRequestlinks from and to JSON.
     */
    implicit val decoder: Decoder[PipelineBranchesitempullRequestlinks] = deriveDecoder
    implicit val encoder: ObjectEncoder[PipelineBranchesitempullRequestlinks] = deriveEncoder
}
