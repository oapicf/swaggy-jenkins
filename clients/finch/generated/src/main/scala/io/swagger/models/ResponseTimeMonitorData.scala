package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._

/**
 * 
 * @param _class 
 * @param timestamp 
 * @param average 
 */
case class ResponseTimeMonitorData(_class: Option[String],
                timestamp: Option[Int],
                average: Option[Int]
                )

object ResponseTimeMonitorData {
    /**
     * Creates the codec for converting ResponseTimeMonitorData from and to JSON.
     */
    implicit val decoder: Decoder[ResponseTimeMonitorData] = deriveDecoder
    implicit val encoder: ObjectEncoder[ResponseTimeMonitorData] = deriveEncoder
}
