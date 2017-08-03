package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._
import io.swagger.models.ArrayList
import io.swagger.models.Organisation
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
