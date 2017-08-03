package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._

/**
 * 
 * @param admin 
 * @param push 
 * @param pull 
 * @param _class 
 */
case class GithubRepositorypermissions(admin: Option[Boolean],
                push: Option[Boolean],
                pull: Option[Boolean],
                _class: Option[String]
                )

object GithubRepositorypermissions {
    /**
     * Creates the codec for converting GithubRepositorypermissions from and to JSON.
     */
    implicit val decoder: Decoder[GithubRepositorypermissions] = deriveDecoder
    implicit val encoder: ObjectEncoder[GithubRepositorypermissions] = deriveEncoder
}
