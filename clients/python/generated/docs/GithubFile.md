# GithubFile


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**content** | [**GithubContent**](GithubContent.md) |  | [optional] 
**var_class** | **str** |  | [optional] 

## Example

```python
from swaggyjenkins.models.github_file import GithubFile

# TODO update the JSON string below
json = "{}"
# create an instance of GithubFile from a JSON string
github_file_instance = GithubFile.from_json(json)
# print the JSON string representation of the object
print(GithubFile.to_json())

# convert the object into a dict
github_file_dict = github_file_instance.to_dict()
# create an instance of GithubFile from a dict
github_file_from_dict = GithubFile.from_dict(github_file_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


