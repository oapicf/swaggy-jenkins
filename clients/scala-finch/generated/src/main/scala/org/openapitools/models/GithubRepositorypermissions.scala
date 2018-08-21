package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param admin 
 * @param push 
 * @param pull 
 * @param Underscoreclass 
 */
case class GithubRepositorypermissions(admin: Option[Boolean],
                push: Option[Boolean],
                pull: Option[Boolean],
                Underscoreclass: Option[String]
                )

object GithubRepositorypermissions {
    /**
     * Creates the codec for converting GithubRepositorypermissions from and to JSON.
     */
    implicit val decoder: Decoder[GithubRepositorypermissions] = deriveDecoder
    implicit val encoder: ObjectEncoder[GithubRepositorypermissions] = deriveEncoder
}
