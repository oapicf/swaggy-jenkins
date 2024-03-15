# PipelineBranchesitempullRequest


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**links** | [**PipelineBranchesitempullRequestlinks**](PipelineBranchesitempullRequestlinks.md) |  | [optional] 
**author** | **str** |  | [optional] 
**id** | **str** |  | [optional] 
**title** | **str** |  | [optional] 
**url** | **str** |  | [optional] 
**var_class** | **str** |  | [optional] 

## Example

```python
from swaggyjenkins.models.pipeline_branchesitempull_request import PipelineBranchesitempullRequest

# TODO update the JSON string below
json = "{}"
# create an instance of PipelineBranchesitempullRequest from a JSON string
pipeline_branchesitempull_request_instance = PipelineBranchesitempullRequest.from_json(json)
# print the JSON string representation of the object
print(PipelineBranchesitempullRequest.to_json())

# convert the object into a dict
pipeline_branchesitempull_request_dict = pipeline_branchesitempull_request_instance.to_dict()
# create an instance of PipelineBranchesitempullRequest from a dict
pipeline_branchesitempull_request_form_dict = pipeline_branchesitempull_request.from_dict(pipeline_branchesitempull_request_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


