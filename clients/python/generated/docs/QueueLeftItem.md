# QueueLeftItem


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
**cancelled** | **bool** |  | [optional] 
**executable** | [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] 

## Example

```python
from swaggyjenkins.models.queue_left_item import QueueLeftItem

# TODO update the JSON string below
json = "{}"
# create an instance of QueueLeftItem from a JSON string
queue_left_item_instance = QueueLeftItem.from_json(json)
# print the JSON string representation of the object
print(QueueLeftItem.to_json())

# convert the object into a dict
queue_left_item_dict = queue_left_item_instance.to_dict()
# create an instance of QueueLeftItem from a dict
queue_left_item_from_dict = QueueLeftItem.from_dict(queue_left_item_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


