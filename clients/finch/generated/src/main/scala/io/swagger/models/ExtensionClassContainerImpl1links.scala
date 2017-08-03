package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._
import io.swagger.models.Link

/**
 * 
 * @param self 
 * @param _class 
 */
case class ExtensionClassContainerImpl1links(self: Option[Link],
                _class: Option[String]
                )

object ExtensionClassContainerImpl1links {
    /**
     * Creates the codec for converting ExtensionClassContainerImpl1links from and to JSON.
     */
    implicit val decoder: Decoder[ExtensionClassContainerImpl1links] = deriveDecoder
    implicit val encoder: ObjectEncoder[ExtensionClassContainerImpl1links] = deriveEncoder
}
