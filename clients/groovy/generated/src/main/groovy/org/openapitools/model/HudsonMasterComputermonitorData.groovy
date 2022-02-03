package org.openapitools.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.openapitools.model.ClockDifference;
import org.openapitools.model.DiskSpaceMonitorDescriptorDiskSpace;
import org.openapitools.model.ResponseTimeMonitorData;
import org.openapitools.model.SwapSpaceMonitorMemoryUsage2;

@Canonical
class HudsonMasterComputermonitorData {
    
    SwapSpaceMonitorMemoryUsage2 hudsonNodeMonitorsSwapSpaceMonitor
    
    DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsTemporarySpaceMonitor
    
    DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsDiskSpaceMonitor
    
    String hudsonNodeMonitorsArchitectureMonitor
    
    ResponseTimeMonitorData hudsonNodeMonitorsResponseTimeMonitor
    
    ClockDifference hudsonNodeMonitorsClockMonitor
    
    String propertyClass
}
