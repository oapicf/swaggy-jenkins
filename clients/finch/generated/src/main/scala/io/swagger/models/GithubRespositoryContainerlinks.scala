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
 * @param _class 
 */
case class GithubRespositoryContainerlinks(self: Option[Link],
                _class: Option[String]
                )

object GithubRespositoryContainerlinks {
    /**
     * Creates the codec for converting GithubRespositoryContainerlinks from and to JSON.
     */
    implicit val decoder: Decoder[GithubRespositoryContainerlinks] = deriveDecoder
    implicit val encoder: ObjectEncoder[GithubRespositoryContainerlinks] = deriveEncoder
}
