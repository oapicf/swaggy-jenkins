package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param create 
 * @param read 
 * @param start 
 * @param stop 
 * @param Underscoreclass 
 */
case class BranchImplpermissions(create: Option[Boolean],
                read: Option[Boolean],
                start: Option[Boolean],
                stop: Option[Boolean],
                Underscoreclass: Option[String]
                )

object BranchImplpermissions {
    /**
     * Creates the codec for converting BranchImplpermissions from and to JSON.
     */
    implicit val decoder: Decoder[BranchImplpermissions] = deriveDecoder
    implicit val encoder: ObjectEncoder[BranchImplpermissions] = deriveEncoder
}
