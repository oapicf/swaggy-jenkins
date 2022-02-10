
# Table `HudsonMasterComputermonitorData`
(mapped from: HudsonMasterComputermonitorData)

## Properties
Name | Mapping | SQL Type | Default | Type | Description | Notes
---- | ------- | -------- | ------- | ---- | ----------- | -----
**hudsonNodeMonitorsSwapSpaceMonitor** | hudsonnode_monitorsSwapSpaceMonitor | long |  | [**SwapSpaceMonitorMemoryUsage2**](SwapSpaceMonitorMemoryUsage2.md) |  |  [optional] [foreignkey]
**hudsonNodeMonitorsTemporarySpaceMonitor** | hudsonnode_monitorsTemporarySpaceMonitor | long |  | [**DiskSpaceMonitorDescriptorDiskSpace**](DiskSpaceMonitorDescriptorDiskSpace.md) |  |  [optional] [foreignkey]
**hudsonNodeMonitorsDiskSpaceMonitor** | hudsonnode_monitorsDiskSpaceMonitor | long |  | [**DiskSpaceMonitorDescriptorDiskSpace**](DiskSpaceMonitorDescriptorDiskSpace.md) |  |  [optional] [foreignkey]
**hudsonNodeMonitorsArchitectureMonitor** | hudsonnode_monitorsArchitectureMonitor | text |  | **kotlin.String** |  |  [optional]
**hudsonNodeMonitorsResponseTimeMonitor** | hudsonnode_monitorsResponseTimeMonitor | long |  | [**ResponseTimeMonitorData**](ResponseTimeMonitorData.md) |  |  [optional] [foreignkey]
**hudsonNodeMonitorsClockMonitor** | hudsonnode_monitorsClockMonitor | long |  | [**ClockDifference**](ClockDifference.md) |  |  [optional] [foreignkey]
**propertyClass** | _class | text |  | **kotlin.String** |  |  [optional]









