package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._
import io.swagger.models.GithubRepositorylinks
import io.swagger.models.GithubRepositorypermissions

/**
 * 
 * @param _class 
 * @param _links 
 * @param defaultBranch 
 * @param description 
 * @param name 
 * @param permissions 
 * @param _private 
 * @param fullName 
 */
case class GithubRepository(_class: Option[String],
                _links: Option[GithubRepositorylinks],
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
