# MultibranchPipeline
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**DisplayName** | **String** |  | [optional] 
**EstimatedDurationInMillis** | **Int32** |  | [optional] 
**LatestRun** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Organization** | **String** |  | [optional] 
**WeatherScore** | **Int32** |  | [optional] 
**BranchNames** | **String[]** |  | [optional] 
**NumberOfFailingBranches** | **Int32** |  | [optional] 
**NumberOfFailingPullRequests** | **Int32** |  | [optional] 
**NumberOfSuccessfulBranches** | **Int32** |  | [optional] 
**NumberOfSuccessfulPullRequests** | **Int32** |  | [optional] 
**TotalNumberOfBranches** | **Int32** |  | [optional] 
**TotalNumberOfPullRequests** | **Int32** |  | [optional] 
**Class** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$MultibranchPipeline = Initialize-PSOpenAPIToolsMultibranchPipeline  -DisplayName null `
 -EstimatedDurationInMillis null `
 -LatestRun null `
 -Name null `
 -Organization null `
 -WeatherScore null `
 -BranchNames null `
 -NumberOfFailingBranches null `
 -NumberOfFailingPullRequests null `
 -NumberOfSuccessfulBranches null `
 -NumberOfSuccessfulPullRequests null `
 -TotalNumberOfBranches null `
 -TotalNumberOfPullRequests null `
 -Class null
```

- Convert the resource to JSON
```powershell
$MultibranchPipeline | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

