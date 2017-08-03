package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._
import io.swagger.models.GithubRepositorieslinks
import io.swagger.models.GithubRepository
import scala.collection.immutable.Seq

/**
 * 
 * @param _class 
 * @param _links 
 * @param items 
 * @param lastPage 
 * @param nextPage 
 * @param pageSize 
 */
case class GithubRepositories(_class: Option[String],
                _links: Option[GithubRepositorieslinks],
                items: Option[Seq[GithubRepository]],
                lastPage: Option[Int],
                nextPage: Option[Int],
                pageSize: Option[Int]
                )

object GithubRepositories {
    /**
     * Creates the codec for converting GithubRepositories from and to JSON.
     */
    implicit val decoder: Decoder[GithubRepositories] = deriveDecoder
    implicit val encoder: ObjectEncoder[GithubRepositories] = deriveEncoder
}
