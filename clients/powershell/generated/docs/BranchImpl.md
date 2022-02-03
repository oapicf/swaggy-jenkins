# BranchImpl
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | **String** |  | [optional] 
**DisplayName** | **String** |  | [optional] 
**EstimatedDurationInMillis** | **Int32** |  | [optional] 
**FullDisplayName** | **String** |  | [optional] 
**FullName** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Organization** | **String** |  | [optional] 
**Parameters** | [**StringParameterDefinition[]**](StringParameterDefinition.md) |  | [optional] 
**Permissions** | [**BranchImplpermissions**](BranchImplpermissions.md) |  | [optional] 
**WeatherScore** | **Int32** |  | [optional] 
**PullRequest** | **String** |  | [optional] 
**Links** | [**BranchImpllinks**](BranchImpllinks.md) |  | [optional] 
**LatestRun** | [**PipelineRunImpl**](PipelineRunImpl.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$BranchImpl = Initialize-PSOpenAPIToolsBranchImpl  -Class null `
 -DisplayName null `
 -EstimatedDurationInMillis null `
 -FullDisplayName null `
 -FullName null `
 -Name null `
 -Organization null `
 -Parameters null `
 -Permissions null `
 -WeatherScore null `
 -PullRequest null `
 -Links null `
 -LatestRun null
```

- Convert the resource to JSON
```powershell
$BranchImpl | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

