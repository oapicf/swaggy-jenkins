# Queue
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | **String** |  | [optional] 
**Items** | [**QueueBlockedItem[]**](QueueBlockedItem.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Queue = Initialize-PSOpenAPIToolsQueue  -Class null `
 -Items null
```

- Convert the resource to JSON
```powershell
$Queue | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

