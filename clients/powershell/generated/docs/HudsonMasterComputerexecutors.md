# HudsonMasterComputerexecutors
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**CurrentExecutable** | [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] 
**Idle** | **Boolean** |  | [optional] 
**LikelyStuck** | **Boolean** |  | [optional] 
**Number** | **Int32** |  | [optional] 
**Progress** | **Int32** |  | [optional] 
**Class** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$HudsonMasterComputerexecutors = Initialize-PSOpenAPIToolsHudsonMasterComputerexecutors  -CurrentExecutable null `
 -Idle null `
 -LikelyStuck null `
 -Number null `
 -Progress null `
 -Class null
```

- Convert the resource to JSON
```powershell
$HudsonMasterComputerexecutors | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

