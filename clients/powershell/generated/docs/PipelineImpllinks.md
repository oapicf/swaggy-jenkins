# PipelineImpllinks
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Runs** | [**Link**](Link.md) |  | [optional] 
**Self** | [**Link**](Link.md) |  | [optional] 
**Queue** | [**Link**](Link.md) |  | [optional] 
**Actions** | [**Link**](Link.md) |  | [optional] 
**Class** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PipelineImpllinks = Initialize-PSOpenAPIToolsPipelineImpllinks  -Runs null `
 -Self null `
 -Queue null `
 -Actions null `
 -Class null
```

- Convert the resource to JSON
```powershell
$PipelineImpllinks | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

