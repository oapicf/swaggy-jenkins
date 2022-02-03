# QueueBlockedItem
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | **String** |  | [optional] 
**Actions** | [**CauseAction[]**](CauseAction.md) |  | [optional] 
**Blocked** | **Boolean** |  | [optional] 
**Buildable** | **Boolean** |  | [optional] 
**Id** | **Int32** |  | [optional] 
**InQueueSince** | **Int32** |  | [optional] 
**Params** | **String** |  | [optional] 
**Stuck** | **Boolean** |  | [optional] 
**Task** | [**FreeStyleProject**](FreeStyleProject.md) |  | [optional] 
**Url** | **String** |  | [optional] 
**Why** | **String** |  | [optional] 
**BuildableStartMilliseconds** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$QueueBlockedItem = Initialize-PSOpenAPIToolsQueueBlockedItem  -Class null `
 -Actions null `
 -Blocked null `
 -Buildable null `
 -Id null `
 -InQueueSince null `
 -Params null `
 -Stuck null `
 -Task null `
 -Url null `
 -Why null `
 -BuildableStartMilliseconds null
```

- Convert the resource to JSON
```powershell
$QueueBlockedItem | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

