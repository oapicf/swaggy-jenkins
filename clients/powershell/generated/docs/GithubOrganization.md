# GithubOrganization
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | **String** |  | [optional] 
**Links** | [**GithubOrganizationlinks**](GithubOrganizationlinks.md) |  | [optional] 
**JenkinsOrganizationPipeline** | **Boolean** |  | [optional] 
**Name** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GithubOrganization = Initialize-PSOpenAPIToolsGithubOrganization  -Class null `
 -Links null `
 -JenkinsOrganizationPipeline null `
 -Name null
```

- Convert the resource to JSON
```powershell
$GithubOrganization | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

