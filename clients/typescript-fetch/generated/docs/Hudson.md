
# Hudson


## Properties

Name | Type
------------ | -------------
`_class` | string
`assignedLabels` | [Array&lt;HudsonassignedLabels&gt;](HudsonassignedLabels.md)
`mode` | string
`nodeDescription` | string
`nodeName` | string
`numExecutors` | number
`description` | string
`jobs` | [Array&lt;FreeStyleProject&gt;](FreeStyleProject.md)
`primaryView` | [AllView](AllView.md)
`quietingDown` | boolean
`slaveAgentPort` | number
`unlabeledLoad` | [UnlabeledLoadStatistics](UnlabeledLoadStatistics.md)
`useCrumbs` | boolean
`useSecurity` | boolean
`views` | [Array&lt;AllView&gt;](AllView.md)

## Example

```typescript
import type { Hudson } from ''

// TODO: Update the object below with actual values
const example = {
  "_class": null,
  "assignedLabels": null,
  "mode": null,
  "nodeDescription": null,
  "nodeName": null,
  "numExecutors": null,
  "description": null,
  "jobs": null,
  "primaryView": null,
  "quietingDown": null,
  "slaveAgentPort": null,
  "unlabeledLoad": null,
  "useCrumbs": null,
  "useSecurity": null,
  "views": null,
} satisfies Hudson

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as Hudson
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


