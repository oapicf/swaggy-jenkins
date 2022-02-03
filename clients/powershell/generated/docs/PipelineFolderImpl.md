# PipelineFolderImpl
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | **String** |  | [optional] 
**DisplayName** | **String** |  | [optional] 
**FullName** | **String** |  | [optional] 
**Name** | **String** |  | [optional] 
**Organization** | **String** |  | [optional] 
**NumberOfFolders** | **Int32** |  | [optional] 
**NumberOfPipelines** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$PipelineFolderImpl = Initialize-PSOpenAPIToolsPipelineFolderImpl  -Class null `
 -DisplayName null `
 -FullName null `
 -Name null `
 -Organization null `
 -NumberOfFolders null `
 -NumberOfPipelines null
```

- Convert the resource to JSON
```powershell
$PipelineFolderImpl | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

