package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._

/**
 * 
 * @param _class 
 * @param crumb 
 * @param crumbRequestField 
 */
case class DefaultCrumbIssuer(_class: Option[String],
                crumb: Option[String],
                crumbRequestField: Option[String]
                )

object DefaultCrumbIssuer {
    /**
     * Creates the codec for converting DefaultCrumbIssuer from and to JSON.
     */
    implicit val decoder: Decoder[DefaultCrumbIssuer] = deriveDecoder
    implicit val encoder: ObjectEncoder[DefaultCrumbIssuer] = deriveEncoder
}
