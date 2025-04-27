# GithubRepository


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_class** | **str** |  | [optional] 
**links** | [**GithubRepositorylinks**](GithubRepositorylinks.md) |  | [optional] 
**default_branch** | **str** |  | [optional] 
**description** | **str** |  | [optional] 
**name** | **str** |  | [optional] 
**permissions** | [**GithubRepositorypermissions**](GithubRepositorypermissions.md) |  | [optional] 
**private** | **bool** |  | [optional] 
**full_name** | **str** |  | [optional] 

## Example

```python
from swaggyjenkins.models.github_repository import GithubRepository

# TODO update the JSON string below
json = "{}"
# create an instance of GithubRepository from a JSON string
github_repository_instance = GithubRepository.from_json(json)
# print the JSON string representation of the object
print(GithubRepository.to_json())

# convert the object into a dict
github_repository_dict = github_repository_instance.to_dict()
# create an instance of GithubRepository from a dict
github_repository_from_dict = GithubRepository.from_dict(github_repository_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


