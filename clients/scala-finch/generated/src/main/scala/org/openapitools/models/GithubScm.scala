package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.GithubScmlinks

/**
 * 
 * @param Underscoreclass 
 * @param Underscorelinks 
 * @param credentialId 
 * @param id 
 * @param uri 
 */
case class GithubScm(Underscoreclass: Option[String],
                Underscorelinks: Option[GithubScmlinks],
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
