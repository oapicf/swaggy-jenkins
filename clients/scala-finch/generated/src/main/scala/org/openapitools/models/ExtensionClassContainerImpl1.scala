package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.ExtensionClassContainerImpl1links
import org.openapitools.models.ExtensionClassContainerImpl1map

/**
 * 
 * @param Underscoreclass 
 * @param Underscorelinks 
 * @param map 
 */
case class ExtensionClassContainerImpl1(Underscoreclass: Option[String],
                Underscorelinks: Option[ExtensionClassContainerImpl1links],
                map: Option[ExtensionClassContainerImpl1map]
                )

object ExtensionClassContainerImpl1 {
    /**
     * Creates the codec for converting ExtensionClassContainerImpl1 from and to JSON.
     */
    implicit val decoder: Decoder[ExtensionClassContainerImpl1] = deriveDecoder
    implicit val encoder: ObjectEncoder[ExtensionClassContainerImpl1] = deriveEncoder
}
