# ExtensionClassContainerImpl1map
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**IoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl** | [**ExtensionClassImpl**](ExtensionClassImpl.md) |  | [optional] 
**IoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl** | [**ExtensionClassImpl**](ExtensionClassImpl.md) |  | [optional] 
**Class** | **String** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ExtensionClassContainerImpl1map = Initialize-PSOpenAPIToolsExtensionClassContainerImpl1map  -IoJenkinsBlueoceanServiceEmbeddedRestPipelineImpl null `
 -IoJenkinsBlueoceanServiceEmbeddedRestMultiBranchPipelineImpl null `
 -Class null
```

- Convert the resource to JSON
```powershell
$ExtensionClassContainerImpl1map | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

