package org.openapitools.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import org.openapitools._
import org.openapitools.models.ClockDifference
import org.openapitools.models.DiskSpaceMonitorDescriptorDiskSpace
import org.openapitools.models.ResponseTimeMonitorData
import org.openapitools.models.SwapSpaceMonitorMemoryUsage2

/**
 * 
 * @param hudsonPeriodnodeUnderscoremonitorsPeriodSwapSpaceMonitor 
 * @param hudsonPeriodnodeUnderscoremonitorsPeriodTemporarySpaceMonitor 
 * @param hudsonPeriodnodeUnderscoremonitorsPeriodDiskSpaceMonitor 
 * @param hudsonPeriodnodeUnderscoremonitorsPeriodArchitectureMonitor 
 * @param hudsonPeriodnodeUnderscoremonitorsPeriodResponseTimeMonitor 
 * @param hudsonPeriodnodeUnderscoremonitorsPeriodClockMonitor 
 * @param Underscoreclass 
 */
case class HudsonMasterComputermonitorData(hudsonPeriodnodeUnderscoremonitorsPeriodSwapSpaceMonitor: Option[SwapSpaceMonitorMemoryUsage2],
                hudsonPeriodnodeUnderscoremonitorsPeriodTemporarySpaceMonitor: Option[DiskSpaceMonitorDescriptorDiskSpace],
                hudsonPeriodnodeUnderscoremonitorsPeriodDiskSpaceMonitor: Option[DiskSpaceMonitorDescriptorDiskSpace],
                hudsonPeriodnodeUnderscoremonitorsPeriodArchitectureMonitor: Option[String],
                hudsonPeriodnodeUnderscoremonitorsPeriodResponseTimeMonitor: Option[ResponseTimeMonitorData],
                hudsonPeriodnodeUnderscoremonitorsPeriodClockMonitor: Option[ClockDifference],
                Underscoreclass: Option[String]
                )

object HudsonMasterComputermonitorData {
    /**
     * Creates the codec for converting HudsonMasterComputermonitorData from and to JSON.
     */
    implicit val decoder: Decoder[HudsonMasterComputermonitorData] = deriveDecoder
    implicit val encoder: ObjectEncoder[HudsonMasterComputermonitorData] = deriveEncoder
}
