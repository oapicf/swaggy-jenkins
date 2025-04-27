# BranchImpl


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_class** | **str** |  | [optional] 
**display_name** | **str** |  | [optional] 
**estimated_duration_in_millis** | **int** |  | [optional] 
**full_display_name** | **str** |  | [optional] 
**full_name** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**organization** | **str** |  | [optional] 
**parameters** | [**List[StringParameterDefinition]**](StringParameterDefinition.md) |  | [optional] 
**permissions** | [**BranchImplpermissions**](BranchImplpermissions.md) |  | [optional] 
**weather_score** | **int** |  | [optional] 
**pull_request** | **str** |  | [optional] 
**links** | [**BranchImpllinks**](BranchImpllinks.md) |  | [optional] 
**latest_run** | [**PipelineRunImpl**](PipelineRunImpl.md) |  | [optional] 

## Example

```python
from swaggyjenkins.models.branch_impl import BranchImpl

# TODO update the JSON string below
json = "{}"
# create an instance of BranchImpl from a JSON string
branch_impl_instance = BranchImpl.from_json(json)
# print the JSON string representation of the object
print(BranchImpl.to_json())

# convert the object into a dict
branch_impl_dict = branch_impl_instance.to_dict()
# create an instance of BranchImpl from a dict
branch_impl_from_dict = BranchImpl.from_dict(branch_impl_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


