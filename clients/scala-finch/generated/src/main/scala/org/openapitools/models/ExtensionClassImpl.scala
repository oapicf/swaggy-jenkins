package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.ExtensionClassImpllinks
import scala.collection.immutable.Seq

/**
 * 
 * @param Underscoreclass 
 * @param Underscorelinks 
 * @param classes 
 */
case class ExtensionClassImpl(Underscoreclass: Option[String],
                Underscorelinks: Option[ExtensionClassImpllinks],
                classes: Option[Seq[String]]
                )

object ExtensionClassImpl {
    /**
     * Creates the codec for converting ExtensionClassImpl from and to JSON.
     */
    implicit val decoder: Decoder[ExtensionClassImpl] = deriveDecoder
    implicit val encoder: ObjectEncoder[ExtensionClassImpl] = deriveEncoder
}
