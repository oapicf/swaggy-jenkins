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
case class GithubRepositorieslinks(self: Option[Link],
                _class: Option[String]
                )

object GithubRepositorieslinks {
    /**
     * Creates the codec for converting GithubRepositorieslinks from and to JSON.
     */
    implicit val decoder: Decoder[GithubRepositorieslinks] = deriveDecoder
    implicit val encoder: ObjectEncoder[GithubRepositorieslinks] = deriveEncoder
}
