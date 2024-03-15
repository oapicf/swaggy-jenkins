# FavoriteImpl


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_class** | **str** |  | [optional] 
**links** | [**FavoriteImpllinks**](FavoriteImpllinks.md) |  | [optional] 
**item** | [**PipelineImpl**](PipelineImpl.md) |  | [optional] 

## Example

```python
from swaggyjenkins.models.favorite_impl import FavoriteImpl

# TODO update the JSON string below
json = "{}"
# create an instance of FavoriteImpl from a JSON string
favorite_impl_instance = FavoriteImpl.from_json(json)
# print the JSON string representation of the object
print(FavoriteImpl.to_json())

# convert the object into a dict
favorite_impl_dict = favorite_impl_instance.to_dict()
# create an instance of FavoriteImpl from a dict
favorite_impl_form_dict = favorite_impl.from_dict(favorite_impl_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


