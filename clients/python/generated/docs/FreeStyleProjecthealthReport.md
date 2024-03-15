# FreeStyleProjecthealthReport


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **str** |  | [optional] 
**icon_class_name** | **str** |  | [optional] 
**icon_url** | **str** |  | [optional] 
**score** | **int** |  | [optional] 
**var_class** | **str** |  | [optional] 

## Example

```python
from swaggyjenkins.models.free_style_projecthealth_report import FreeStyleProjecthealthReport

# TODO update the JSON string below
json = "{}"
# create an instance of FreeStyleProjecthealthReport from a JSON string
free_style_projecthealth_report_instance = FreeStyleProjecthealthReport.from_json(json)
# print the JSON string representation of the object
print(FreeStyleProjecthealthReport.to_json())

# convert the object into a dict
free_style_projecthealth_report_dict = free_style_projecthealth_report_instance.to_dict()
# create an instance of FreeStyleProjecthealthReport from a dict
free_style_projecthealth_report_form_dict = free_style_projecthealth_report.from_dict(free_style_projecthealth_report_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


