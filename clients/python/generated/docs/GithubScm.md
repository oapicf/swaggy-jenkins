# GithubScm


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**var_class** | **str** |  | [optional] 
**links** | [**GithubScmlinks**](GithubScmlinks.md) |  | [optional] 
**credential_id** | **str** |  | [optional] 
**id** | **str** |  | [optional] 
**uri** | **str** |  | [optional] 

## Example

```python
from swaggyjenkins.models.github_scm import GithubScm

# TODO update the JSON string below
json = "{}"
# create an instance of GithubScm from a JSON string
github_scm_instance = GithubScm.from_json(json)
# print the JSON string representation of the object
print(GithubScm.to_json())

# convert the object into a dict
github_scm_dict = github_scm_instance.to_dict()
# create an instance of GithubScm from a dict
github_scm_form_dict = github_scm.from_dict(github_scm_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


