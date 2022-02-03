# HudsonMasterComputermonitorData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**HudsonNodeMonitorsSwapSpaceMonitor** | [**SwapSpaceMonitorMemoryUsage2**](SwapSpaceMonitorMemoryUsage2.md) |  | [optional] 
**HudsonNodeMonitorsTemporarySpaceMonitor** | [**DiskSpaceMonitorDescriptorDiskSpace**](DiskSpaceMonitorDescriptorDiskSpace.md) |  | [optional] 
**HudsonNodeMonitorsDiskSpaceMonitor** | [**DiskSpaceMonitorDescriptorDiskSpace**](DiskSpaceMonitorDescriptorDiskSpace.md) |  | [optional] 
**HudsonNodeMonitorsArchitectureMonitor** | **String** |  | [optional] 
**HudsonNodeMonitorsResponseTimeMonitor** | [**ResponseTimeMonitorData**](ResponseTimeMonitorData.md) |  | [optional] 
**HudsonNodeMonitorsClockMonitor** | [**ClockDifference**](ClockDifference.md) |  | [optional] 
**Class** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$HudsonMasterComputermonitorData = Initialize-PSOpenAPIToolsHudsonMasterComputermonitorData  -HudsonNodeMonitorsSwapSpaceMonitor null `
 -HudsonNodeMonitorsTemporarySpaceMonitor null `
 -HudsonNodeMonitorsDiskSpaceMonitor null `
 -HudsonNodeMonitorsArchitectureMonitor null `
 -HudsonNodeMonitorsResponseTimeMonitor null `
 -HudsonNodeMonitorsClockMonitor null `
 -Class null
```

- Convert the resource to JSON
```powershell
$HudsonMasterComputermonitorData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

