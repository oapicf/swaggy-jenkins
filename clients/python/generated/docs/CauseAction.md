# CauseAction


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_class** | **str** |  | [optional] 
**causes** | [**List[CauseUserIdCause]**](CauseUserIdCause.md) |  | [optional] 

## Example

```python
from swaggyjenkins.models.cause_action import CauseAction

# TODO update the JSON string below
json = "{}"
# create an instance of CauseAction from a JSON string
cause_action_instance = CauseAction.from_json(json)
# print the JSON string representation of the object
print(CauseAction.to_json())

# convert the object into a dict
cause_action_dict = cause_action_instance.to_dict()
# create an instance of CauseAction from a dict
cause_action_from_dict = CauseAction.from_dict(cause_action_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


