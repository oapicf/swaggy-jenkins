
# HudsonMasterComputermonitorData


## Properties

Name | Type
------------ | -------------
`hudsonNodeMonitorsSwapSpaceMonitor` | [SwapSpaceMonitorMemoryUsage2](SwapSpaceMonitorMemoryUsage2.md)
`hudsonNodeMonitorsTemporarySpaceMonitor` | [DiskSpaceMonitorDescriptorDiskSpace](DiskSpaceMonitorDescriptorDiskSpace.md)
`hudsonNodeMonitorsDiskSpaceMonitor` | [DiskSpaceMonitorDescriptorDiskSpace](DiskSpaceMonitorDescriptorDiskSpace.md)
`hudsonNodeMonitorsArchitectureMonitor` | string
`hudsonNodeMonitorsResponseTimeMonitor` | [ResponseTimeMonitorData](ResponseTimeMonitorData.md)
`hudsonNodeMonitorsClockMonitor` | [ClockDifference](ClockDifference.md)
`_class` | string

## Example

```typescript
import type { HudsonMasterComputermonitorData } from ''

// TODO: Update the object below with actual values
const example = {
  "hudsonNodeMonitorsSwapSpaceMonitor": null,
  "hudsonNodeMonitorsTemporarySpaceMonitor": null,
  "hudsonNodeMonitorsDiskSpaceMonitor": null,
  "hudsonNodeMonitorsArchitectureMonitor": null,
  "hudsonNodeMonitorsResponseTimeMonitor": null,
  "hudsonNodeMonitorsClockMonitor": null,
  "_class": null,
} satisfies HudsonMasterComputermonitorData

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as HudsonMasterComputermonitorData
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


