# PipelineRunImpllinks
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Nodes** | [**Link**](Link.md) |  | [optional] 
**Log** | [**Link**](Link.md) |  | [optional] 
**Self** | [**Link**](Link.md) |  | [optional] 
**Actions** | [**Link**](Link.md) |  | [optional] 
**Steps** | [**Link**](Link.md) |  | [optional] 
**Class** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PipelineRunImpllinks = Initialize-PSOpenAPIToolsPipelineRunImpllinks  -Nodes null `
 -Log null `
 -Self null `
 -Actions null `
 -Steps null `
 -Class null
```

- Convert the resource to JSON
```powershell
$PipelineRunImpllinks | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

