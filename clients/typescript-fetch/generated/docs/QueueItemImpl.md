
# QueueItemImpl


## Properties

Name | Type
------------ | -------------
`_class` | string
`expectedBuildNumber` | number
`id` | string
`pipeline` | string
`queuedTime` | number

## Example

```typescript
import type { QueueItemImpl } from ''

// TODO: Update the object below with actual values
const example = {
  "_class": null,
  "expectedBuildNumber": null,
  "id": null,
  "pipeline": null,
  "queuedTime": null,
} satisfies QueueItemImpl

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as QueueItemImpl
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


