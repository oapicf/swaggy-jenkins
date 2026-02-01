# FreeStyleProject


## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_class** | **string** |  | [optional] [default to undefined]
**name** | **string** |  | [optional] [default to undefined]
**url** | **string** |  | [optional] [default to undefined]
**color** | **string** |  | [optional] [default to undefined]
**actions** | [**Array&lt;FreeStyleProjectactions&gt;**](FreeStyleProjectactions.md) |  | [optional] [default to undefined]
**description** | **string** |  | [optional] [default to undefined]
**displayName** | **string** |  | [optional] [default to undefined]
**displayNameOrNull** | **string** |  | [optional] [default to undefined]
**fullDisplayName** | **string** |  | [optional] [default to undefined]
**fullName** | **string** |  | [optional] [default to undefined]
**buildable** | **boolean** |  | [optional] [default to undefined]
**builds** | [**Array&lt;FreeStyleBuild&gt;**](FreeStyleBuild.md) |  | [optional] [default to undefined]
**firstBuild** | [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] [default to undefined]
**healthReport** | [**Array&lt;FreeStyleProjecthealthReport&gt;**](FreeStyleProjecthealthReport.md) |  | [optional] [default to undefined]
**inQueue** | **boolean** |  | [optional] [default to undefined]
**keepDependencies** | **boolean** |  | [optional] [default to undefined]
**lastBuild** | [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] [default to undefined]
**lastCompletedBuild** | [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] [default to undefined]
**lastFailedBuild** | **string** |  | [optional] [default to undefined]
**lastStableBuild** | [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] [default to undefined]
**lastSuccessfulBuild** | [**FreeStyleBuild**](FreeStyleBuild.md) |  | [optional] [default to undefined]
**lastUnstableBuild** | **string** |  | [optional] [default to undefined]
**lastUnsuccessfulBuild** | **string** |  | [optional] [default to undefined]
**nextBuildNumber** | **number** |  | [optional] [default to undefined]
**queueItem** | **string** |  | [optional] [default to undefined]
**concurrentBuild** | **boolean** |  | [optional] [default to undefined]
**scm** | [**NullSCM**](NullSCM.md) |  | [optional] [default to undefined]

## Example

```typescript
import { FreeStyleProject } from './api';

const instance: FreeStyleProject = {
    _class,
    name,
    url,
    color,
    actions,
    description,
    displayName,
    displayNameOrNull,
    fullDisplayName,
    fullName,
    buildable,
    builds,
    firstBuild,
    healthReport,
    inQueue,
    keepDependencies,
    lastBuild,
    lastCompletedBuild,
    lastFailedBuild,
    lastStableBuild,
    lastSuccessfulBuild,
    lastUnstableBuild,
    lastUnsuccessfulBuild,
    nextBuildNumber,
    queueItem,
    concurrentBuild,
    scm,
};
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
