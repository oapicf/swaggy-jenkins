package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._

/**
 * 
 * @param description 
 * @param iconClassName 
 * @param iconUrl 
 * @param score 
 * @param _class 
 */
case class FreeStyleProjecthealthReport(description: Option[String],
                iconClassName: Option[String],
                iconUrl: Option[String],
                score: Option[Int],
                _class: Option[String]
                )

object FreeStyleProjecthealthReport {
    /**
     * Creates the codec for converting FreeStyleProjecthealthReport from and to JSON.
     */
    implicit val decoder: Decoder[FreeStyleProjecthealthReport] = deriveDecoder
    implicit val encoder: ObjectEncoder[FreeStyleProjecthealthReport] = deriveEncoder
}
