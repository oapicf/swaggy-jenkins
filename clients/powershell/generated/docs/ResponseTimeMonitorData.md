# ResponseTimeMonitorData
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | **String** |  | [optional] 
**Timestamp** | **Int32** |  | [optional] 
**Average** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ResponseTimeMonitorData = Initialize-PSOpenAPIToolsResponseTimeMonitorData  -Class null `
 -Timestamp null `
 -Average null
```

- Convert the resource to JSON
```powershell
$ResponseTimeMonitorData | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

