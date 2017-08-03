package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._
import io.swagger.models.GithubRepositories
import io.swagger.models.GithubRespositoryContainerlinks

/**
 * 
 * @param _class 
 * @param _links 
 * @param repositories 
 */
case class GithubRespositoryContainer(_class: Option[String],
                _links: Option[GithubRespositoryContainerlinks],
                repositories: Option[GithubRepositories]
                )

object GithubRespositoryContainer {
    /**
     * Creates the codec for converting GithubRespositoryContainer from and to JSON.
     */
    implicit val decoder: Decoder[GithubRespositoryContainer] = deriveDecoder
    implicit val encoder: ObjectEncoder[GithubRespositoryContainer] = deriveEncoder
}
