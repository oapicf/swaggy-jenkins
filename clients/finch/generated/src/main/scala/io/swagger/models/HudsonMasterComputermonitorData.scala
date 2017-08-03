package io.swagger.models

import io.circe._
import io.finch.circe._
import io.circe.generic.semiauto._
import io.circe.java8.time._
import io.swagger._
import io.swagger.models.ClockDifference
import io.swagger.models.DiskSpaceMonitorDescriptorDiskSpace
import io.swagger.models.ResponseTimeMonitorData
import io.swagger.models.SwapSpaceMonitorMemoryUsage2

/**
 * 
 * @param hudson.node_monitors.SwapSpaceMonitor 
 * @param hudson.node_monitors.TemporarySpaceMonitor 
 * @param hudson.node_monitors.DiskSpaceMonitor 
 * @param hudson.node_monitors.ArchitectureMonitor 
 * @param hudson.node_monitors.ResponseTimeMonitor 
 * @param hudson.node_monitors.ClockMonitor 
 * @param _class 
 */
case class HudsonMasterComputermonitorData(hudson.node_monitors.SwapSpaceMonitor: Option[SwapSpaceMonitorMemoryUsage2],
                hudson.node_monitors.TemporarySpaceMonitor: Option[DiskSpaceMonitorDescriptorDiskSpace],
                hudson.node_monitors.DiskSpaceMonitor: Option[DiskSpaceMonitorDescriptorDiskSpace],
                hudson.node_monitors.ArchitectureMonitor: Option[String],
                hudson.node_monitors.ResponseTimeMonitor: Option[ResponseTimeMonitorData],
                hudson.node_monitors.ClockMonitor: Option[ClockDifference],
                _class: Option[String]
                )

object HudsonMasterComputermonitorData {
    /**
     * Creates the codec for converting HudsonMasterComputermonitorData from and to JSON.
     */
    implicit val decoder: Decoder[HudsonMasterComputermonitorData] = deriveDecoder
    implicit val encoder: ObjectEncoder[HudsonMasterComputermonitorData] = deriveEncoder
}
