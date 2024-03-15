# PipelineImpl


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_class** | **str** |  | [optional] 
**display_name** | **str** |  | [optional] 
**estimated_duration_in_millis** | **int** |  | [optional] 
**full_name** | **str** |  | [optional] 
**latest_run** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**organization** | **str** |  | [optional] 
**weather_score** | **int** |  | [optional] 
**links** | [**PipelineImpllinks**](PipelineImpllinks.md) |  | [optional] 

## Example

```python
from swaggyjenkins.models.pipeline_impl import PipelineImpl

# TODO update the JSON string below
json = "{}"
# create an instance of PipelineImpl from a JSON string
pipeline_impl_instance = PipelineImpl.from_json(json)
# print the JSON string representation of the object
print(PipelineImpl.to_json())

# convert the object into a dict
pipeline_impl_dict = pipeline_impl_instance.to_dict()
# create an instance of PipelineImpl from a dict
pipeline_impl_form_dict = pipeline_impl.from_dict(pipeline_impl_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


