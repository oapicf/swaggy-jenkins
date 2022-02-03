# GithubContent
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Name** | **String** |  | [optional] 
**Sha** | **String** |  | [optional] 
**Class** | **String** |  | [optional] 
**Repo** | **String** |  | [optional] 
**Size** | **Int32** |  | [optional] 
**Owner** | **String** |  | [optional] 
**Path** | **String** |  | [optional] 
**Base64Data** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GithubContent = Initialize-PSOpenAPIToolsGithubContent  -Name null `
 -Sha null `
 -Class null `
 -Repo null `
 -Size null `
 -Owner null `
 -Path null `
 -Base64Data null
```

- Convert the resource to JSON
```powershell
$GithubContent | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

