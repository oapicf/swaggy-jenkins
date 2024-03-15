# QueueBlockedItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_class** | **str** |  | [optional] 
**actions** | [**List[CauseAction]**](CauseAction.md) |  | [optional] 
**blocked** | **bool** |  | [optional] 
**buildable** | **bool** |  | [optional] 
**id** | **int** |  | [optional] 
**in_queue_since** | **int** |  | [optional] 
**params** | **str** |  | [optional] 
**stuck** | **bool** |  | [optional] 
**task** | [**FreeStyleProject**](FreeStyleProject.md) |  | [optional] 
**url** | **str** |  | [optional] 
**why** | **str** |  | [optional] 
**buildable_start_milliseconds** | **int** |  | [optional] 

## Example

```python
from swaggyjenkins.models.queue_blocked_item import QueueBlockedItem

# TODO update the JSON string below
json = "{}"
# create an instance of QueueBlockedItem from a JSON string
queue_blocked_item_instance = QueueBlockedItem.from_json(json)
# print the JSON string representation of the object
print(QueueBlockedItem.to_json())

# convert the object into a dict
queue_blocked_item_dict = queue_blocked_item_instance.to_dict()
# create an instance of QueueBlockedItem from a dict
queue_blocked_item_form_dict = queue_blocked_item.from_dict(queue_blocked_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


