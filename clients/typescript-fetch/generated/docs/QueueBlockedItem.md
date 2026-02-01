
# QueueBlockedItem


## Properties

Name | Type
------------ | -------------
`_class` | string
`actions` | [Array&lt;CauseAction&gt;](CauseAction.md)
`blocked` | boolean
`buildable` | boolean
`id` | number
`inQueueSince` | number
`params` | string
`stuck` | boolean
`task` | [FreeStyleProject](FreeStyleProject.md)
`url` | string
`why` | string
`buildableStartMilliseconds` | number

## Example

```typescript
import type { QueueBlockedItem } from ''

// TODO: Update the object below with actual values
const example = {
  "_class": null,
  "actions": null,
  "blocked": null,
  "buildable": null,
  "id": null,
  "inQueueSince": null,
  "params": null,
  "stuck": null,
  "task": null,
  "url": null,
  "why": null,
  "buildableStartMilliseconds": null,
} satisfies QueueBlockedItem

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as QueueBlockedItem
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


