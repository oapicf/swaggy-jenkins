# QueueItemImpl
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | **String** |  | [optional] 
**ExpectedBuildNumber** | **Int32** |  | [optional] 
**Id** | **String** |  | [optional] 
**Pipeline** | **String** |  | [optional] 
**QueuedTime** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$QueueItemImpl = Initialize-PSOpenAPIToolsQueueItemImpl  -Class null `
 -ExpectedBuildNumber null `
 -Id null `
 -Pipeline null `
 -QueuedTime null
```

- Convert the resource to JSON
```powershell
$QueueItemImpl | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

