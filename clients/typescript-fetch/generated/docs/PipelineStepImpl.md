
# PipelineStepImpl


## Properties

Name | Type
------------ | -------------
`_class` | string
`links` | [PipelineStepImpllinks](PipelineStepImpllinks.md)
`displayName` | string
`durationInMillis` | number
`id` | string
`input` | [InputStepImpl](InputStepImpl.md)
`result` | string
`startTime` | string
`state` | string

## Example

```typescript
import type { PipelineStepImpl } from ''

// TODO: Update the object below with actual values
const example = {
  "_class": null,
  "links": null,
  "displayName": null,
  "durationInMillis": null,
  "id": null,
  "input": null,
  "result": null,
  "startTime": null,
  "state": null,
} satisfies PipelineStepImpl

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as PipelineStepImpl
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


