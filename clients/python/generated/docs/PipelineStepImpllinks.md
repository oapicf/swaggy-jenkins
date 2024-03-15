# PipelineStepImpllinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**Link**](Link.md) |  | [optional] 
**actions** | [**Link**](Link.md) |  | [optional] 
**var_class** | **str** |  | [optional] 

## Example

```python
from swaggyjenkins.models.pipeline_step_impllinks import PipelineStepImpllinks

# TODO update the JSON string below
json = "{}"
# create an instance of PipelineStepImpllinks from a JSON string
pipeline_step_impllinks_instance = PipelineStepImpllinks.from_json(json)
# print the JSON string representation of the object
print(PipelineStepImpllinks.to_json())

# convert the object into a dict
pipeline_step_impllinks_dict = pipeline_step_impllinks_instance.to_dict()
# create an instance of PipelineStepImpllinks from a dict
pipeline_step_impllinks_form_dict = pipeline_step_impllinks.from_dict(pipeline_step_impllinks_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


