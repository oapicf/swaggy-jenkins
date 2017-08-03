package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._

/**
 * 
 * @param _class 
 * @param displayName 
 * @param fullName 
 * @param name 
 * @param organization 
 * @param numberOfFolders 
 * @param numberOfPipelines 
 */
case class PipelineFolderImpl(_class: Option[String],
                displayName: Option[String],
                fullName: Option[String],
                name: Option[String],
                organization: Option[String],
                numberOfFolders: Option[Int],
                numberOfPipelines: Option[Int]
                )

object PipelineFolderImpl {
    /**
     * Creates the codec for converting PipelineFolderImpl from and to JSON.
     */
    implicit val decoder: Decoder[PipelineFolderImpl] = deriveDecoder
    implicit val encoder: ObjectEncoder[PipelineFolderImpl] = deriveEncoder
}
