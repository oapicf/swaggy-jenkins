# BranchImplpermissions
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Create** | **Boolean** |  | [optional] 
**Read** | **Boolean** |  | [optional] 
**Start** | **Boolean** |  | [optional] 
**Stop** | **Boolean** |  | [optional] 
**Class** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BranchImplpermissions = Initialize-PSOpenAPIToolsBranchImplpermissions  -Create null `
 -Read null `
 -Start null `
 -Stop null `
 -Class null
```

- Convert the resource to JSON
```powershell
$BranchImplpermissions | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

