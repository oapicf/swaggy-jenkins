# StringParameterValue


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_class** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**value** | **str** |  | [optional] 

## Example

```python
from swaggyjenkins.models.string_parameter_value import StringParameterValue

# TODO update the JSON string below
json = "{}"
# create an instance of StringParameterValue from a JSON string
string_parameter_value_instance = StringParameterValue.from_json(json)
# print the JSON string representation of the object
print(StringParameterValue.to_json())

# convert the object into a dict
string_parameter_value_dict = string_parameter_value_instance.to_dict()
# create an instance of StringParameterValue from a dict
string_parameter_value_form_dict = string_parameter_value.from_dict(string_parameter_value_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


