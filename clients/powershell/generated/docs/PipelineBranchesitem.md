# PipelineBranchesitem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DisplayName** | **String** |  | [optional] 
**EstimatedDurationInMillis** | **Int32** |  | [optional] 
**Name** | **String** |  | [optional] 
**WeatherScore** | **Int32** |  | [optional] 
**LatestRun** | [**PipelineBranchesitemlatestRun**](PipelineBranchesitemlatestRun.md) |  | [optional] 
**Organization** | **String** |  | [optional] 
**PullRequest** | [**PipelineBranchesitempullRequest**](PipelineBranchesitempullRequest.md) |  | [optional] 
**TotalNumberOfPullRequests** | **Int32** |  | [optional] 
**Class** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PipelineBranchesitem = Initialize-PSOpenAPIToolsPipelineBranchesitem  -DisplayName null `
 -EstimatedDurationInMillis null `
 -Name null `
 -WeatherScore null `
 -LatestRun null `
 -Organization null `
 -PullRequest null `
 -TotalNumberOfPullRequests null `
 -Class null
```

- Convert the resource to JSON
```powershell
$PipelineBranchesitem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

