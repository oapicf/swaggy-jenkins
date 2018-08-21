package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.FreeStyleProject
import scala.collection.immutable.Seq

/**
 * 
 * @param Underscoreclass 
 * @param description 
 * @param jobs 
 * @param name 
 * @param url 
 */
case class ListView(Underscoreclass: Option[String],
                description: Option[String],
                jobs: Option[Seq[FreeStyleProject]],
                name: Option[String],
                url: Option[String]
                )

object ListView {
    /**
     * Creates the codec for converting ListView from and to JSON.
     */
    implicit val decoder: Decoder[ListView] = deriveDecoder
    implicit val encoder: ObjectEncoder[ListView] = deriveEncoder
}
