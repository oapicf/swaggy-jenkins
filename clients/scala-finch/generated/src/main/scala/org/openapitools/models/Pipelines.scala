package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.ArrayList
import org.openapitools.models.Pipeline
import scala.collection.immutable.Seq

/**
 * 
 */
case class Pipelines()

object Pipelines {
    /**
     * Creates the codec for converting Pipelines from and to JSON.
     */
    implicit val decoder: Decoder[Pipelines] = deriveDecoder
    implicit val encoder: ObjectEncoder[Pipelines] = deriveEncoder
}
