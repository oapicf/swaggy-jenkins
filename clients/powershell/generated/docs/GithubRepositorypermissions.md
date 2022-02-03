# GithubRepositorypermissions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Admin** | **Boolean** |  | [optional] 
**Push** | **Boolean** |  | [optional] 
**Pull** | **Boolean** |  | [optional] 
**Class** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GithubRepositorypermissions = Initialize-PSOpenAPIToolsGithubRepositorypermissions  -Admin null `
 -Push null `
 -Pull null `
 -Class null
```

- Convert the resource to JSON
```powershell
$GithubRepositorypermissions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

