
# Pipeline


## Properties

Name | Type
------------ | -------------
`_class` | string
`organization` | string
`name` | string
`displayName` | string
`fullName` | string
`weatherScore` | number
`estimatedDurationInMillis` | number
`latestRun` | [PipelinelatestRun](PipelinelatestRun.md)

## Example

```typescript
import type { Pipeline } from ''

// TODO: Update the object below with actual values
const example = {
  "_class": null,
  "organization": null,
  "name": null,
  "displayName": null,
  "fullName": null,
  "weatherScore": null,
  "estimatedDurationInMillis": null,
  "latestRun": null,
} satisfies Pipeline

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as Pipeline
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


