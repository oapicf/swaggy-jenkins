# QueueLeftItem


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_class** | **string** |  | [optional] [default to undefined]
**actions** | [**Array&lt;CauseAction&gt;**](CauseAction.md) |  | [optional] [default to undefined]
**blocked** | **boolean** |  | [optional] [default to undefined]
**buildable** | **boolean** |  | [optional] [default to undefined]
**id** | **number** |  | [optional] [default to undefined]
**inQueueSince** | **number** |  | [optional] [default to undefined]
**params** | **string** |  | [optional] [default to undefined]
**stuck** | **boolean** |  | [optional] [default to undefined]
**task** | [**FreeStyleProject**](FreeStyleProject.md) |  | [optional] [default to undefined]
**url** | **string** |  | [optional] [default to undefined]
**why** | **string** |  | [optional] [default to undefined]
**cancelled** | **boolean** |  | [optional] [default to undefined]
**executable** | [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] [default to undefined]

## Example

```typescript
import { QueueLeftItem } from './api';

const instance: QueueLeftItem = {
    _class,
    actions,
    blocked,
    buildable,
    id,
    inQueueSince,
    params,
    stuck,
    task,
    url,
    why,
    cancelled,
    executable,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
