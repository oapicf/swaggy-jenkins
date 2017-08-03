package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._
import io.swagger.models.Link

/**
 * 
 * @param repositories 
 * @param self 
 * @param _class 
 */
case class GithubOrganizationlinks(repositories: Option[Link],
                self: Option[Link],
                _class: Option[String]
                )

object GithubOrganizationlinks {
    /**
     * Creates the codec for converting GithubOrganizationlinks from and to JSON.
     */
    implicit val decoder: Decoder[GithubOrganizationlinks] = deriveDecoder
    implicit val encoder: ObjectEncoder[GithubOrganizationlinks] = deriveEncoder
}
