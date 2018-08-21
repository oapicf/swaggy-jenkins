package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.ArrayList
import org.openapitools.models.User
import scala.collection.immutable.Seq

/**
 * 
 */
case class Users()

object Users {
    /**
     * Creates the codec for converting Users from and to JSON.
     */
    implicit val decoder: Decoder[Users] = deriveDecoder
    implicit val encoder: ObjectEncoder[Users] = deriveEncoder
}
