# StringParameterDefinition
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | **String** |  | [optional] 
**DefaultParameterValue** | [**StringParameterValue**](StringParameterValue.md) |  | [optional] 
**Description** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Type** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$StringParameterDefinition = Initialize-PSOpenAPIToolsStringParameterDefinition  -Class null `
 -DefaultParameterValue null `
 -Description null `
 -Name null `
 -Type null
```

- Convert the resource to JSON
```powershell
$StringParameterDefinition | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

