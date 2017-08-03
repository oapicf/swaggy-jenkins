package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._
import io.swagger.models.StringParameterValue

/**
 * 
 * @param _class 
 * @param defaultParameterValue 
 * @param description 
 * @param name 
 * @param _type 
 */
case class StringParameterDefinition(_class: Option[String],
                defaultParameterValue: Option[StringParameterValue],
                description: Option[String],
                name: Option[String],
                _type: Option[String]
                )

object StringParameterDefinition {
    /**
     * Creates the codec for converting StringParameterDefinition from and to JSON.
     */
    implicit val decoder: Decoder[StringParameterDefinition] = deriveDecoder
    implicit val encoder: ObjectEncoder[StringParameterDefinition] = deriveEncoder
}
