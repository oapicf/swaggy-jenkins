# HudsonMasterComputer


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_class** | **str** |  | [optional] 
**display_name** | **str** |  | [optional] 
**executors** | [**List[HudsonMasterComputerexecutors]**](HudsonMasterComputerexecutors.md) |  | [optional] 
**icon** | **str** |  | [optional] 
**icon_class_name** | **str** |  | [optional] 
**idle** | **bool** |  | [optional] 
**jnlp_agent** | **bool** |  | [optional] 
**launch_supported** | **bool** |  | [optional] 
**load_statistics** | [**Label1**](Label1.md) |  | [optional] 
**manual_launch_allowed** | **bool** |  | [optional] 
**monitor_data** | [**HudsonMasterComputermonitorData**](HudsonMasterComputermonitorData.md) |  | [optional] 
**num_executors** | **int** |  | [optional] 
**offline** | **bool** |  | [optional] 
**offline_cause** | **str** |  | [optional] 
**offline_cause_reason** | **str** |  | [optional] 
**temporarily_offline** | **bool** |  | [optional] 

## Example

```python
from swaggyjenkins.models.hudson_master_computer import HudsonMasterComputer

# TODO update the JSON string below
json = "{}"
# create an instance of HudsonMasterComputer from a JSON string
hudson_master_computer_instance = HudsonMasterComputer.from_json(json)
# print the JSON string representation of the object
print(HudsonMasterComputer.to_json())

# convert the object into a dict
hudson_master_computer_dict = hudson_master_computer_instance.to_dict()
# create an instance of HudsonMasterComputer from a dict
hudson_master_computer_from_dict = HudsonMasterComputer.from_dict(hudson_master_computer_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


