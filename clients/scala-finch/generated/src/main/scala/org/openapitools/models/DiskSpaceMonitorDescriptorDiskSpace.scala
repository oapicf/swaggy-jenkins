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
 * @param path 
 * @param size 
 */
case class DiskSpaceMonitorDescriptorDiskSpace(Underscoreclass: Option[String],
                timestamp: Option[Int],
                path: Option[String],
                size: Option[Int]
                )

object DiskSpaceMonitorDescriptorDiskSpace {
    /**
     * Creates the codec for converting DiskSpaceMonitorDescriptorDiskSpace from and to JSON.
     */
    implicit val decoder: Decoder[DiskSpaceMonitorDescriptorDiskSpace] = deriveDecoder
    implicit val encoder: ObjectEncoder[DiskSpaceMonitorDescriptorDiskSpace] = deriveEncoder
}
