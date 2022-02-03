# PipelineRun
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | **String** |  | [optional] 
**Artifacts** | [**PipelineRunartifacts[]**](PipelineRunartifacts.md) |  | [optional] 
**DurationInMillis** | **Int32** |  | [optional] 
**EstimatedDurationInMillis** | **Int32** |  | [optional] 
**EnQueueTime** | **String** |  | [optional] 
**EndTime** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**Organization** | **String** |  | [optional] 
**Pipeline** | **String** |  | [optional] 
**Result** | **String** |  | [optional] 
**RunSummary** | **String** |  | [optional] 
**StartTime** | **String** |  | [optional] 
**State** | **String** |  | [optional] 
**Type** | **String** |  | [optional] 
**CommitId** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PipelineRun = Initialize-PSOpenAPIToolsPipelineRun  -Class null `
 -Artifacts null `
 -DurationInMillis null `
 -EstimatedDurationInMillis null `
 -EnQueueTime null `
 -EndTime null `
 -Id null `
 -Organization null `
 -Pipeline null `
 -Result null `
 -RunSummary null `
 -StartTime null `
 -State null `
 -Type null `
 -CommitId null
```

- Convert the resource to JSON
```powershell
$PipelineRun | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

