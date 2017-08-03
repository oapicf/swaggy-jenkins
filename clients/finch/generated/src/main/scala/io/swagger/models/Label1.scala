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
case class Label1(_class: Option[String]
                )

object Label1 {
    /**
     * Creates the codec for converting Label1 from and to JSON.
     */
    implicit val decoder: Decoder[Label1] = deriveDecoder
    implicit val encoder: ObjectEncoder[Label1] = deriveEncoder
}
