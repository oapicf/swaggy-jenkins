# StringParameterDefinition


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_class** | **str** |  | [optional] 
**default_parameter_value** | [**StringParameterValue**](StringParameterValue.md) |  | [optional] 
**description** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**type** | **str** |  | [optional] 

## Example

```python
from swaggyjenkins.models.string_parameter_definition import StringParameterDefinition

# TODO update the JSON string below
json = "{}"
# create an instance of StringParameterDefinition from a JSON string
string_parameter_definition_instance = StringParameterDefinition.from_json(json)
# print the JSON string representation of the object
print(StringParameterDefinition.to_json())

# convert the object into a dict
string_parameter_definition_dict = string_parameter_definition_instance.to_dict()
# create an instance of StringParameterDefinition from a dict
string_parameter_definition_from_dict = StringParameterDefinition.from_dict(string_parameter_definition_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


