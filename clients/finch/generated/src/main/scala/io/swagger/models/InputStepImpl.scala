package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._
import io.swagger.models.InputStepImpllinks
import io.swagger.models.StringParameterDefinition
import scala.collection.immutable.Seq

/**
 * 
 * @param _class 
 * @param _links 
 * @param id 
 * @param message 
 * @param ok 
 * @param parameters 
 * @param submitter 
 */
case class InputStepImpl(_class: Option[String],
                _links: Option[InputStepImpllinks],
                id: Option[String],
                message: Option[String],
                ok: Option[String],
                parameters: Option[Seq[StringParameterDefinition]],
                submitter: Option[String]
                )

object InputStepImpl {
    /**
     * Creates the codec for converting InputStepImpl from and to JSON.
     */
    implicit val decoder: Decoder[InputStepImpl] = deriveDecoder
    implicit val encoder: ObjectEncoder[InputStepImpl] = deriveEncoder
}
