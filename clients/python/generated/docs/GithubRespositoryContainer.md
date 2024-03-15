# GithubRespositoryContainer


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_class** | **str** |  | [optional] 
**links** | [**GithubRespositoryContainerlinks**](GithubRespositoryContainerlinks.md) |  | [optional] 
**repositories** | [**GithubRepositories**](GithubRepositories.md) |  | [optional] 

## Example

```python
from swaggyjenkins.models.github_respository_container import GithubRespositoryContainer

# TODO update the JSON string below
json = "{}"
# create an instance of GithubRespositoryContainer from a JSON string
github_respository_container_instance = GithubRespositoryContainer.from_json(json)
# print the JSON string representation of the object
print(GithubRespositoryContainer.to_json())

# convert the object into a dict
github_respository_container_dict = github_respository_container_instance.to_dict()
# create an instance of GithubRespositoryContainer from a dict
github_respository_container_form_dict = github_respository_container.from_dict(github_respository_container_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


