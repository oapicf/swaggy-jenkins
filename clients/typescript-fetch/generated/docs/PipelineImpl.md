
# PipelineImpl


## Properties

Name | Type
------------ | -------------
`_class` | string
`displayName` | string
`estimatedDurationInMillis` | number
`fullName` | string
`latestRun` | string
`name` | string
`organization` | string
`weatherScore` | number
`links` | [PipelineImpllinks](PipelineImpllinks.md)

## Example

```typescript
import type { PipelineImpl } from ''

// TODO: Update the object below with actual values
const example = {
  "_class": null,
  "displayName": null,
  "estimatedDurationInMillis": null,
  "fullName": null,
  "latestRun": null,
  "name": null,
  "organization": null,
  "weatherScore": null,
  "links": null,
} satisfies PipelineImpl

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as PipelineImpl
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


