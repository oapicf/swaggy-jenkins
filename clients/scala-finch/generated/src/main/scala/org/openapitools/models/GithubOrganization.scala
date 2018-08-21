package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.GithubOrganizationlinks

/**
 * 
 * @param Underscoreclass 
 * @param Underscorelinks 
 * @param jenkinsOrganizationPipeline 
 * @param name 
 */
case class GithubOrganization(Underscoreclass: Option[String],
                Underscorelinks: Option[GithubOrganizationlinks],
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
