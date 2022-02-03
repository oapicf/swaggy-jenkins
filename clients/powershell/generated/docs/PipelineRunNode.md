# PipelineRunNode
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | **String** |  | [optional] 
**DisplayName** | **String** |  | [optional] 
**DurationInMillis** | **Int32** |  | [optional] 
**Edges** | [**PipelineRunNodeedges[]**](PipelineRunNodeedges.md) |  | [optional] 
**Id** | **String** |  | [optional] 
**Result** | **String** |  | [optional] 
**StartTime** | **String** |  | [optional] 
**State** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PipelineRunNode = Initialize-PSOpenAPIToolsPipelineRunNode  -Class null `
 -DisplayName null `
 -DurationInMillis null `
 -Edges null `
 -Id null `
 -Result null `
 -StartTime null `
 -State null
```

- Convert the resource to JSON
```powershell
$PipelineRunNode | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

