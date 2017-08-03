package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._
import io.swagger.models.GithubContent

/**
 * 
 * @param content 
 * @param _class 
 */
case class GithubFile(content: Option[GithubContent],
                _class: Option[String]
                )

object GithubFile {
    /**
     * Creates the codec for converting GithubFile from and to JSON.
     */
    implicit val decoder: Decoder[GithubFile] = deriveDecoder
    implicit val encoder: ObjectEncoder[GithubFile] = deriveEncoder
}
