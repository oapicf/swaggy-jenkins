# GithubRepositorylinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**Link**](Link.md) |  | [optional] 
**var_class** | **str** |  | [optional] 

## Example

```python
from swaggyjenkins.models.github_repositorylinks import GithubRepositorylinks

# TODO update the JSON string below
json = "{}"
# create an instance of GithubRepositorylinks from a JSON string
github_repositorylinks_instance = GithubRepositorylinks.from_json(json)
# print the JSON string representation of the object
print(GithubRepositorylinks.to_json())

# convert the object into a dict
github_repositorylinks_dict = github_repositorylinks_instance.to_dict()
# create an instance of GithubRepositorylinks from a dict
github_repositorylinks_form_dict = github_repositorylinks.from_dict(github_repositorylinks_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


