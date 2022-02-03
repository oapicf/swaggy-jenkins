# GithubRespositoryContainer
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | **String** |  | [optional] 
**Links** | [**GithubRespositoryContainerlinks**](GithubRespositoryContainerlinks.md) |  | [optional] 
**Repositories** | [**GithubRepositories**](GithubRepositories.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GithubRespositoryContainer = Initialize-PSOpenAPIToolsGithubRespositoryContainer  -Class null `
 -Links null `
 -Repositories null
```

- Convert the resource to JSON
```powershell
$GithubRespositoryContainer | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

