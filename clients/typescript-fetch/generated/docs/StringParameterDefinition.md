
# StringParameterDefinition


## Properties

Name | Type
------------ | -------------
`_class` | string
`defaultParameterValue` | [StringParameterValue](StringParameterValue.md)
`description` | string
`name` | string
`type` | string

## Example

```typescript
import type { StringParameterDefinition } from ''

// TODO: Update the object below with actual values
const example = {
  "_class": null,
  "defaultParameterValue": null,
  "description": null,
  "name": null,
  "type": null,
} satisfies StringParameterDefinition

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as StringParameterDefinition
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


