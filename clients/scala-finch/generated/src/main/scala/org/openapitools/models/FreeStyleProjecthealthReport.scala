package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param description 
 * @param iconClassName 
 * @param iconUrl 
 * @param score 
 * @param Underscoreclass 
 */
case class FreeStyleProjecthealthReport(description: Option[String],
                iconClassName: Option[String],
                iconUrl: Option[String],
                score: Option[Int],
                Underscoreclass: Option[String]
                )

object FreeStyleProjecthealthReport {
    /**
     * Creates the codec for converting FreeStyleProjecthealthReport from and to JSON.
     */
    implicit val decoder: Decoder[FreeStyleProjecthealthReport] = deriveDecoder
    implicit val encoder: ObjectEncoder[FreeStyleProjecthealthReport] = deriveEncoder
}
