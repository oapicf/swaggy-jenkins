
# HudsonMasterComputer


## Properties

Name | Type
------------ | -------------
`_class` | string
`displayName` | string
`executors` | [Array&lt;HudsonMasterComputerexecutors&gt;](HudsonMasterComputerexecutors.md)
`icon` | string
`iconClassName` | string
`idle` | boolean
`jnlpAgent` | boolean
`launchSupported` | boolean
`loadStatistics` | [Label1](Label1.md)
`manualLaunchAllowed` | boolean
`monitorData` | [HudsonMasterComputermonitorData](HudsonMasterComputermonitorData.md)
`numExecutors` | number
`offline` | boolean
`offlineCause` | string
`offlineCauseReason` | string
`temporarilyOffline` | boolean

## Example

```typescript
import type { HudsonMasterComputer } from ''

// TODO: Update the object below with actual values
const example = {
  "_class": null,
  "displayName": null,
  "executors": null,
  "icon": null,
  "iconClassName": null,
  "idle": null,
  "jnlpAgent": null,
  "launchSupported": null,
  "loadStatistics": null,
  "manualLaunchAllowed": null,
  "monitorData": null,
  "numExecutors": null,
  "offline": null,
  "offlineCause": null,
  "offlineCauseReason": null,
  "temporarilyOffline": null,
} satisfies HudsonMasterComputer

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as HudsonMasterComputer
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


