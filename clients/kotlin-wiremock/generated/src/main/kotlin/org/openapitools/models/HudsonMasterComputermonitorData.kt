@file:Suppress(
    "RemoveRedundantQualifierName",
    "unused",
)

package org.openapitools.models

import com.fasterxml.jackson.annotation.JsonProperty

data class HudsonMasterComputermonitorData(
    @field:JsonProperty("hudson.node_monitors.SwapSpaceMonitor")
    val hudsonNodeMonitorsSwapSpaceMonitor: SwapSpaceMonitorMemoryUsage2? = null,

    @field:JsonProperty("hudson.node_monitors.TemporarySpaceMonitor")
    val hudsonNodeMonitorsTemporarySpaceMonitor: DiskSpaceMonitorDescriptorDiskSpace? = null,

    @field:JsonProperty("hudson.node_monitors.DiskSpaceMonitor")
    val hudsonNodeMonitorsDiskSpaceMonitor: DiskSpaceMonitorDescriptorDiskSpace? = null,

    @field:JsonProperty("hudson.node_monitors.ArchitectureMonitor")
    val hudsonNodeMonitorsArchitectureMonitor: kotlin.String? = null,

    @field:JsonProperty("hudson.node_monitors.ResponseTimeMonitor")
    val hudsonNodeMonitorsResponseTimeMonitor: ResponseTimeMonitorData? = null,

    @field:JsonProperty("hudson.node_monitors.ClockMonitor")
    val hudsonNodeMonitorsClockMonitor: ClockDifference? = null,

    @field:JsonProperty("_class")
    val propertyClass: kotlin.String? = null,

)
