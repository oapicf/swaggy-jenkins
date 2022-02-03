# PipelineImpl
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | **String** |  | [optional] 
**DisplayName** | **String** |  | [optional] 
**EstimatedDurationInMillis** | **Int32** |  | [optional] 
**FullName** | **String** |  | [optional] 
**LatestRun** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Organization** | **String** |  | [optional] 
**WeatherScore** | **Int32** |  | [optional] 
**Links** | [**PipelineImpllinks**](PipelineImpllinks.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PipelineImpl = Initialize-PSOpenAPIToolsPipelineImpl  -Class null `
 -DisplayName null `
 -EstimatedDurationInMillis null `
 -FullName null `
 -LatestRun null `
 -Name null `
 -Organization null `
 -WeatherScore null `
 -Links null
```

- Convert the resource to JSON
```powershell
$PipelineImpl | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

