
# FreeStyleProject


## Properties

Name | Type
------------ | -------------
`_class` | string
`name` | string
`url` | string
`color` | string
`actions` | [Array&lt;FreeStyleProjectactions&gt;](FreeStyleProjectactions.md)
`description` | string
`displayName` | string
`displayNameOrNull` | string
`fullDisplayName` | string
`fullName` | string
`buildable` | boolean
`builds` | [Array&lt;FreeStyleBuild&gt;](FreeStyleBuild.md)
`firstBuild` | [FreeStyleBuild](FreeStyleBuild.md)
`healthReport` | [Array&lt;FreeStyleProjecthealthReport&gt;](FreeStyleProjecthealthReport.md)
`inQueue` | boolean
`keepDependencies` | boolean
`lastBuild` | [FreeStyleBuild](FreeStyleBuild.md)
`lastCompletedBuild` | [FreeStyleBuild](FreeStyleBuild.md)
`lastFailedBuild` | string
`lastStableBuild` | [FreeStyleBuild](FreeStyleBuild.md)
`lastSuccessfulBuild` | [FreeStyleBuild](FreeStyleBuild.md)
`lastUnstableBuild` | string
`lastUnsuccessfulBuild` | string
`nextBuildNumber` | number
`queueItem` | string
`concurrentBuild` | boolean
`scm` | [NullSCM](NullSCM.md)

## Example

```typescript
import type { FreeStyleProject } from ''

// TODO: Update the object below with actual values
const example = {
  "_class": null,
  "name": null,
  "url": null,
  "color": null,
  "actions": null,
  "description": null,
  "displayName": null,
  "displayNameOrNull": null,
  "fullDisplayName": null,
  "fullName": null,
  "buildable": null,
  "builds": null,
  "firstBuild": null,
  "healthReport": null,
  "inQueue": null,
  "keepDependencies": null,
  "lastBuild": null,
  "lastCompletedBuild": null,
  "lastFailedBuild": null,
  "lastStableBuild": null,
  "lastSuccessfulBuild": null,
  "lastUnstableBuild": null,
  "lastUnsuccessfulBuild": null,
  "nextBuildNumber": null,
  "queueItem": null,
  "concurrentBuild": null,
  "scm": null,
} satisfies FreeStyleProject

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as FreeStyleProject
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


