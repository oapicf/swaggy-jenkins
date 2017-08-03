package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._
import io.swagger.models.ExtensionClassContainerImpl1links
import io.swagger.models.ExtensionClassContainerImpl1map

/**
 * 
 * @param _class 
 * @param _links 
 * @param map 
 */
case class ExtensionClassContainerImpl1(_class: Option[String],
                _links: Option[ExtensionClassContainerImpl1links],
                map: Option[ExtensionClassContainerImpl1map]
                )

object ExtensionClassContainerImpl1 {
    /**
     * Creates the codec for converting ExtensionClassContainerImpl1 from and to JSON.
     */
    implicit val decoder: Decoder[ExtensionClassContainerImpl1] = deriveDecoder
    implicit val encoder: ObjectEncoder[ExtensionClassContainerImpl1] = deriveEncoder
}
