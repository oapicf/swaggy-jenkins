package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param Underscoreclass 
 * @param timestamp 
 * @param average 
 */
case class ResponseTimeMonitorData(Underscoreclass: Option[String],
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
