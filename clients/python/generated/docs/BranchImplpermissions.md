# BranchImplpermissions


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**create** | **bool** |  | [optional] 
**read** | **bool** |  | [optional] 
**start** | **bool** |  | [optional] 
**stop** | **bool** |  | [optional] 
**var_class** | **str** |  | [optional] 

## Example

```python
from swaggyjenkins.models.branch_implpermissions import BranchImplpermissions

# TODO update the JSON string below
json = "{}"
# create an instance of BranchImplpermissions from a JSON string
branch_implpermissions_instance = BranchImplpermissions.from_json(json)
# print the JSON string representation of the object
print(BranchImplpermissions.to_json())

# convert the object into a dict
branch_implpermissions_dict = branch_implpermissions_instance.to_dict()
# create an instance of BranchImplpermissions from a dict
branch_implpermissions_form_dict = branch_implpermissions.from_dict(branch_implpermissions_dict)
```
[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


