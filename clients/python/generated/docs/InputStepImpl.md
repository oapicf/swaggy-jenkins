# InputStepImpl


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_class** | **str** |  | [optional] 
**links** | [**InputStepImpllinks**](InputStepImpllinks.md) |  | [optional] 
**id** | **str** |  | [optional] 
**message** | **str** |  | [optional] 
**ok** | **str** |  | [optional] 
**parameters** | [**List[StringParameterDefinition]**](StringParameterDefinition.md) |  | [optional] 
**submitter** | **str** |  | [optional] 

## Example

```python
from swaggyjenkins.models.input_step_impl import InputStepImpl

# TODO update the JSON string below
json = "{}"
# create an instance of InputStepImpl from a JSON string
input_step_impl_instance = InputStepImpl.from_json(json)
# print the JSON string representation of the object
print(InputStepImpl.to_json())

# convert the object into a dict
input_step_impl_dict = input_step_impl_instance.to_dict()
# create an instance of InputStepImpl from a dict
input_step_impl_from_dict = InputStepImpl.from_dict(input_step_impl_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


