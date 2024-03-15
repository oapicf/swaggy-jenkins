# PipelineActivityartifacts


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**size** | **int** |  | [optional] 
**url** | **str** |  | [optional] 
**var_class** | **str** |  | [optional] 

## Example

```python
from swaggyjenkins.models.pipeline_activityartifacts import PipelineActivityartifacts

# TODO update the JSON string below
json = "{}"
# create an instance of PipelineActivityartifacts from a JSON string
pipeline_activityartifacts_instance = PipelineActivityartifacts.from_json(json)
# print the JSON string representation of the object
print(PipelineActivityartifacts.to_json())

# convert the object into a dict
pipeline_activityartifacts_dict = pipeline_activityartifacts_instance.to_dict()
# create an instance of PipelineActivityartifacts from a dict
pipeline_activityartifacts_form_dict = pipeline_activityartifacts.from_dict(pipeline_activityartifacts_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


