# ComputerSet


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_class** | **str** |  | [optional] 
**busy_executors** | **int** |  | [optional] 
**computer** | [**List[HudsonMasterComputer]**](HudsonMasterComputer.md) |  | [optional] 
**display_name** | **str** |  | [optional] 
**total_executors** | **int** |  | [optional] 

## Example

```python
from swaggyjenkins.models.computer_set import ComputerSet

# TODO update the JSON string below
json = "{}"
# create an instance of ComputerSet from a JSON string
computer_set_instance = ComputerSet.from_json(json)
# print the JSON string representation of the object
print(ComputerSet.to_json())

# convert the object into a dict
computer_set_dict = computer_set_instance.to_dict()
# create an instance of ComputerSet from a dict
computer_set_from_dict = ComputerSet.from_dict(computer_set_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


