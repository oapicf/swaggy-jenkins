# HudsonMasterComputer
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | **String** |  | [optional] 
**DisplayName** | **String** |  | [optional] 
**Executors** | [**HudsonMasterComputerexecutors[]**](HudsonMasterComputerexecutors.md) |  | [optional] 
**Icon** | **String** |  | [optional] 
**IconClassName** | **String** |  | [optional] 
**Idle** | **Boolean** |  | [optional] 
**JnlpAgent** | **Boolean** |  | [optional] 
**LaunchSupported** | **Boolean** |  | [optional] 
**LoadStatistics** | [**Label1**](Label1.md) |  | [optional] 
**ManualLaunchAllowed** | **Boolean** |  | [optional] 
**MonitorData** | [**HudsonMasterComputermonitorData**](HudsonMasterComputermonitorData.md) |  | [optional] 
**NumExecutors** | **Int32** |  | [optional] 
**Offline** | **Boolean** |  | [optional] 
**OfflineCause** | **String** |  | [optional] 
**OfflineCauseReason** | **String** |  | [optional] 
**TemporarilyOffline** | **Boolean** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$HudsonMasterComputer = Initialize-PSOpenAPIToolsHudsonMasterComputer  -Class null `
 -DisplayName null `
 -Executors null `
 -Icon null `
 -IconClassName null `
 -Idle null `
 -JnlpAgent null `
 -LaunchSupported null `
 -LoadStatistics null `
 -ManualLaunchAllowed null `
 -MonitorData null `
 -NumExecutors null `
 -Offline null `
 -OfflineCause null `
 -OfflineCauseReason null `
 -TemporarilyOffline null
```

- Convert the resource to JSON
```powershell
$HudsonMasterComputer | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

