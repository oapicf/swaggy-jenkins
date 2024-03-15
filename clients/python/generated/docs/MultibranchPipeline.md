# MultibranchPipeline


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**display_name** | **str** |  | [optional] 
**estimated_duration_in_millis** | **int** |  | [optional] 
**latest_run** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**organization** | **str** |  | [optional] 
**weather_score** | **int** |  | [optional] 
**branch_names** | **List[str]** |  | [optional] 
**number_of_failing_branches** | **int** |  | [optional] 
**number_of_failing_pull_requests** | **int** |  | [optional] 
**number_of_successful_branches** | **int** |  | [optional] 
**number_of_successful_pull_requests** | **int** |  | [optional] 
**total_number_of_branches** | **int** |  | [optional] 
**total_number_of_pull_requests** | **int** |  | [optional] 
**var_class** | **str** |  | [optional] 

## Example

```python
from swaggyjenkins.models.multibranch_pipeline import MultibranchPipeline

# TODO update the JSON string below
json = "{}"
# create an instance of MultibranchPipeline from a JSON string
multibranch_pipeline_instance = MultibranchPipeline.from_json(json)
# print the JSON string representation of the object
print(MultibranchPipeline.to_json())

# convert the object into a dict
multibranch_pipeline_dict = multibranch_pipeline_instance.to_dict()
# create an instance of MultibranchPipeline from a dict
multibranch_pipeline_form_dict = multibranch_pipeline.from_dict(multibranch_pipeline_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


