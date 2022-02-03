# CauseAction
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | **String** |  | [optional] 
**Causes** | [**CauseUserIdCause[]**](CauseUserIdCause.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$CauseAction = Initialize-PSOpenAPIToolsCauseAction  -Class null `
 -Causes null
```

- Convert the resource to JSON
```powershell
$CauseAction | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

