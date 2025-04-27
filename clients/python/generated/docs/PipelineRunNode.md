# PipelineRunNode


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_class** | **str** |  | [optional] 
**display_name** | **str** |  | [optional] 
**duration_in_millis** | **int** |  | [optional] 
**edges** | [**List[PipelineRunNodeedges]**](PipelineRunNodeedges.md) |  | [optional] 
**id** | **str** |  | [optional] 
**result** | **str** |  | [optional] 
**start_time** | **str** |  | [optional] 
**state** | **str** |  | [optional] 

## Example

```python
from swaggyjenkins.models.pipeline_run_node import PipelineRunNode

# TODO update the JSON string below
json = "{}"
# create an instance of PipelineRunNode from a JSON string
pipeline_run_node_instance = PipelineRunNode.from_json(json)
# print the JSON string representation of the object
print(PipelineRunNode.to_json())

# convert the object into a dict
pipeline_run_node_dict = pipeline_run_node_instance.to_dict()
# create an instance of PipelineRunNode from a dict
pipeline_run_node_from_dict = PipelineRunNode.from_dict(pipeline_run_node_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


