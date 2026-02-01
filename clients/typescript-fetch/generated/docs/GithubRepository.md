
# GithubRepository


## Properties

Name | Type
------------ | -------------
`_class` | string
`links` | [GithubRepositorylinks](GithubRepositorylinks.md)
`defaultBranch` | string
`description` | string
`name` | string
`permissions` | [GithubRepositorypermissions](GithubRepositorypermissions.md)
`_private` | boolean
`fullName` | string

## Example

```typescript
import type { GithubRepository } from ''

// TODO: Update the object below with actual values
const example = {
  "_class": null,
  "links": null,
  "defaultBranch": null,
  "description": null,
  "name": null,
  "permissions": null,
  "_private": null,
  "fullName": null,
} satisfies GithubRepository

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as GithubRepository
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


