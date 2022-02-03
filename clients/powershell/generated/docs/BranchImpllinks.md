# BranchImpllinks
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Self** | [**Link**](Link.md) |  | [optional] 
**Actions** | [**Link**](Link.md) |  | [optional] 
**Runs** | [**Link**](Link.md) |  | [optional] 
**Queue** | [**Link**](Link.md) |  | [optional] 
**Class** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BranchImpllinks = Initialize-PSOpenAPIToolsBranchImpllinks  -Self null `
 -Actions null `
 -Runs null `
 -Queue null `
 -Class null
```

- Convert the resource to JSON
```powershell
$BranchImpllinks | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

