# PipelineRunImpllinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**nodes** | [**Link**](Link.md) |  | [optional] 
**log** | [**Link**](Link.md) |  | [optional] 
**var_self** | [**Link**](Link.md) |  | [optional] 
**actions** | [**Link**](Link.md) |  | [optional] 
**steps** | [**Link**](Link.md) |  | [optional] 
**var_class** | **str** |  | [optional] 

## Example

```python
from swaggyjenkins.models.pipeline_run_impllinks import PipelineRunImpllinks

# TODO update the JSON string below
json = "{}"
# create an instance of PipelineRunImpllinks from a JSON string
pipeline_run_impllinks_instance = PipelineRunImpllinks.from_json(json)
# print the JSON string representation of the object
print(PipelineRunImpllinks.to_json())

# convert the object into a dict
pipeline_run_impllinks_dict = pipeline_run_impllinks_instance.to_dict()
# create an instance of PipelineRunImpllinks from a dict
pipeline_run_impllinks_from_dict = PipelineRunImpllinks.from_dict(pipeline_run_impllinks_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


