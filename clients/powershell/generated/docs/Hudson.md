# Hudson
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | **String** |  | [optional] 
**AssignedLabels** | [**HudsonassignedLabels[]**](HudsonassignedLabels.md) |  | [optional] 
**Mode** | **String** |  | [optional] 
**NodeDescription** | **String** |  | [optional] 
**NodeName** | **String** |  | [optional] 
**NumExecutors** | **Int32** |  | [optional] 
**Description** | **String** |  | [optional] 
**Jobs** | [**FreeStyleProject[]**](FreeStyleProject.md) |  | [optional] 
**PrimaryView** | [**AllView**](AllView.md) |  | [optional] 
**QuietingDown** | **Boolean** |  | [optional] 
**SlaveAgentPort** | **Int32** |  | [optional] 
**UnlabeledLoad** | [**UnlabeledLoadStatistics**](UnlabeledLoadStatistics.md) |  | [optional] 
**UseCrumbs** | **Boolean** |  | [optional] 
**UseSecurity** | **Boolean** |  | [optional] 
**Views** | [**AllView[]**](AllView.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$Hudson = Initialize-PSOpenAPIToolsHudson  -Class null `
 -AssignedLabels null `
 -Mode null `
 -NodeDescription null `
 -NodeName null `
 -NumExecutors null `
 -Description null `
 -Jobs null `
 -PrimaryView null `
 -QuietingDown null `
 -SlaveAgentPort null `
 -UnlabeledLoad null `
 -UseCrumbs null `
 -UseSecurity null `
 -Views null
```

- Convert the resource to JSON
```powershell
$Hudson | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

