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
 * @param Underscoreclass 
 */
case class GithubRespositoryContainerlinks(self: Option[Link],
                Underscoreclass: Option[String]
                )

object GithubRespositoryContainerlinks {
    /**
     * Creates the codec for converting GithubRespositoryContainerlinks from and to JSON.
     */
    implicit val decoder: Decoder[GithubRespositoryContainerlinks] = deriveDecoder
    implicit val encoder: ObjectEncoder[GithubRespositoryContainerlinks] = deriveEncoder
}
