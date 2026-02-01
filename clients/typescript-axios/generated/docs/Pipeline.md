# Pipeline


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_class** | **string** |  | [optional] [default to undefined]
**organization** | **string** |  | [optional] [default to undefined]
**name** | **string** |  | [optional] [default to undefined]
**displayName** | **string** |  | [optional] [default to undefined]
**fullName** | **string** |  | [optional] [default to undefined]
**weatherScore** | **number** |  | [optional] [default to undefined]
**estimatedDurationInMillis** | **number** |  | [optional] [default to undefined]
**latestRun** | [**PipelinelatestRun**](PipelinelatestRun.md) |  | [optional] [default to undefined]

## Example

```typescript
import { Pipeline } from './api';

const instance: Pipeline = {
    _class,
    organization,
    name,
    displayName,
    fullName,
    weatherScore,
    estimatedDurationInMillis,
    latestRun,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
