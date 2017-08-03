package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._

/**
 * 
 * @param _class 
 */
case class NullSCM(_class: Option[String]
                )

object NullSCM {
    /**
     * Creates the codec for converting NullSCM from and to JSON.
     */
    implicit val decoder: Decoder[NullSCM] = deriveDecoder
    implicit val encoder: ObjectEncoder[NullSCM] = deriveEncoder
}
