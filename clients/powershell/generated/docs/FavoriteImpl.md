# FavoriteImpl
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | **String** |  | [optional] 
**Links** | [**FavoriteImpllinks**](FavoriteImpllinks.md) |  | [optional] 
**Item** | [**PipelineImpl**](PipelineImpl.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$FavoriteImpl = Initialize-PSOpenAPIToolsFavoriteImpl  -Class null `
 -Links null `
 -Item null
```

- Convert the resource to JSON
```powershell
$FavoriteImpl | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

