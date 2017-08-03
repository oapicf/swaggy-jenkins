package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.ClockDifference;
import io.swagger.model.DiskSpaceMonitorDescriptorDiskSpace;
import io.swagger.model.ResponseTimeMonitorData;
import io.swagger.model.SwapSpaceMonitorMemoryUsage2;
@Canonical
class HudsonMasterComputermonitorData {

    SwapSpaceMonitorMemoryUsage2 hudsonNodeMonitorsSwapSpaceMonitor = null

    DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsTemporarySpaceMonitor = null

    DiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsDiskSpaceMonitor = null

    String hudsonNodeMonitorsArchitectureMonitor = null

    ResponseTimeMonitorData hudsonNodeMonitorsResponseTimeMonitor = null

    ClockDifference hudsonNodeMonitorsClockMonitor = null

    String propertyClass = null
  

}

