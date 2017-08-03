package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._

/**
 * 
 * @param _class 
 * @param name 
 * @param url 
 */
case class AllView(_class: Option[String],
                name: Option[String],
                url: Option[String]
                )

object AllView {
    /**
     * Creates the codec for converting AllView from and to JSON.
     */
    implicit val decoder: Decoder[AllView] = deriveDecoder
    implicit val encoder: ObjectEncoder[AllView] = deriveEncoder
}
