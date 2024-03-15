# DefaultCrumbIssuer


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_class** | **str** |  | [optional] 
**crumb** | **str** |  | [optional] 
**crumb_request_field** | **str** |  | [optional] 

## Example

```python
from swaggyjenkins.models.default_crumb_issuer import DefaultCrumbIssuer

# TODO update the JSON string below
json = "{}"
# create an instance of DefaultCrumbIssuer from a JSON string
default_crumb_issuer_instance = DefaultCrumbIssuer.from_json(json)
# print the JSON string representation of the object
print(DefaultCrumbIssuer.to_json())

# convert the object into a dict
default_crumb_issuer_dict = default_crumb_issuer_instance.to_dict()
# create an instance of DefaultCrumbIssuer from a dict
default_crumb_issuer_form_dict = default_crumb_issuer.from_dict(default_crumb_issuer_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


