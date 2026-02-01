
# PipelineBranchesitem


## Properties

Name | Type
------------ | -------------
`displayName` | string
`estimatedDurationInMillis` | number
`name` | string
`weatherScore` | number
`latestRun` | [PipelineBranchesitemlatestRun](PipelineBranchesitemlatestRun.md)
`organization` | string
`pullRequest` | [PipelineBranchesitempullRequest](PipelineBranchesitempullRequest.md)
`totalNumberOfPullRequests` | number
`_class` | string

## Example

```typescript
import type { PipelineBranchesitem } from ''

// TODO: Update the object below with actual values
const example = {
  "displayName": null,
  "estimatedDurationInMillis": null,
  "name": null,
  "weatherScore": null,
  "latestRun": null,
  "organization": null,
  "pullRequest": null,
  "totalNumberOfPullRequests": null,
  "_class": null,
} satisfies PipelineBranchesitem

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as PipelineBranchesitem
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


