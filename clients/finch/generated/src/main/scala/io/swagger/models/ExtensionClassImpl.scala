package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._
import io.swagger.models.ExtensionClassImpllinks
import scala.collection.immutable.Seq

/**
 * 
 * @param _class 
 * @param _links 
 * @param classes 
 */
case class ExtensionClassImpl(_class: Option[String],
                _links: Option[ExtensionClassImpllinks],
                classes: Option[Seq[String]]
                )

object ExtensionClassImpl {
    /**
     * Creates the codec for converting ExtensionClassImpl from and to JSON.
     */
    implicit val decoder: Decoder[ExtensionClassImpl] = deriveDecoder
    implicit val encoder: ObjectEncoder[ExtensionClassImpl] = deriveEncoder
}
