# ListView


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_class** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**jobs** | [**List[FreeStyleProject]**](FreeStyleProject.md) |  | [optional] 
**name** | **str** |  | [optional] 
**url** | **str** |  | [optional] 

## Example

```python
from swaggyjenkins.models.list_view import ListView

# TODO update the JSON string below
json = "{}"
# create an instance of ListView from a JSON string
list_view_instance = ListView.from_json(json)
# print the JSON string representation of the object
print(ListView.to_json())

# convert the object into a dict
list_view_dict = list_view_instance.to_dict()
# create an instance of ListView from a dict
list_view_form_dict = list_view.from_dict(list_view_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


