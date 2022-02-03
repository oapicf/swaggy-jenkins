# PipelineStepImpl
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | **String** |  | [optional] 
**Links** | [**PipelineStepImpllinks**](PipelineStepImpllinks.md) |  | [optional] 
**DisplayName** | **String** |  | [optional] 
**DurationInMillis** | **Int32** |  | [optional] 
**Id** | **String** |  | [optional] 
**VarInput** | [**InputStepImpl**](InputStepImpl.md) |  | [optional] 
**Result** | **String** |  | [optional] 
**StartTime** | **String** |  | [optional] 
**State** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PipelineStepImpl = Initialize-PSOpenAPIToolsPipelineStepImpl  -Class null `
 -Links null `
 -DisplayName null `
 -DurationInMillis null `
 -Id null `
 -VarInput null `
 -Result null `
 -StartTime null `
 -State null
```

- Convert the resource to JSON
```powershell
$PipelineStepImpl | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

