# GenericResource


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_class** | **str** |  | [optional] 
**display_name** | **str** |  | [optional] 
**duration_in_millis** | **int** |  | [optional] 
**id** | **str** |  | [optional] 
**result** | **str** |  | [optional] 
**start_time** | **str** |  | [optional] 

## Example

```python
from swaggyjenkins.models.generic_resource import GenericResource

# TODO update the JSON string below
json = "{}"
# create an instance of GenericResource from a JSON string
generic_resource_instance = GenericResource.from_json(json)
# print the JSON string representation of the object
print(GenericResource.to_json())

# convert the object into a dict
generic_resource_dict = generic_resource_instance.to_dict()
# create an instance of GenericResource from a dict
generic_resource_from_dict = GenericResource.from_dict(generic_resource_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


