# GithubRepositories


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_class** | **str** |  | [optional] 
**links** | [**GithubRepositorieslinks**](GithubRepositorieslinks.md) |  | [optional] 
**items** | [**List[GithubRepository]**](GithubRepository.md) |  | [optional] 
**last_page** | **int** |  | [optional] 
**next_page** | **int** |  | [optional] 
**page_size** | **int** |  | [optional] 

## Example

```python
from swaggyjenkins.models.github_repositories import GithubRepositories

# TODO update the JSON string below
json = "{}"
# create an instance of GithubRepositories from a JSON string
github_repositories_instance = GithubRepositories.from_json(json)
# print the JSON string representation of the object
print(GithubRepositories.to_json())

# convert the object into a dict
github_repositories_dict = github_repositories_instance.to_dict()
# create an instance of GithubRepositories from a dict
github_repositories_form_dict = github_repositories.from_dict(github_repositories_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


