# DefaultCrumbIssuer
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | **String** |  | [optional] 
**Crumb** | **String** |  | [optional] 
**CrumbRequestField** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$DefaultCrumbIssuer = Initialize-PSOpenAPIToolsDefaultCrumbIssuer  -Class null `
 -Crumb null `
 -CrumbRequestField null
```

- Convert the resource to JSON
```powershell
$DefaultCrumbIssuer | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

