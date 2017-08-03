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
 * @param path 
 * @param size 
 */
case class DiskSpaceMonitorDescriptorDiskSpace(_class: Option[String],
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
