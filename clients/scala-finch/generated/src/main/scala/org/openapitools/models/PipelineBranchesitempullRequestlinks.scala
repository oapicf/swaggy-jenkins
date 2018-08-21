package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param self 
 * @param Underscoreclass 
 */
case class PipelineBranchesitempullRequestlinks(self: Option[String],
                Underscoreclass: Option[String]
                )

object PipelineBranchesitempullRequestlinks {
    /**
     * Creates the codec for converting PipelineBranchesitempullRequestlinks from and to JSON.
     */
    implicit val decoder: Decoder[PipelineBranchesitempullRequestlinks] = deriveDecoder
    implicit val encoder: ObjectEncoder[PipelineBranchesitempullRequestlinks] = deriveEncoder
}
