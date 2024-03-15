# QueueItemImpl


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_class** | **str** |  | [optional] 
**expected_build_number** | **int** |  | [optional] 
**id** | **str** |  | [optional] 
**pipeline** | **str** |  | [optional] 
**queued_time** | **int** |  | [optional] 

## Example

```python
from swaggyjenkins.models.queue_item_impl import QueueItemImpl

# TODO update the JSON string below
json = "{}"
# create an instance of QueueItemImpl from a JSON string
queue_item_impl_instance = QueueItemImpl.from_json(json)
# print the JSON string representation of the object
print(QueueItemImpl.to_json())

# convert the object into a dict
queue_item_impl_dict = queue_item_impl_instance.to_dict()
# create an instance of QueueItemImpl from a dict
queue_item_impl_form_dict = queue_item_impl.from_dict(queue_item_impl_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


