package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.GithubRepositorylinks
import org.openapitools.models.GithubRepositorypermissions

/**
 * 
 * @param Underscoreclass 
 * @param Underscorelinks 
 * @param defaultBranch 
 * @param description 
 * @param name 
 * @param permissions 
 * @param _private 
 * @param fullName 
 */
case class GithubRepository(Underscoreclass: Option[String],
                Underscorelinks: Option[GithubRepositorylinks],
                defaultBranch: Option[String],
                description: Option[String],
                name: Option[String],
                permissions: Option[GithubRepositorypermissions],
                _private: Option[Boolean],
                fullName: Option[String]
                )

object GithubRepository {
    /**
     * Creates the codec for converting GithubRepository from and to JSON.
     */
    implicit val decoder: Decoder[GithubRepository] = deriveDecoder
    implicit val encoder: ObjectEncoder[GithubRepository] = deriveEncoder
}
