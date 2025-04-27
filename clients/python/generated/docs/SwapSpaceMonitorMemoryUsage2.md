# SwapSpaceMonitorMemoryUsage2


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_class** | **str** |  | [optional] 
**available_physical_memory** | **int** |  | [optional] 
**available_swap_space** | **int** |  | [optional] 
**total_physical_memory** | **int** |  | [optional] 
**total_swap_space** | **int** |  | [optional] 

## Example

```python
from swaggyjenkins.models.swap_space_monitor_memory_usage2 import SwapSpaceMonitorMemoryUsage2

# TODO update the JSON string below
json = "{}"
# create an instance of SwapSpaceMonitorMemoryUsage2 from a JSON string
swap_space_monitor_memory_usage2_instance = SwapSpaceMonitorMemoryUsage2.from_json(json)
# print the JSON string representation of the object
print(SwapSpaceMonitorMemoryUsage2.to_json())

# convert the object into a dict
swap_space_monitor_memory_usage2_dict = swap_space_monitor_memory_usage2_instance.to_dict()
# create an instance of SwapSpaceMonitorMemoryUsage2 from a dict
swap_space_monitor_memory_usage2_from_dict = SwapSpaceMonitorMemoryUsage2.from_dict(swap_space_monitor_memory_usage2_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


