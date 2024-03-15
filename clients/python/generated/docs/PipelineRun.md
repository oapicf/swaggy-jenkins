# PipelineRun


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_class** | **str** |  | [optional] 
**artifacts** | [**List[PipelineRunartifacts]**](PipelineRunartifacts.md) |  | [optional] 
**duration_in_millis** | **int** |  | [optional] 
**estimated_duration_in_millis** | **int** |  | [optional] 
**en_queue_time** | **str** |  | [optional] 
**end_time** | **str** |  | [optional] 
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
from swaggyjenkins.models.pipeline_run import PipelineRun

# TODO update the JSON string below
json = "{}"
# create an instance of PipelineRun from a JSON string
pipeline_run_instance = PipelineRun.from_json(json)
# print the JSON string representation of the object
print(PipelineRun.to_json())

# convert the object into a dict
pipeline_run_dict = pipeline_run_instance.to_dict()
# create an instance of PipelineRun from a dict
pipeline_run_form_dict = pipeline_run.from_dict(pipeline_run_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


