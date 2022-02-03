# GenericResource
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | **String** |  | [optional] 
**DisplayName** | **String** |  | [optional] 
**DurationInMillis** | **Int32** |  | [optional] 
**Id** | **String** |  | [optional] 
**Result** | **String** |  | [optional] 
**StartTime** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$GenericResource = Initialize-PSOpenAPIToolsGenericResource  -Class null `
 -DisplayName null `
 -DurationInMillis null `
 -Id null `
 -Result null `
 -StartTime null
```

- Convert the resource to JSON
```powershell
$GenericResource | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

