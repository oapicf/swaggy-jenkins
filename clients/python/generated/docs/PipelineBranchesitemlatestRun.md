# PipelineBranchesitemlatestRun


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
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
from swaggyjenkins.models.pipeline_branchesitemlatest_run import PipelineBranchesitemlatestRun

# TODO update the JSON string below
json = "{}"
# create an instance of PipelineBranchesitemlatestRun from a JSON string
pipeline_branchesitemlatest_run_instance = PipelineBranchesitemlatestRun.from_json(json)
# print the JSON string representation of the object
print(PipelineBranchesitemlatestRun.to_json())

# convert the object into a dict
pipeline_branchesitemlatest_run_dict = pipeline_branchesitemlatest_run_instance.to_dict()
# create an instance of PipelineBranchesitemlatestRun from a dict
pipeline_branchesitemlatest_run_from_dict = PipelineBranchesitemlatestRun.from_dict(pipeline_branchesitemlatest_run_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


