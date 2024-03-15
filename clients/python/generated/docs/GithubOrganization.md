# GithubOrganization


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_class** | **str** |  | [optional] 
**links** | [**GithubOrganizationlinks**](GithubOrganizationlinks.md) |  | [optional] 
**jenkins_organization_pipeline** | **bool** |  | [optional] 
**name** | **str** |  | [optional] 

## Example

```python
from swaggyjenkins.models.github_organization import GithubOrganization

# TODO update the JSON string below
json = "{}"
# create an instance of GithubOrganization from a JSON string
github_organization_instance = GithubOrganization.from_json(json)
# print the JSON string representation of the object
print(GithubOrganization.to_json())

# convert the object into a dict
github_organization_dict = github_organization_instance.to_dict()
# create an instance of GithubOrganization from a dict
github_organization_form_dict = github_organization.from_dict(github_organization_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


