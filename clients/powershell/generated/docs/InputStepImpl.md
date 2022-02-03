# InputStepImpl
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | **String** |  | [optional] 
**Links** | [**InputStepImpllinks**](InputStepImpllinks.md) |  | [optional] 
**Id** | **String** |  | [optional] 
**Message** | **String** |  | [optional] 
**Ok** | **String** |  | [optional] 
**Parameters** | [**StringParameterDefinition[]**](StringParameterDefinition.md) |  | [optional] 
**Submitter** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$InputStepImpl = Initialize-PSOpenAPIToolsInputStepImpl  -Class null `
 -Links null `
 -Id null `
 -Message null `
 -Ok null `
 -Parameters null `
 -Submitter null
```

- Convert the resource to JSON
```powershell
$InputStepImpl | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

