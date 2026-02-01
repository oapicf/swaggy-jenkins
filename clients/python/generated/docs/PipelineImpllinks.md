# PipelineImpllinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**Link**](Link.md) |  | [optional] 
**actions** | [**Link**](Link.md) |  | [optional] 
**runs** | [**Link**](Link.md) |  | [optional] 
**queue** | [**Link**](Link.md) |  | [optional] 
**var_class** | **str** |  | [optional] 

## Example

```python
from swaggyjenkins.models.pipeline_impllinks import PipelineImpllinks

# TODO update the JSON string below
json = "{}"
# create an instance of PipelineImpllinks from a JSON string
pipeline_impllinks_instance = PipelineImpllinks.from_json(json)
# print the JSON string representation of the object
print(PipelineImpllinks.to_json())

# convert the object into a dict
pipeline_impllinks_dict = pipeline_impllinks_instance.to_dict()
# create an instance of PipelineImpllinks from a dict
pipeline_impllinks_from_dict = PipelineImpllinks.from_dict(pipeline_impllinks_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


