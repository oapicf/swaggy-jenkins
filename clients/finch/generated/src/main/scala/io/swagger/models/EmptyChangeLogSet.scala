package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._

/**
 * 
 * @param _class 
 * @param kind 
 */
case class EmptyChangeLogSet(_class: Option[String],
                kind: Option[String]
                )

object EmptyChangeLogSet {
    /**
     * Creates the codec for converting EmptyChangeLogSet from and to JSON.
     */
    implicit val decoder: Decoder[EmptyChangeLogSet] = deriveDecoder
    implicit val encoder: ObjectEncoder[EmptyChangeLogSet] = deriveEncoder
}
