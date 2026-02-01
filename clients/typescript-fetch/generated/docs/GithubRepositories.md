
# GithubRepositories


## Properties

Name | Type
------------ | -------------
`_class` | string
`links` | [GithubRepositorieslinks](GithubRepositorieslinks.md)
`items` | [Array&lt;GithubRepository&gt;](GithubRepository.md)
`lastPage` | number
`nextPage` | number
`pageSize` | number

## Example

```typescript
import type { GithubRepositories } from ''

// TODO: Update the object below with actual values
const example = {
  "_class": null,
  "links": null,
  "items": null,
  "lastPage": null,
  "nextPage": null,
  "pageSize": null,
} satisfies GithubRepositories

console.log(example)

// Convert the instance to a JSON string
const exampleJSON: string = JSON.stringify(example)
console.log(exampleJSON)

// Parse the JSON string back to an object
const exampleParsed = JSON.parse(exampleJSON) as GithubRepositories
console.log(exampleParsed)
```

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


