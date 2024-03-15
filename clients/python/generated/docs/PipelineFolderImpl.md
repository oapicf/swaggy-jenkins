# PipelineFolderImpl


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_class** | **str** |  | [optional] 
**display_name** | **str** |  | [optional] 
**full_name** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**organization** | **str** |  | [optional] 
**number_of_folders** | **int** |  | [optional] 
**number_of_pipelines** | **int** |  | [optional] 

## Example

```python
from swaggyjenkins.models.pipeline_folder_impl import PipelineFolderImpl

# TODO update the JSON string below
json = "{}"
# create an instance of PipelineFolderImpl from a JSON string
pipeline_folder_impl_instance = PipelineFolderImpl.from_json(json)
# print the JSON string representation of the object
print(PipelineFolderImpl.to_json())

# convert the object into a dict
pipeline_folder_impl_dict = pipeline_folder_impl_instance.to_dict()
# create an instance of PipelineFolderImpl from a dict
pipeline_folder_impl_form_dict = pipeline_folder_impl.from_dict(pipeline_folder_impl_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


