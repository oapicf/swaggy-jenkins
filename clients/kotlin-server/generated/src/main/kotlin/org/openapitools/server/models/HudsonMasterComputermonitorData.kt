/**
* Swaggy Jenkins
* Jenkins API clients generated from Swagger / Open API specification
*
* The version of the OpenAPI document: 2.0.1-pre.0
* Contact: blah+oapicf@cliffano.com
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/
package org.openapitools.server.models

import org.openapitools.server.models.ClockDifference
import org.openapitools.server.models.DiskSpaceMonitorDescriptorDiskSpace
import org.openapitools.server.models.ResponseTimeMonitorData
import org.openapitools.server.models.SwapSpaceMonitorMemoryUsage2

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
    val hudsonNodeMonitorsSwapSpaceMonitor: SwapSpaceMonitorMemoryUsage2? = null,
    val hudsonNodeMonitorsTemporarySpaceMonitor: DiskSpaceMonitorDescriptorDiskSpace? = null,
    val hudsonNodeMonitorsDiskSpaceMonitor: DiskSpaceMonitorDescriptorDiskSpace? = null,
    val hudsonNodeMonitorsArchitectureMonitor: kotlin.String? = null,
    val hudsonNodeMonitorsResponseTimeMonitor: ResponseTimeMonitorData? = null,
    val hudsonNodeMonitorsClockMonitor: ClockDifference? = null,
    val propertyClass: kotlin.String? = null
) 

