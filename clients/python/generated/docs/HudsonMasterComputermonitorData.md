# HudsonMasterComputermonitorData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**hudson_node_monitors_swap_space_monitor** | [**SwapSpaceMonitorMemoryUsage2**](SwapSpaceMonitorMemoryUsage2.md) |  | [optional] 
**hudson_node_monitors_temporary_space_monitor** | [**DiskSpaceMonitorDescriptorDiskSpace**](DiskSpaceMonitorDescriptorDiskSpace.md) |  | [optional] 
**hudson_node_monitors_disk_space_monitor** | [**DiskSpaceMonitorDescriptorDiskSpace**](DiskSpaceMonitorDescriptorDiskSpace.md) |  | [optional] 
**hudson_node_monitors_architecture_monitor** | **str** |  | [optional] 
**hudson_node_monitors_response_time_monitor** | [**ResponseTimeMonitorData**](ResponseTimeMonitorData.md) |  | [optional] 
**hudson_node_monitors_clock_monitor** | [**ClockDifference**](ClockDifference.md) |  | [optional] 
**var_class** | **str** |  | [optional] 

## Example

```python
from swaggyjenkins.models.hudson_master_computermonitor_data import HudsonMasterComputermonitorData

# TODO update the JSON string below
json = "{}"
# create an instance of HudsonMasterComputermonitorData from a JSON string
hudson_master_computermonitor_data_instance = HudsonMasterComputermonitorData.from_json(json)
# print the JSON string representation of the object
print(HudsonMasterComputermonitorData.to_json())

# convert the object into a dict
hudson_master_computermonitor_data_dict = hudson_master_computermonitor_data_instance.to_dict()
# create an instance of HudsonMasterComputermonitorData from a dict
hudson_master_computermonitor_data_form_dict = hudson_master_computermonitor_data.from_dict(hudson_master_computermonitor_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


