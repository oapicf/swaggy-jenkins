# FreeStyleProject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Url** | **String** |  | [optional] 
**Color** | **String** |  | [optional] 
**Actions** | [**FreeStyleProjectactions[]**](FreeStyleProjectactions.md) |  | [optional] 
**Description** | **String** |  | [optional] 
**DisplayName** | **String** |  | [optional] 
**DisplayNameOrNull** | **String** |  | [optional] 
**FullDisplayName** | **String** |  | [optional] 
**FullName** | **String** |  | [optional] 
**Buildable** | **Boolean** |  | [optional] 
**Builds** | [**FreeStyleBuild[]**](FreeStyleBuild.md) |  | [optional] 
**FirstBuild** | [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] 
**HealthReport** | [**FreeStyleProjecthealthReport[]**](FreeStyleProjecthealthReport.md) |  | [optional] 
**InQueue** | **Boolean** |  | [optional] 
**KeepDependencies** | **Boolean** |  | [optional] 
**LastBuild** | [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] 
**LastCompletedBuild** | [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] 
**LastFailedBuild** | **String** |  | [optional] 
**LastStableBuild** | [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] 
**LastSuccessfulBuild** | [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] 
**LastUnstableBuild** | **String** |  | [optional] 
**LastUnsuccessfulBuild** | **String** |  | [optional] 
**NextBuildNumber** | **Int32** |  | [optional] 
**QueueItem** | **String** |  | [optional] 
**ConcurrentBuild** | **Boolean** |  | [optional] 
**Scm** | [**NullSCM**](NullSCM.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FreeStyleProject = Initialize-PSOpenAPIToolsFreeStyleProject  -Class null `
 -Name null `
 -Url null `
 -Color null `
 -Actions null `
 -Description null `
 -DisplayName null `
 -DisplayNameOrNull null `
 -FullDisplayName null `
 -FullName null `
 -Buildable null `
 -Builds null `
 -FirstBuild null `
 -HealthReport null `
 -InQueue null `
 -KeepDependencies null `
 -LastBuild null `
 -LastCompletedBuild null `
 -LastFailedBuild null `
 -LastStableBuild null `
 -LastSuccessfulBuild null `
 -LastUnstableBuild null `
 -LastUnsuccessfulBuild null `
 -NextBuildNumber null `
 -QueueItem null `
 -ConcurrentBuild null `
 -Scm null
```

- Convert the resource to JSON
```powershell
$FreeStyleProject | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

