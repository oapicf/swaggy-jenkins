# DiskSpaceMonitorDescriptorDiskSpace
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | **String** |  | [optional] 
**Timestamp** | **Int32** |  | [optional] 
**Path** | **String** |  | [optional] 
**Size** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DiskSpaceMonitorDescriptorDiskSpace = Initialize-PSOpenAPIToolsDiskSpaceMonitorDescriptorDiskSpace  -Class null `
 -Timestamp null `
 -Path null `
 -Size null
```

- Convert the resource to JSON
```powershell
$DiskSpaceMonitorDescriptorDiskSpace | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

