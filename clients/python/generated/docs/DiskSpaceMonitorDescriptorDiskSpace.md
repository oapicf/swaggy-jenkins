# DiskSpaceMonitorDescriptorDiskSpace


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_class** | **str** |  | [optional] 
**timestamp** | **int** |  | [optional] 
**path** | **str** |  | [optional] 
**size** | **int** |  | [optional] 

## Example

```python
from swaggyjenkins.models.disk_space_monitor_descriptor_disk_space import DiskSpaceMonitorDescriptorDiskSpace

# TODO update the JSON string below
json = "{}"
# create an instance of DiskSpaceMonitorDescriptorDiskSpace from a JSON string
disk_space_monitor_descriptor_disk_space_instance = DiskSpaceMonitorDescriptorDiskSpace.from_json(json)
# print the JSON string representation of the object
print(DiskSpaceMonitorDescriptorDiskSpace.to_json())

# convert the object into a dict
disk_space_monitor_descriptor_disk_space_dict = disk_space_monitor_descriptor_disk_space_instance.to_dict()
# create an instance of DiskSpaceMonitorDescriptorDiskSpace from a dict
disk_space_monitor_descriptor_disk_space_from_dict = DiskSpaceMonitorDescriptorDiskSpace.from_dict(disk_space_monitor_descriptor_disk_space_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


