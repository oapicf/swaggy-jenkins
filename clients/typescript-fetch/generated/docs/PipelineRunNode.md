
# PipelineRunNode


## Properties

Name | Type
------------ | -------------
`_class` | string
`displayName` | string
`durationInMillis` | number
`edges` | [Array&lt;PipelineRunNodeedges&gt;](PipelineRunNodeedges.md)
`id` | string
`result` | string
`startTime` | string
`state` | string

## Example

```typescript
import type { PipelineRunNode } from ''

// TODO: Update the object below with actual values
const example = {
  "_class": null,
  "displayName": null,
  "durationInMillis": null,
  "edges": null,
  "id": null,
  "result": null,
  "startTime": null,
  "state": null,
} satisfies PipelineRunNode

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as PipelineRunNode
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


