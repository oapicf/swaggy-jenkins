package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._
import io.swagger.models.GithubOrganizationlinks

/**
 * 
 * @param _class 
 * @param _links 
 * @param jenkinsOrganizationPipeline 
 * @param name 
 */
case class GithubOrganization(_class: Option[String],
                _links: Option[GithubOrganizationlinks],
                jenkinsOrganizationPipeline: Option[Boolean],
                name: Option[String]
                )

object GithubOrganization {
    /**
     * Creates the codec for converting GithubOrganization from and to JSON.
     */
    implicit val decoder: Decoder[GithubOrganization] = deriveDecoder
    implicit val encoder: ObjectEncoder[GithubOrganization] = deriveEncoder
}
