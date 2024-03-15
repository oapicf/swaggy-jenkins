# ResponseTimeMonitorData


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_class** | **str** |  | [optional] 
**timestamp** | **int** |  | [optional] 
**average** | **int** |  | [optional] 

## Example

```python
from swaggyjenkins.models.response_time_monitor_data import ResponseTimeMonitorData

# TODO update the JSON string below
json = "{}"
# create an instance of ResponseTimeMonitorData from a JSON string
response_time_monitor_data_instance = ResponseTimeMonitorData.from_json(json)
# print the JSON string representation of the object
print(ResponseTimeMonitorData.to_json())

# convert the object into a dict
response_time_monitor_data_dict = response_time_monitor_data_instance.to_dict()
# create an instance of ResponseTimeMonitorData from a dict
response_time_monitor_data_form_dict = response_time_monitor_data.from_dict(response_time_monitor_data_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


