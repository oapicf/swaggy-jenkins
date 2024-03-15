# PipelineBranchesitem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**display_name** | **str** |  | [optional] 
**estimated_duration_in_millis** | **int** |  | [optional] 
**name** | **str** |  | [optional] 
**weather_score** | **int** |  | [optional] 
**latest_run** | [**PipelineBranchesitemlatestRun**](PipelineBranchesitemlatestRun.md) |  | [optional] 
**organization** | **str** |  | [optional] 
**pull_request** | [**PipelineBranchesitempullRequest**](PipelineBranchesitempullRequest.md) |  | [optional] 
**total_number_of_pull_requests** | **int** |  | [optional] 
**var_class** | **str** |  | [optional] 

## Example

```python
from swaggyjenkins.models.pipeline_branchesitem import PipelineBranchesitem

# TODO update the JSON string below
json = "{}"
# create an instance of PipelineBranchesitem from a JSON string
pipeline_branchesitem_instance = PipelineBranchesitem.from_json(json)
# print the JSON string representation of the object
print(PipelineBranchesitem.to_json())

# convert the object into a dict
pipeline_branchesitem_dict = pipeline_branchesitem_instance.to_dict()
# create an instance of PipelineBranchesitem from a dict
pipeline_branchesitem_form_dict = pipeline_branchesitem.from_dict(pipeline_branchesitem_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


