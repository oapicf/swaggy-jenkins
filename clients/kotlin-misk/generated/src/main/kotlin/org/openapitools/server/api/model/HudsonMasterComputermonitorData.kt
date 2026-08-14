package org.openapitools.server.api.model

import org.openapitools.server.api.model.ClockDifference
import org.openapitools.server.api.model.DiskSpaceMonitorDescriptorDiskSpace
import org.openapitools.server.api.model.ResponseTimeMonitorData
import org.openapitools.server.api.model.SwapSpaceMonitorMemoryUsage2
import com.squareup.moshi.JsonClass

@JsonClass(generateAdapter = true)
data class HudsonMasterComputermonitorData(
    val hudsonNodeMonitorsSwapSpaceMonitor: SwapSpaceMonitorMemoryUsage2? = null,
    val hudsonNodeMonitorsTemporarySpaceMonitor: DiskSpaceMonitorDescriptorDiskSpace? = null,
    val hudsonNodeMonitorsDiskSpaceMonitor: DiskSpaceMonitorDescriptorDiskSpace? = null,
    val hudsonNodeMonitorsArchitectureMonitor: kotlin.String? = null,
    val hudsonNodeMonitorsResponseTimeMonitor: ResponseTimeMonitorData? = null,
    val hudsonNodeMonitorsClockMonitor: ClockDifference? = null,
    val propertyClass: kotlin.String? = null
)
