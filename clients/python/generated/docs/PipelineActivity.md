# PipelineActivity


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_class** | **str** |  | [optional] 
**artifacts** | [**List[PipelineActivityartifacts]**](PipelineActivityartifacts.md) |  | [optional] 
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
from swaggyjenkins.models.pipeline_activity import PipelineActivity

# TODO update the JSON string below
json = "{}"
# create an instance of PipelineActivity from a JSON string
pipeline_activity_instance = PipelineActivity.from_json(json)
# print the JSON string representation of the object
print(PipelineActivity.to_json())

# convert the object into a dict
pipeline_activity_dict = pipeline_activity_instance.to_dict()
# create an instance of PipelineActivity from a dict
pipeline_activity_form_dict = pipeline_activity.from_dict(pipeline_activity_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


