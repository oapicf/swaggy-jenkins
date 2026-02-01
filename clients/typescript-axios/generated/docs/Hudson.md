# Hudson


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_class** | **string** |  | [optional] [default to undefined]
**assignedLabels** | [**Array&lt;HudsonassignedLabels&gt;**](HudsonassignedLabels.md) |  | [optional] [default to undefined]
**mode** | **string** |  | [optional] [default to undefined]
**nodeDescription** | **string** |  | [optional] [default to undefined]
**nodeName** | **string** |  | [optional] [default to undefined]
**numExecutors** | **number** |  | [optional] [default to undefined]
**description** | **string** |  | [optional] [default to undefined]
**jobs** | [**Array&lt;FreeStyleProject&gt;**](FreeStyleProject.md) |  | [optional] [default to undefined]
**primaryView** | [**AllView**](AllView.md) |  | [optional] [default to undefined]
**quietingDown** | **boolean** |  | [optional] [default to undefined]
**slaveAgentPort** | **number** |  | [optional] [default to undefined]
**unlabeledLoad** | [**UnlabeledLoadStatistics**](UnlabeledLoadStatistics.md) |  | [optional] [default to undefined]
**useCrumbs** | **boolean** |  | [optional] [default to undefined]
**useSecurity** | **boolean** |  | [optional] [default to undefined]
**views** | [**Array&lt;AllView&gt;**](AllView.md) |  | [optional] [default to undefined]

## Example

```typescript
import { Hudson } from './api';

const instance: Hudson = {
    _class,
    assignedLabels,
    mode,
    nodeDescription,
    nodeName,
    numExecutors,
    description,
    jobs,
    primaryView,
    quietingDown,
    slaveAgentPort,
    unlabeledLoad,
    useCrumbs,
    useSecurity,
    views,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
