
# InputStepImpl


## Properties

Name | Type
------------ | -------------
`_class` | string
`links` | [InputStepImpllinks](InputStepImpllinks.md)
`id` | string
`message` | string
`ok` | string
`parameters` | [Array&lt;StringParameterDefinition&gt;](StringParameterDefinition.md)
`submitter` | string

## Example

```typescript
import type { InputStepImpl } from ''

// TODO: Update the object below with actual values
const example = {
  "_class": null,
  "links": null,
  "id": null,
  "message": null,
  "ok": null,
  "parameters": null,
  "submitter": null,
} satisfies InputStepImpl

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as InputStepImpl
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


