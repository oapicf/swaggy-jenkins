package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._

/**
 * 
 * @param name 
 * @param sha 
 * @param _class 
 * @param repo 
 * @param size 
 * @param owner 
 * @param path 
 * @param base64Data 
 */
case class GithubContent(name: Option[String],
                sha: Option[String],
                _class: Option[String],
                repo: Option[String],
                size: Option[Int],
                owner: Option[String],
                path: Option[String],
                base64Data: Option[String]
                )

object GithubContent {
    /**
     * Creates the codec for converting GithubContent from and to JSON.
     */
    implicit val decoder: Decoder[GithubContent] = deriveDecoder
    implicit val encoder: ObjectEncoder[GithubContent] = deriveEncoder
}
