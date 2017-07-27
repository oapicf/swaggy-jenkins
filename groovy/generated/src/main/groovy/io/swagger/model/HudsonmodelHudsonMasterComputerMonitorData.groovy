package io.swagger.model;

import groovy.transform.Canonical
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.model.HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace;
import io.swagger.model.HudsonnodeMonitorsResponseTimeMonitorData;
import io.swagger.model.HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2;
import io.swagger.model.HudsonutilClockDifference;
@Canonical
class HudsonmodelHudsonMasterComputerMonitorData {

    HudsonnodeMonitorsSwapSpaceMonitorMemoryUsage2 hudsonNodeMonitorsSwapSpaceMonitor = null

    HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsTemporarySpaceMonitor = null

    HudsonnodeMonitorsDiskSpaceMonitorDescriptorDiskSpace hudsonNodeMonitorsDiskSpaceMonitor = null

    String hudsonNodeMonitorsArchitectureMonitor = null

    HudsonnodeMonitorsResponseTimeMonitorData hudsonNodeMonitorsResponseTimeMonitor = null

    HudsonutilClockDifference hudsonNodeMonitorsClockMonitor = null

    String propertyClass = null
  

}

