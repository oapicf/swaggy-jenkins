# Pipeline
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | **String** |  | [optional] 
**Organization** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**DisplayName** | **String** |  | [optional] 
**FullName** | **String** |  | [optional] 
**WeatherScore** | **Int32** |  | [optional] 
**EstimatedDurationInMillis** | **Int32** |  | [optional] 
**LatestRun** | [**PipelinelatestRun**](PipelinelatestRun.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Pipeline = Initialize-PSOpenAPIToolsPipeline  -Class null `
 -Organization null `
 -Name null `
 -DisplayName null `
 -FullName null `
 -WeatherScore null `
 -EstimatedDurationInMillis null `
 -LatestRun null
```

- Convert the resource to JSON
```powershell
$Pipeline | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

