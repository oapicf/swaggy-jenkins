package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class HudsonMasterComputermonitorData (
  hudson.node_monitors.SwapSpaceMonitor: Option[SwapSpaceMonitorMemoryUsage2],
hudson.node_monitors.TemporarySpaceMonitor: Option[DiskSpaceMonitorDescriptorDiskSpace],
hudson.node_monitors.DiskSpaceMonitor: Option[DiskSpaceMonitorDescriptorDiskSpace],
hudson.node_monitors.ArchitectureMonitor: Option[String],
hudson.node_monitors.ResponseTimeMonitor: Option[ResponseTimeMonitorData],
hudson.node_monitors.ClockMonitor: Option[ClockDifference],
_class: Option[String]
)
