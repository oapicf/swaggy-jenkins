package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param Underscoreclass 
 * @param name 
 */
case class Organisation(Underscoreclass: Option[String],
                name: Option[String]
                )

object Organisation {
    /**
     * Creates the codec for converting Organisation from and to JSON.
     */
    implicit val decoder: Decoder[Organisation] = deriveDecoder
    implicit val encoder: ObjectEncoder[Organisation] = deriveEncoder
}
