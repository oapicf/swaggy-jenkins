# Hudson


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_class** | **str** |  | [optional] 
**assigned_labels** | [**List[HudsonassignedLabels]**](HudsonassignedLabels.md) |  | [optional] 
**mode** | **str** |  | [optional] 
**node_description** | **str** |  | [optional] 
**node_name** | **str** |  | [optional] 
**num_executors** | **int** |  | [optional] 
**description** | **str** |  | [optional] 
**jobs** | [**List[FreeStyleProject]**](FreeStyleProject.md) |  | [optional] 
**primary_view** | [**AllView**](AllView.md) |  | [optional] 
**quieting_down** | **bool** |  | [optional] 
**slave_agent_port** | **int** |  | [optional] 
**unlabeled_load** | [**UnlabeledLoadStatistics**](UnlabeledLoadStatistics.md) |  | [optional] 
**use_crumbs** | **bool** |  | [optional] 
**use_security** | **bool** |  | [optional] 
**views** | [**List[AllView]**](AllView.md) |  | [optional] 

## Example

```python
from swaggyjenkins.models.hudson import Hudson

# TODO update the JSON string below
json = "{}"
# create an instance of Hudson from a JSON string
hudson_instance = Hudson.from_json(json)
# print the JSON string representation of the object
print(Hudson.to_json())

# convert the object into a dict
hudson_dict = hudson_instance.to_dict()
# create an instance of Hudson from a dict
hudson_from_dict = Hudson.from_dict(hudson_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


