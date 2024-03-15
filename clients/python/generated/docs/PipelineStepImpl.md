# PipelineStepImpl


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_class** | **str** |  | [optional] 
**links** | [**PipelineStepImpllinks**](PipelineStepImpllinks.md) |  | [optional] 
**display_name** | **str** |  | [optional] 
**duration_in_millis** | **int** |  | [optional] 
**id** | **str** |  | [optional] 
**input** | [**InputStepImpl**](InputStepImpl.md) |  | [optional] 
**result** | **str** |  | [optional] 
**start_time** | **str** |  | [optional] 
**state** | **str** |  | [optional] 

## Example

```python
from swaggyjenkins.models.pipeline_step_impl import PipelineStepImpl

# TODO update the JSON string below
json = "{}"
# create an instance of PipelineStepImpl from a JSON string
pipeline_step_impl_instance = PipelineStepImpl.from_json(json)
# print the JSON string representation of the object
print(PipelineStepImpl.to_json())

# convert the object into a dict
pipeline_step_impl_dict = pipeline_step_impl_instance.to_dict()
# create an instance of PipelineStepImpl from a dict
pipeline_step_impl_form_dict = pipeline_step_impl.from_dict(pipeline_step_impl_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


