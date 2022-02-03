# FreeStyleBuild
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | **String** |  | [optional] 
**Number** | **Int32** |  | [optional] 
**Url** | **String** |  | [optional] 
**Actions** | [**CauseAction[]**](CauseAction.md) |  | [optional] 
**Building** | **Boolean** |  | [optional] 
**Description** | **String** |  | [optional] 
**DisplayName** | **String** |  | [optional] 
**Duration** | **Int32** |  | [optional] 
**EstimatedDuration** | **Int32** |  | [optional] 
**Executor** | **String** |  | [optional] 
**FullDisplayName** | **String** |  | [optional] 
**Id** | **String** |  | [optional] 
**KeepLog** | **Boolean** |  | [optional] 
**QueueId** | **Int32** |  | [optional] 
**Result** | **String** |  | [optional] 
**Timestamp** | **Int32** |  | [optional] 
**BuiltOn** | **String** |  | [optional] 
**ChangeSet** | [**EmptyChangeLogSet**](EmptyChangeLogSet.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FreeStyleBuild = Initialize-PSOpenAPIToolsFreeStyleBuild  -Class null `
 -Number null `
 -Url null `
 -Actions null `
 -Building null `
 -Description null `
 -DisplayName null `
 -Duration null `
 -EstimatedDuration null `
 -Executor null `
 -FullDisplayName null `
 -Id null `
 -KeepLog null `
 -QueueId null `
 -Result null `
 -Timestamp null `
 -BuiltOn null `
 -ChangeSet null
```

- Convert the resource to JSON
```powershell
$FreeStyleBuild | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

