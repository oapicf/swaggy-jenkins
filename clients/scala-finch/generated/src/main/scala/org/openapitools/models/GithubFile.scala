package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.GithubContent

/**
 * 
 * @param content 
 * @param Underscoreclass 
 */
case class GithubFile(content: Option[GithubContent],
                Underscoreclass: Option[String]
                )

object GithubFile {
    /**
     * Creates the codec for converting GithubFile from and to JSON.
     */
    implicit val decoder: Decoder[GithubFile] = deriveDecoder
    implicit val encoder: ObjectEncoder[GithubFile] = deriveEncoder
}
