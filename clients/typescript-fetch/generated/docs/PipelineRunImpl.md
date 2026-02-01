
# PipelineRunImpl


## Properties

Name | Type
------------ | -------------
`_class` | string
`links` | [PipelineRunImpllinks](PipelineRunImpllinks.md)
`durationInMillis` | number
`enQueueTime` | string
`endTime` | string
`estimatedDurationInMillis` | number
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
import type { PipelineRunImpl } from ''

// TODO: Update the object below with actual values
const example = {
  "_class": null,
  "links": null,
  "durationInMillis": null,
  "enQueueTime": null,
  "endTime": null,
  "estimatedDurationInMillis": null,
  "id": null,
  "organization": null,
  "pipeline": null,
  "result": null,
  "runSummary": null,
  "startTime": null,
  "state": null,
  "type": null,
  "commitId": null,
} satisfies PipelineRunImpl

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as PipelineRunImpl
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


