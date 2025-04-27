# GithubOrganizationlinks


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**repositories** | [**Link**](Link.md) |  | [optional] 
**var_self** | [**Link**](Link.md) |  | [optional] 
**var_class** | **str** |  | [optional] 

## Example

```python
from swaggyjenkins.models.github_organizationlinks import GithubOrganizationlinks

# TODO update the JSON string below
json = "{}"
# create an instance of GithubOrganizationlinks from a JSON string
github_organizationlinks_instance = GithubOrganizationlinks.from_json(json)
# print the JSON string representation of the object
print(GithubOrganizationlinks.to_json())

# convert the object into a dict
github_organizationlinks_dict = github_organizationlinks_instance.to_dict()
# create an instance of GithubOrganizationlinks from a dict
github_organizationlinks_from_dict = GithubOrganizationlinks.from_dict(github_organizationlinks_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


