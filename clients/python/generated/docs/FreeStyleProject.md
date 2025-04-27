# FreeStyleProject


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_class** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**url** | **str** |  | [optional] 
**color** | **str** |  | [optional] 
**actions** | [**List[FreeStyleProjectactions]**](FreeStyleProjectactions.md) |  | [optional] 
**description** | **str** |  | [optional] 
**display_name** | **str** |  | [optional] 
**display_name_or_null** | **str** |  | [optional] 
**full_display_name** | **str** |  | [optional] 
**full_name** | **str** |  | [optional] 
**buildable** | **bool** |  | [optional] 
**builds** | [**List[FreeStyleBuild]**](FreeStyleBuild.md) |  | [optional] 
**first_build** | [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] 
**health_report** | [**List[FreeStyleProjecthealthReport]**](FreeStyleProjecthealthReport.md) |  | [optional] 
**in_queue** | **bool** |  | [optional] 
**keep_dependencies** | **bool** |  | [optional] 
**last_build** | [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] 
**last_completed_build** | [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] 
**last_failed_build** | **str** |  | [optional] 
**last_stable_build** | [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] 
**last_successful_build** | [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] 
**last_unstable_build** | **str** |  | [optional] 
**last_unsuccessful_build** | **str** |  | [optional] 
**next_build_number** | **int** |  | [optional] 
**queue_item** | **str** |  | [optional] 
**concurrent_build** | **bool** |  | [optional] 
**scm** | [**NullSCM**](NullSCM.md) |  | [optional] 

## Example

```python
from swaggyjenkins.models.free_style_project import FreeStyleProject

# TODO update the JSON string below
json = "{}"
# create an instance of FreeStyleProject from a JSON string
free_style_project_instance = FreeStyleProject.from_json(json)
# print the JSON string representation of the object
print(FreeStyleProject.to_json())

# convert the object into a dict
free_style_project_dict = free_style_project_instance.to_dict()
# create an instance of FreeStyleProject from a dict
free_style_project_from_dict = FreeStyleProject.from_dict(free_style_project_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


