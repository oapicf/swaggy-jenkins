package org.openapitools.model

import java.util.Objects
import com.fasterxml.jackson.annotation.JsonProperty
import org.openapitools.model.ClockDifference
import org.openapitools.model.DiskSpaceMonitorDescriptorDiskSpace
import org.openapitools.model.ResponseTimeMonitorData
import org.openapitools.model.SwapSpaceMonitorMemoryUsage2
import javax.validation.constraints.DecimalMax
import javax.validation.constraints.DecimalMin
import javax.validation.constraints.Max
import javax.validation.constraints.Min
import javax.validation.constraints.NotNull
import javax.validation.constraints.Pattern
import javax.validation.constraints.Size
import javax.validation.Valid

/**
 * 
 * @param hudsonNodeMonitorsSwapSpaceMonitor 
 * @param hudsonNodeMonitorsTemporarySpaceMonitor 
 * @param hudsonNodeMonitorsDiskSpaceMonitor 
 * @param hudsonNodeMonitorsArchitectureMonitor 
 * @param hudsonNodeMonitorsResponseTimeMonitor 
 * @param hudsonNodeMonitorsClockMonitor 
 * @param propertyClass 
 */
data class HudsonMasterComputermonitorData(

    @field:Valid
    @field:JsonProperty("hudson.node_monitors.SwapSpaceMonitor") val hudsonNodeMonitorsSwapSpaceMonitor: SwapSpaceMonitorMemoryUsage2? = null,

    @field:Valid
    @field:JsonProperty("hudson.node_monitors.TemporarySpaceMonitor") val hudsonNodeMonitorsTemporarySpaceMonitor: DiskSpaceMonitorDescriptorDiskSpace? = null,

    @field:Valid
    @field:JsonProperty("hudson.node_monitors.DiskSpaceMonitor") val hudsonNodeMonitorsDiskSpaceMonitor: DiskSpaceMonitorDescriptorDiskSpace? = null,

    @field:JsonProperty("hudson.node_monitors.ArchitectureMonitor") val hudsonNodeMonitorsArchitectureMonitor: kotlin.String? = null,

    @field:Valid
    @field:JsonProperty("hudson.node_monitors.ResponseTimeMonitor") val hudsonNodeMonitorsResponseTimeMonitor: ResponseTimeMonitorData? = null,

    @field:Valid
    @field:JsonProperty("hudson.node_monitors.ClockMonitor") val hudsonNodeMonitorsClockMonitor: ClockDifference? = null,

    @field:JsonProperty("_class") val propertyClass: kotlin.String? = null
) {

}

