# GithubScm
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | **String** |  | [optional] 
**Links** | [**GithubScmlinks**](GithubScmlinks.md) |  | [optional] 
**CredentialId** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**Uri** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GithubScm = Initialize-PSOpenAPIToolsGithubScm  -Class null `
 -Links null `
 -CredentialId null `
 -Id null `
 -Uri null
```

- Convert the resource to JSON
```powershell
$GithubScm | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

