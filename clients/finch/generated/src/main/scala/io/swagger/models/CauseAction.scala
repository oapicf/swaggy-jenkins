package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._
import io.swagger.models.CauseUserIdCause
import scala.collection.immutable.Seq

/**
 * 
 * @param _class 
 * @param causes 
 */
case class CauseAction(_class: Option[String],
                causes: Option[Seq[CauseUserIdCause]]
                )

object CauseAction {
    /**
     * Creates the codec for converting CauseAction from and to JSON.
     */
    implicit val decoder: Decoder[CauseAction] = deriveDecoder
    implicit val encoder: ObjectEncoder[CauseAction] = deriveEncoder
}
