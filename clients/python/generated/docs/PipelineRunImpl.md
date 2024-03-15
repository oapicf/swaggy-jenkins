# PipelineRunImpl


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_class** | **str** |  | [optional] 
**links** | [**PipelineRunImpllinks**](PipelineRunImpllinks.md) |  | [optional] 
**duration_in_millis** | **int** |  | [optional] 
**en_queue_time** | **str** |  | [optional] 
**end_time** | **str** |  | [optional] 
**estimated_duration_in_millis** | **int** |  | [optional] 
**id** | **str** |  | [optional] 
**organization** | **str** |  | [optional] 
**pipeline** | **str** |  | [optional] 
**result** | **str** |  | [optional] 
**run_summary** | **str** |  | [optional] 
**start_time** | **str** |  | [optional] 
**state** | **str** |  | [optional] 
**type** | **str** |  | [optional] 
**commit_id** | **str** |  | [optional] 

## Example

```python
from swaggyjenkins.models.pipeline_run_impl import PipelineRunImpl

# TODO update the JSON string below
json = "{}"
# create an instance of PipelineRunImpl from a JSON string
pipeline_run_impl_instance = PipelineRunImpl.from_json(json)
# print the JSON string representation of the object
print(PipelineRunImpl.to_json())

# convert the object into a dict
pipeline_run_impl_dict = pipeline_run_impl_instance.to_dict()
# create an instance of PipelineRunImpl from a dict
pipeline_run_impl_form_dict = pipeline_run_impl.from_dict(pipeline_run_impl_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


