package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.GithubRepositories
import org.openapitools.models.GithubRespositoryContainerlinks

/**
 * 
 * @param Underscoreclass 
 * @param Underscorelinks 
 * @param repositories 
 */
case class GithubRespositoryContainer(Underscoreclass: Option[String],
                Underscorelinks: Option[GithubRespositoryContainerlinks],
                repositories: Option[GithubRepositories]
                )

object GithubRespositoryContainer {
    /**
     * Creates the codec for converting GithubRespositoryContainer from and to JSON.
     */
    implicit val decoder: Decoder[GithubRespositoryContainer] = deriveDecoder
    implicit val encoder: ObjectEncoder[GithubRespositoryContainer] = deriveEncoder
}
