
# FreeStyleBuild


## Properties

Name | Type
------------ | -------------
`_class` | string
`number` | number
`url` | string
`actions` | [Array&lt;CauseAction&gt;](CauseAction.md)
`building` | boolean
`description` | string
`displayName` | string
`duration` | number
`estimatedDuration` | number
`executor` | string
`fullDisplayName` | string
`id` | string
`keepLog` | boolean
`queueId` | number
`result` | string
`timestamp` | number
`builtOn` | string
`changeSet` | [EmptyChangeLogSet](EmptyChangeLogSet.md)

## Example

```typescript
import type { FreeStyleBuild } from ''

// TODO: Update the object below with actual values
const example = {
  "_class": null,
  "number": null,
  "url": null,
  "actions": null,
  "building": null,
  "description": null,
  "displayName": null,
  "duration": null,
  "estimatedDuration": null,
  "executor": null,
  "fullDisplayName": null,
  "id": null,
  "keepLog": null,
  "queueId": null,
  "result": null,
  "timestamp": null,
  "builtOn": null,
  "changeSet": null,
} satisfies FreeStyleBuild

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as FreeStyleBuild
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


