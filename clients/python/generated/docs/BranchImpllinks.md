# BranchImpllinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**Link**](Link.md) |  | [optional] 
**actions** | [**Link**](Link.md) |  | [optional] 
**runs** | [**Link**](Link.md) |  | [optional] 
**queue** | [**Link**](Link.md) |  | [optional] 
**var_class** | **str** |  | [optional] 

## Example

```python
from swaggyjenkins.models.branch_impllinks import BranchImpllinks

# TODO update the JSON string below
json = "{}"
# create an instance of BranchImpllinks from a JSON string
branch_impllinks_instance = BranchImpllinks.from_json(json)
# print the JSON string representation of the object
print(BranchImpllinks.to_json())

# convert the object into a dict
branch_impllinks_dict = branch_impllinks_instance.to_dict()
# create an instance of BranchImpllinks from a dict
branch_impllinks_form_dict = branch_impllinks.from_dict(branch_impllinks_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


