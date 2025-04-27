# ClassesByClass


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**classes** | **List[str]** |  | [optional] 
**var_class** | **str** |  | [optional] 

## Example

```python
from swaggyjenkins.models.classes_by_class import ClassesByClass

# TODO update the JSON string below
json = "{}"
# create an instance of ClassesByClass from a JSON string
classes_by_class_instance = ClassesByClass.from_json(json)
# print the JSON string representation of the object
print(ClassesByClass.to_json())

# convert the object into a dict
classes_by_class_dict = classes_by_class_instance.to_dict()
# create an instance of ClassesByClass from a dict
classes_by_class_from_dict = ClassesByClass.from_dict(classes_by_class_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


