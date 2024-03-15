# GithubContent


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **str** |  | [optional] 
**sha** | **str** |  | [optional] 
**var_class** | **str** |  | [optional] 
**repo** | **str** |  | [optional] 
**size** | **int** |  | [optional] 
**owner** | **str** |  | [optional] 
**path** | **str** |  | [optional] 
**base64_data** | **str** |  | [optional] 

## Example

```python
from swaggyjenkins.models.github_content import GithubContent

# TODO update the JSON string below
json = "{}"
# create an instance of GithubContent from a JSON string
github_content_instance = GithubContent.from_json(json)
# print the JSON string representation of the object
print(GithubContent.to_json())

# convert the object into a dict
github_content_dict = github_content_instance.to_dict()
# create an instance of GithubContent from a dict
github_content_form_dict = github_content.from_dict(github_content_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


