
# BranchImpl


## Properties

Name | Type
------------ | -------------
`_class` | string
`displayName` | string
`estimatedDurationInMillis` | number
`fullDisplayName` | string
`fullName` | string
`name` | string
`organization` | string
`parameters` | [Array&lt;StringParameterDefinition&gt;](StringParameterDefinition.md)
`permissions` | [BranchImplpermissions](BranchImplpermissions.md)
`weatherScore` | number
`pullRequest` | string
`links` | [BranchImpllinks](BranchImpllinks.md)
`latestRun` | [PipelineRunImpl](PipelineRunImpl.md)

## Example

```typescript
import type { BranchImpl } from ''

// TODO: Update the object below with actual values
const example = {
  "_class": null,
  "displayName": null,
  "estimatedDurationInMillis": null,
  "fullDisplayName": null,
  "fullName": null,
  "name": null,
  "organization": null,
  "parameters": null,
  "permissions": null,
  "weatherScore": null,
  "pullRequest": null,
  "links": null,
  "latestRun": null,
} satisfies BranchImpl

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as BranchImpl
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


