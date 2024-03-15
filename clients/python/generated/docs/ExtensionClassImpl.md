# ExtensionClassImpl


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_class** | **str** |  | [optional] 
**links** | [**ExtensionClassImpllinks**](ExtensionClassImpllinks.md) |  | [optional] 
**classes** | **List[str]** |  | [optional] 

## Example

```python
from swaggyjenkins.models.extension_class_impl import ExtensionClassImpl

# TODO update the JSON string below
json = "{}"
# create an instance of ExtensionClassImpl from a JSON string
extension_class_impl_instance = ExtensionClassImpl.from_json(json)
# print the JSON string representation of the object
print(ExtensionClassImpl.to_json())

# convert the object into a dict
extension_class_impl_dict = extension_class_impl_instance.to_dict()
# create an instance of ExtensionClassImpl from a dict
extension_class_impl_form_dict = extension_class_impl.from_dict(extension_class_impl_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


