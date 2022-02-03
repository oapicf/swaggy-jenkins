# ListView
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | **String** |  | [optional] 
**Description** | **String** |  | [optional] 
**Jobs** | [**FreeStyleProject[]**](FreeStyleProject.md) |  | [optional] 
**Name** | **String** |  | [optional] 
**Url** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ListView = Initialize-PSOpenAPIToolsListView  -Class null `
 -Description null `
 -Jobs null `
 -Name null `
 -Url null
```

- Convert the resource to JSON
```powershell
$ListView | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

