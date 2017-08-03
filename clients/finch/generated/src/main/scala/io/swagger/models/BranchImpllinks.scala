package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._
import io.swagger.models.Link

/**
 * 
 * @param self 
 * @param actions 
 * @param runs 
 * @param queue 
 * @param _class 
 */
case class BranchImpllinks(self: Option[Link],
                actions: Option[Link],
                runs: Option[Link],
                queue: Option[Link],
                _class: Option[String]
                )

object BranchImpllinks {
    /**
     * Creates the codec for converting BranchImpllinks from and to JSON.
     */
    implicit val decoder: Decoder[BranchImpllinks] = deriveDecoder
    implicit val encoder: ObjectEncoder[BranchImpllinks] = deriveEncoder
}
