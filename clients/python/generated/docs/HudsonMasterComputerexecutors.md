# HudsonMasterComputerexecutors


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**current_executable** | [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] 
**idle** | **bool** |  | [optional] 
**likely_stuck** | **bool** |  | [optional] 
**number** | **int** |  | [optional] 
**progress** | **int** |  | [optional] 
**var_class** | **str** |  | [optional] 

## Example

```python
from swaggyjenkins.models.hudson_master_computerexecutors import HudsonMasterComputerexecutors

# TODO update the JSON string below
json = "{}"
# create an instance of HudsonMasterComputerexecutors from a JSON string
hudson_master_computerexecutors_instance = HudsonMasterComputerexecutors.from_json(json)
# print the JSON string representation of the object
print(HudsonMasterComputerexecutors.to_json())

# convert the object into a dict
hudson_master_computerexecutors_dict = hudson_master_computerexecutors_instance.to_dict()
# create an instance of HudsonMasterComputerexecutors from a dict
hudson_master_computerexecutors_from_dict = HudsonMasterComputerexecutors.from_dict(hudson_master_computerexecutors_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


