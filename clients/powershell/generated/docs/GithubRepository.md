# GithubRepository
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | **String** |  | [optional] 
**Links** | [**GithubRepositorylinks**](GithubRepositorylinks.md) |  | [optional] 
**DefaultBranch** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Permissions** | [**GithubRepositorypermissions**](GithubRepositorypermissions.md) |  | [optional] 
**VarPrivate** | **Boolean** |  | [optional] 
**FullName** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GithubRepository = Initialize-PSOpenAPIToolsGithubRepository  -Class null `
 -Links null `
 -DefaultBranch null `
 -Description null `
 -Name null `
 -Permissions null `
 -VarPrivate null `
 -FullName null
```

- Convert the resource to JSON
```powershell
$GithubRepository | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

