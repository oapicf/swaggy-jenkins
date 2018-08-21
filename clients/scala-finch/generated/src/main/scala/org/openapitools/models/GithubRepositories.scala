package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.GithubRepositorieslinks
import org.openapitools.models.GithubRepository
import scala.collection.immutable.Seq

/**
 * 
 * @param Underscoreclass 
 * @param Underscorelinks 
 * @param items 
 * @param lastPage 
 * @param nextPage 
 * @param pageSize 
 */
case class GithubRepositories(Underscoreclass: Option[String],
                Underscorelinks: Option[GithubRepositorieslinks],
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
