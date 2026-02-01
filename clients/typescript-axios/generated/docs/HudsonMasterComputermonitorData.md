# HudsonMasterComputermonitorData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hudson_node_monitors_SwapSpaceMonitor** | [**SwapSpaceMonitorMemoryUsage2**](SwapSpaceMonitorMemoryUsage2.md) |  | [optional] [default to undefined]
**hudson_node_monitors_TemporarySpaceMonitor** | [**DiskSpaceMonitorDescriptorDiskSpace**](DiskSpaceMonitorDescriptorDiskSpace.md) |  | [optional] [default to undefined]
**hudson_node_monitors_DiskSpaceMonitor** | [**DiskSpaceMonitorDescriptorDiskSpace**](DiskSpaceMonitorDescriptorDiskSpace.md) |  | [optional] [default to undefined]
**hudson_node_monitors_ArchitectureMonitor** | **string** |  | [optional] [default to undefined]
**hudson_node_monitors_ResponseTimeMonitor** | [**ResponseTimeMonitorData**](ResponseTimeMonitorData.md) |  | [optional] [default to undefined]
**hudson_node_monitors_ClockMonitor** | [**ClockDifference**](ClockDifference.md) |  | [optional] [default to undefined]
**_class** | **string** |  | [optional] [default to undefined]

## Example

```typescript
import { HudsonMasterComputermonitorData } from './api';

const instance: HudsonMasterComputermonitorData = {
    hudson_node_monitors_SwapSpaceMonitor,
    hudson_node_monitors_TemporarySpaceMonitor,
    hudson_node_monitors_DiskSpaceMonitor,
    hudson_node_monitors_ArchitectureMonitor,
    hudson_node_monitors_ResponseTimeMonitor,
    hudson_node_monitors_ClockMonitor,
    _class,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
