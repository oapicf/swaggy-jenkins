# GithubRepositorypermissions


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**admin** | **bool** |  | [optional] 
**push** | **bool** |  | [optional] 
**pull** | **bool** |  | [optional] 
**var_class** | **str** |  | [optional] 

## Example

```python
from swaggyjenkins.models.github_repositorypermissions import GithubRepositorypermissions

# TODO update the JSON string below
json = "{}"
# create an instance of GithubRepositorypermissions from a JSON string
github_repositorypermissions_instance = GithubRepositorypermissions.from_json(json)
# print the JSON string representation of the object
print(GithubRepositorypermissions.to_json())

# convert the object into a dict
github_repositorypermissions_dict = github_repositorypermissions_instance.to_dict()
# create an instance of GithubRepositorypermissions from a dict
github_repositorypermissions_from_dict = GithubRepositorypermissions.from_dict(github_repositorypermissions_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


