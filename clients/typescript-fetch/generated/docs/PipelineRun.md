
# PipelineRun


## Properties

Name | Type
------------ | -------------
`_class` | string
`artifacts` | [Array&lt;PipelineRunartifacts&gt;](PipelineRunartifacts.md)
`durationInMillis` | number
`estimatedDurationInMillis` | number
`enQueueTime` | string
`endTime` | string
`id` | string
`organization` | string
`pipeline` | string
`result` | string
`runSummary` | string
`startTime` | string
`state` | string
`type` | string
`commitId` | string

## Example

```typescript
import type { PipelineRun } from ''

// TODO: Update the object below with actual values
const example = {
  "_class": null,
  "artifacts": null,
  "durationInMillis": null,
  "estimatedDurationInMillis": null,
  "enQueueTime": null,
  "endTime": null,
  "id": null,
  "organization": null,
  "pipeline": null,
  "result": null,
  "runSummary": null,
  "startTime": null,
  "state": null,
  "type": null,
  "commitId": null,
} satisfies PipelineRun

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as PipelineRun
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


