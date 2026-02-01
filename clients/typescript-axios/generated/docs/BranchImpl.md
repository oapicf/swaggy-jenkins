# BranchImpl


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_class** | **string** |  | [optional] [default to undefined]
**displayName** | **string** |  | [optional] [default to undefined]
**estimatedDurationInMillis** | **number** |  | [optional] [default to undefined]
**fullDisplayName** | **string** |  | [optional] [default to undefined]
**fullName** | **string** |  | [optional] [default to undefined]
**name** | **string** |  | [optional] [default to undefined]
**organization** | **string** |  | [optional] [default to undefined]
**parameters** | [**Array&lt;StringParameterDefinition&gt;**](StringParameterDefinition.md) |  | [optional] [default to undefined]
**permissions** | [**BranchImplpermissions**](BranchImplpermissions.md) |  | [optional] [default to undefined]
**weatherScore** | **number** |  | [optional] [default to undefined]
**pullRequest** | **string** |  | [optional] [default to undefined]
**_links** | [**BranchImpllinks**](BranchImpllinks.md) |  | [optional] [default to undefined]
**latestRun** | [**PipelineRunImpl**](PipelineRunImpl.md) |  | [optional] [default to undefined]

## Example

```typescript
import { BranchImpl } from './api';

const instance: BranchImpl = {
    _class,
    displayName,
    estimatedDurationInMillis,
    fullDisplayName,
    fullName,
    name,
    organization,
    parameters,
    permissions,
    weatherScore,
    pullRequest,
    _links,
    latestRun,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
