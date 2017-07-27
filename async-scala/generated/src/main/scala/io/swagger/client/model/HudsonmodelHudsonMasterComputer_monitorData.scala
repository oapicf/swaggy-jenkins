package io.swagger.client.model

import org.joda.time.DateTime
import java.util.UUID


case class HudsonmodelHudsonMasterComputer_monitorData (
  hudson.node_monitors.SwapSpaceMonitor: Option[Hudsonnode_monitorsSwapSpaceMonitorMemoryUsage2],
hudson.node_monitors.TemporarySpaceMonitor: Option[Hudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace],
hudson.node_monitors.DiskSpaceMonitor: Option[Hudsonnode_monitorsDiskSpaceMonitorDescriptorDiskSpace],
hudson.node_monitors.ArchitectureMonitor: Option[String],
hudson.node_monitors.ResponseTimeMonitor: Option[Hudsonnode_monitorsResponseTimeMonitorData],
hudson.node_monitors.ClockMonitor: Option[HudsonutilClockDifference],
_class: Option[String]
)
