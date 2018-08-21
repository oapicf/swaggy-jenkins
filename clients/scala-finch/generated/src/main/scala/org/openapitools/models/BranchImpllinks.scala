package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.Link

/**
 * 
 * @param self 
 * @param actions 
 * @param runs 
 * @param queue 
 * @param Underscoreclass 
 */
case class BranchImpllinks(self: Option[Link],
                actions: Option[Link],
                runs: Option[Link],
                queue: Option[Link],
                Underscoreclass: Option[String]
                )

object BranchImpllinks {
    /**
     * Creates the codec for converting BranchImpllinks from and to JSON.
     */
    implicit val decoder: Decoder[BranchImpllinks] = deriveDecoder
    implicit val encoder: ObjectEncoder[BranchImpllinks] = deriveEncoder
}
