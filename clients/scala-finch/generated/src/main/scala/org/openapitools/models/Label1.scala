package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param Underscoreclass 
 */
case class Label1(Underscoreclass: Option[String]
                )

object Label1 {
    /**
     * Creates the codec for converting Label1 from and to JSON.
     */
    implicit val decoder: Decoder[Label1] = deriveDecoder
    implicit val encoder: ObjectEncoder[Label1] = deriveEncoder
}
