package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._

/**
 * 
 * @param Underscoreclass 
 * @param availablePhysicalMemory 
 * @param availableSwapSpace 
 * @param totalPhysicalMemory 
 * @param totalSwapSpace 
 */
case class SwapSpaceMonitorMemoryUsage2(Underscoreclass: Option[String],
                availablePhysicalMemory: Option[Int],
                availableSwapSpace: Option[Int],
                totalPhysicalMemory: Option[Int],
                totalSwapSpace: Option[Int]
                )

object SwapSpaceMonitorMemoryUsage2 {
    /**
     * Creates the codec for converting SwapSpaceMonitorMemoryUsage2 from and to JSON.
     */
    implicit val decoder: Decoder[SwapSpaceMonitorMemoryUsage2] = deriveDecoder
    implicit val encoder: ObjectEncoder[SwapSpaceMonitorMemoryUsage2] = deriveEncoder
}
