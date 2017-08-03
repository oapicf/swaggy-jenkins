package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._

/**
 * 
 * @param _class 
 * @param href 
 */
case class Link(_class: Option[String],
                href: Option[String]
                )

object Link {
    /**
     * Creates the codec for converting Link from and to JSON.
     */
    implicit val decoder: Decoder[Link] = deriveDecoder
    implicit val encoder: ObjectEncoder[Link] = deriveEncoder
}
