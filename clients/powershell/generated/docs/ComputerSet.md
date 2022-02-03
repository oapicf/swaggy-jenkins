# ComputerSet
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Class** | **String** |  | [optional] 
**BusyExecutors** | **Int32** |  | [optional] 
**Computer** | [**HudsonMasterComputer[]**](HudsonMasterComputer.md) |  | [optional] 
**DisplayName** | **String** |  | [optional] 
**TotalExecutors** | **Int32** |  | [optional] 

## Examples

- Prepare the resource
```powershell
$ComputerSet = Initialize-PSOpenAPIToolsComputerSet  -Class null `
 -BusyExecutors null `
 -Computer null `
 -DisplayName null `
 -TotalExecutors null
```

- Convert the resource to JSON
```powershell
$ComputerSet | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

