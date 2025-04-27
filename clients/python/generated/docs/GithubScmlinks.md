# GithubScmlinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_self** | [**Link**](Link.md) |  | [optional] 
**var_class** | **str** |  | [optional] 

## Example

```python
from swaggyjenkins.models.github_scmlinks import GithubScmlinks

# TODO update the JSON string below
json = "{}"
# create an instance of GithubScmlinks from a JSON string
github_scmlinks_instance = GithubScmlinks.from_json(json)
# print the JSON string representation of the object
print(GithubScmlinks.to_json())

# convert the object into a dict
github_scmlinks_dict = github_scmlinks_instance.to_dict()
# create an instance of GithubScmlinks from a dict
github_scmlinks_from_dict = GithubScmlinks.from_dict(github_scmlinks_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


