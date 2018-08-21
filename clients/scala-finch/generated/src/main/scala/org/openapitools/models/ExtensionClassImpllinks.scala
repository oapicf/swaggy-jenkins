package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.Link

/**
 * 
 * @param self 
 * @param Underscoreclass 
 */
case class ExtensionClassImpllinks(self: Option[Link],
                Underscoreclass: Option[String]
                )

object ExtensionClassImpllinks {
    /**
     * Creates the codec for converting ExtensionClassImpllinks from and to JSON.
     */
    implicit val decoder: Decoder[ExtensionClassImpllinks] = deriveDecoder
    implicit val encoder: ObjectEncoder[ExtensionClassImpllinks] = deriveEncoder
}
