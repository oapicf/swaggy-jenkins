# SwapSpaceMonitorMemoryUsage2
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | **String** |  | [optional] 
**AvailablePhysicalMemory** | **Int32** |  | [optional] 
**AvailableSwapSpace** | **Int32** |  | [optional] 
**TotalPhysicalMemory** | **Int32** |  | [optional] 
**TotalSwapSpace** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SwapSpaceMonitorMemoryUsage2 = Initialize-PSOpenAPIToolsSwapSpaceMonitorMemoryUsage2  -Class null `
 -AvailablePhysicalMemory null `
 -AvailableSwapSpace null `
 -TotalPhysicalMemory null `
 -TotalSwapSpace null
```

- Convert the resource to JSON
```powershell
$SwapSpaceMonitorMemoryUsage2 | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

