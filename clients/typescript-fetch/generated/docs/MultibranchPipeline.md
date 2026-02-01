
# MultibranchPipeline


## Properties

Name | Type
------------ | -------------
`displayName` | string
`estimatedDurationInMillis` | number
`latestRun` | string
`name` | string
`organization` | string
`weatherScore` | number
`branchNames` | Array&lt;string&gt;
`numberOfFailingBranches` | number
`numberOfFailingPullRequests` | number
`numberOfSuccessfulBranches` | number
`numberOfSuccessfulPullRequests` | number
`totalNumberOfBranches` | number
`totalNumberOfPullRequests` | number
`_class` | string

## Example

```typescript
import type { MultibranchPipeline } from ''

// TODO: Update the object below with actual values
const example = {
  "displayName": null,
  "estimatedDurationInMillis": null,
  "latestRun": null,
  "name": null,
  "organization": null,
  "weatherScore": null,
  "branchNames": null,
  "numberOfFailingBranches": null,
  "numberOfFailingPullRequests": null,
  "numberOfSuccessfulBranches": null,
  "numberOfSuccessfulPullRequests": null,
  "totalNumberOfBranches": null,
  "totalNumberOfPullRequests": null,
  "_class": null,
} satisfies MultibranchPipeline

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as MultibranchPipeline
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


