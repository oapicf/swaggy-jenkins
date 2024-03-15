# PipelineRunartifacts


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**size** | **int** |  | [optional] 
**url** | **str** |  | [optional] 
**var_class** | **str** |  | [optional] 

## Example

```python
from swaggyjenkins.models.pipeline_runartifacts import PipelineRunartifacts

# TODO update the JSON string below
json = "{}"
# create an instance of PipelineRunartifacts from a JSON string
pipeline_runartifacts_instance = PipelineRunartifacts.from_json(json)
# print the JSON string representation of the object
print(PipelineRunartifacts.to_json())

# convert the object into a dict
pipeline_runartifacts_dict = pipeline_runartifacts_instance.to_dict()
# create an instance of PipelineRunartifacts from a dict
pipeline_runartifacts_form_dict = pipeline_runartifacts.from_dict(pipeline_runartifacts_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


