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
case class GithubRepositorieslinks(self: Option[Link],
                Underscoreclass: Option[String]
                )

object GithubRepositorieslinks {
    /**
     * Creates the codec for converting GithubRepositorieslinks from and to JSON.
     */
    implicit val decoder: Decoder[GithubRepositorieslinks] = deriveDecoder
    implicit val encoder: ObjectEncoder[GithubRepositorieslinks] = deriveEncoder
}
