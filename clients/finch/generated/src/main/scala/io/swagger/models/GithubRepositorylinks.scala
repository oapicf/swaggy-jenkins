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
case class GithubRepositorylinks(self: Option[Link],
                _class: Option[String]
                )

object GithubRepositorylinks {
    /**
     * Creates the codec for converting GithubRepositorylinks from and to JSON.
     */
    implicit val decoder: Decoder[GithubRepositorylinks] = deriveDecoder
    implicit val encoder: ObjectEncoder[GithubRepositorylinks] = deriveEncoder
}
