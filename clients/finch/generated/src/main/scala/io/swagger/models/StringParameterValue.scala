package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._

/**
 * 
 * @param _class 
 * @param name 
 * @param value 
 */
case class StringParameterValue(_class: Option[String],
                name: Option[String],
                value: Option[String]
                )

object StringParameterValue {
    /**
     * Creates the codec for converting StringParameterValue from and to JSON.
     */
    implicit val decoder: Decoder[StringParameterValue] = deriveDecoder
    implicit val encoder: ObjectEncoder[StringParameterValue] = deriveEncoder
}
