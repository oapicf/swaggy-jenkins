# FreeStyleBuild


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_class** | **str** |  | [optional] 
**number** | **int** |  | [optional] 
**url** | **str** |  | [optional] 
**actions** | [**List[CauseAction]**](CauseAction.md) |  | [optional] 
**building** | **bool** |  | [optional] 
**description** | **str** |  | [optional] 
**display_name** | **str** |  | [optional] 
**duration** | **int** |  | [optional] 
**estimated_duration** | **int** |  | [optional] 
**executor** | **str** |  | [optional] 
**full_display_name** | **str** |  | [optional] 
**id** | **str** |  | [optional] 
**keep_log** | **bool** |  | [optional] 
**queue_id** | **int** |  | [optional] 
**result** | **str** |  | [optional] 
**timestamp** | **int** |  | [optional] 
**built_on** | **str** |  | [optional] 
**change_set** | [**EmptyChangeLogSet**](EmptyChangeLogSet.md) |  | [optional] 

## Example

```python
from swaggyjenkins.models.free_style_build import FreeStyleBuild

# TODO update the JSON string below
json = "{}"
# create an instance of FreeStyleBuild from a JSON string
free_style_build_instance = FreeStyleBuild.from_json(json)
# print the JSON string representation of the object
print(FreeStyleBuild.to_json())

# convert the object into a dict
free_style_build_dict = free_style_build_instance.to_dict()
# create an instance of FreeStyleBuild from a dict
free_style_build_form_dict = free_style_build.from_dict(free_style_build_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


