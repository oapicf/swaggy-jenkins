package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param Underscoreclass 
 * @param kind 
 */
case class EmptyChangeLogSet(Underscoreclass: Option[String],
                kind: Option[String]
                )

object EmptyChangeLogSet {
    /**
     * Creates the codec for converting EmptyChangeLogSet from and to JSON.
     */
    implicit val decoder: Decoder[EmptyChangeLogSet] = deriveDecoder
    implicit val encoder: ObjectEncoder[EmptyChangeLogSet] = deriveEncoder
}
