package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._
import io.swagger.models.GithubScmlinks

/**
 * 
 * @param _class 
 * @param _links 
 * @param credentialId 
 * @param id 
 * @param uri 
 */
case class GithubScm(_class: Option[String],
                _links: Option[GithubScmlinks],
                credentialId: Option[String],
                id: Option[String],
                uri: Option[String]
                )

object GithubScm {
    /**
     * Creates the codec for converting GithubScm from and to JSON.
     */
    implicit val decoder: Decoder[GithubScm] = deriveDecoder
    implicit val encoder: ObjectEncoder[GithubScm] = deriveEncoder
}
