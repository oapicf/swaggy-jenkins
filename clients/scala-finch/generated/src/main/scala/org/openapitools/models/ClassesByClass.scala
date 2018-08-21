package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import scala.collection.immutable.Seq

/**
 * 
 * @param classes 
 * @param Underscoreclass 
 */
case class ClassesByClass(classes: Option[Seq[String]],
                Underscoreclass: Option[String]
                )

object ClassesByClass {
    /**
     * Creates the codec for converting ClassesByClass from and to JSON.
     */
    implicit val decoder: Decoder[ClassesByClass] = deriveDecoder
    implicit val encoder: ObjectEncoder[ClassesByClass] = deriveEncoder
}
