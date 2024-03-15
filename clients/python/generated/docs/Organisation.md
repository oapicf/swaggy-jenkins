# Organisation


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_class** | **str** |  | [optional] 
**name** | **str** |  | [optional] 

## Example

```python
from swaggyjenkins.models.organisation import Organisation

# TODO update the JSON string below
json = "{}"
# create an instance of Organisation from a JSON string
organisation_instance = Organisation.from_json(json)
# print the JSON string representation of the object
print(Organisation.to_json())

# convert the object into a dict
organisation_dict = organisation_instance.to_dict()
# create an instance of Organisation from a dict
organisation_form_dict = organisation.from_dict(organisation_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


