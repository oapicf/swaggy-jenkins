# User
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**FullName** | **String** |  | [optional] 
**Email** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$User = Initialize-PSOpenAPIToolsUser  -Class null `
 -Id null `
 -FullName null `
 -Email null `
 -Name null
```

- Convert the resource to JSON
```powershell
$User | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

