# PipelinelatestRun


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**artifacts** | [**List[PipelinelatestRunartifacts]**](PipelinelatestRunartifacts.md) |  | [optional] 
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
**var_class** | **str** |  | [optional] 

## Example

```python
from swaggyjenkins.models.pipelinelatest_run import PipelinelatestRun

# TODO update the JSON string below
json = "{}"
# create an instance of PipelinelatestRun from a JSON string
pipelinelatest_run_instance = PipelinelatestRun.from_json(json)
# print the JSON string representation of the object
print(PipelinelatestRun.to_json())

# convert the object into a dict
pipelinelatest_run_dict = pipelinelatest_run_instance.to_dict()
# create an instance of PipelinelatestRun from a dict
pipelinelatest_run_from_dict = PipelinelatestRun.from_dict(pipelinelatest_run_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


