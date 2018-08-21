package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.ArrayList
import org.openapitools.models.Organisation
import scala.collection.immutable.Seq

/**
 * 
 */
case class Organisations()

object Organisations {
    /**
     * Creates the codec for converting Organisations from and to JSON.
     */
    implicit val decoder: Decoder[Organisations] = deriveDecoder
    implicit val encoder: ObjectEncoder[Organisations] = deriveEncoder
}
