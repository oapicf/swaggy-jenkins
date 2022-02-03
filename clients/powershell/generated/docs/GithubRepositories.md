# GithubRepositories
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | **String** |  | [optional] 
**Links** | [**GithubRepositorieslinks**](GithubRepositorieslinks.md) |  | [optional] 
**Items** | [**GithubRepository[]**](GithubRepository.md) |  | [optional] 
**LastPage** | **Int32** |  | [optional] 
**NextPage** | **Int32** |  | [optional] 
**PageSize** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GithubRepositories = Initialize-PSOpenAPIToolsGithubRepositories  -Class null `
 -Links null `
 -Items null `
 -LastPage null `
 -NextPage null `
 -PageSize null
```

- Convert the resource to JSON
```powershell
$GithubRepositories | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

