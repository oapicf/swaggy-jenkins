# ExtensionClassImpl
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | **String** |  | [optional] 
**Links** | [**ExtensionClassImpllinks**](ExtensionClassImpllinks.md) |  | [optional] 
**Classes** | **String[]** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ExtensionClassImpl = Initialize-PSOpenAPIToolsExtensionClassImpl  -Class null `
 -Links null `
 -Classes null
```

- Convert the resource to JSON
```powershell
$ExtensionClassImpl | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

