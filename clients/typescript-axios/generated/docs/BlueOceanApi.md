# BlueOceanApi

All URIs are relative to *http://localhost*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**deletePipelineQueueItem**](#deletepipelinequeueitem) | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | |
|[**getAuthenticatedUser**](#getauthenticateduser) | **GET** /blue/rest/organizations/{organization}/user/ | |
|[**getClasses**](#getclasses) | **GET** /blue/rest/classes/{class} | |
|[**getJsonWebKey**](#getjsonwebkey) | **GET** /jwt-auth/jwks/{key} | |
|[**getJsonWebToken**](#getjsonwebtoken) | **GET** /jwt-auth/token | |
|[**getOrganisation**](#getorganisation) | **GET** /blue/rest/organizations/{organization} | |
|[**getOrganisations**](#getorganisations) | **GET** /blue/rest/organizations/ | |
|[**getPipeline**](#getpipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline} | |
|[**getPipelineActivities**](#getpipelineactivities) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities | |
|[**getPipelineBranch**](#getpipelinebranch) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ | |
|[**getPipelineBranchRun**](#getpipelinebranchrun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} | |
|[**getPipelineBranches**](#getpipelinebranches) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches | |
|[**getPipelineFolder**](#getpipelinefolder) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/ | |
|[**getPipelineFolderPipeline**](#getpipelinefolderpipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} | |
|[**getPipelineQueue**](#getpipelinequeue) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue | |
|[**getPipelineRun**](#getpipelinerun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} | |
|[**getPipelineRunLog**](#getpipelinerunlog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log | |
|[**getPipelineRunNode**](#getpipelinerunnode) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} | |
|[**getPipelineRunNodeStep**](#getpipelinerunnodestep) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} | |
|[**getPipelineRunNodeStepLog**](#getpipelinerunnodesteplog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log | |
|[**getPipelineRunNodeSteps**](#getpipelinerunnodesteps) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps | |
|[**getPipelineRunNodes**](#getpipelinerunnodes) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes | |
|[**getPipelineRuns**](#getpipelineruns) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | |
|[**getPipelines**](#getpipelines) | **GET** /blue/rest/organizations/{organization}/pipelines/ | |
|[**getSCM**](#getscm) | **GET** /blue/rest/organizations/{organization}/scm/{scm} | |
|[**getSCMOrganisationRepositories**](#getscmorganisationrepositories) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories | |
|[**getSCMOrganisationRepository**](#getscmorganisationrepository) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} | |
|[**getSCMOrganisations**](#getscmorganisations) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations | |
|[**getUser**](#getuser) | **GET** /blue/rest/organizations/{organization}/users/{user} | |
|[**getUserFavorites**](#getuserfavorites) | **GET** /blue/rest/users/{user}/favorites | |
|[**getUsers**](#getusers) | **GET** /blue/rest/organizations/{organization}/users/ | |
|[**postPipelineRun**](#postpipelinerun) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay | |
|[**postPipelineRuns**](#postpipelineruns) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | |
|[**putPipelineFavorite**](#putpipelinefavorite) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite | |
|[**putPipelineRun**](#putpipelinerun) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop | |
|[**search**](#search) | **GET** /blue/rest/search/ | |
|[**searchClasses**](#searchclasses) | **GET** /blue/rest/classes/ | |

# **deletePipelineQueueItem**
> deletePipelineQueueItem()

Delete queue item from an organization pipeline queue

### Example

```typescript
import {
    BlueOceanApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new BlueOceanApi(configuration);

let organization: string; //Name of the organization (default to undefined)
let pipeline: string; //Name of the pipeline (default to undefined)
let queue: string; //Name of the queue item (default to undefined)

const { status, data } = await apiInstance.deletePipelineQueueItem(
    organization,
    pipeline,
    queue
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organization** | [**string**] | Name of the organization | defaults to undefined|
| **pipeline** | [**string**] | Name of the pipeline | defaults to undefined|
| **queue** | [**string**] | Name of the queue item | defaults to undefined|


### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully deleted queue item |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAuthenticatedUser**
> User getAuthenticatedUser()

Retrieve authenticated user details for an organization

### Example

```typescript
import {
    BlueOceanApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new BlueOceanApi(configuration);

let organization: string; //Name of the organization (default to undefined)

const { status, data } = await apiInstance.getAuthenticatedUser(
    organization
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organization** | [**string**] | Name of the organization | defaults to undefined|


### Return type

**User**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved authenticated user details |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClasses**
> string getClasses()

Get a list of class names supported by a given class

### Example

```typescript
import {
    BlueOceanApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new BlueOceanApi(configuration);

let _class: string; //Name of the class (default to undefined)

const { status, data } = await apiInstance.getClasses(
    _class
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **_class** | [**string**] | Name of the class | defaults to undefined|


### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved class names |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJsonWebKey**
> string getJsonWebKey()

Retrieve JSON Web Key

### Example

```typescript
import {
    BlueOceanApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new BlueOceanApi(configuration);

let key: number; //Key ID received as part of JWT header field kid (default to undefined)

const { status, data } = await apiInstance.getJsonWebKey(
    key
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **key** | [**number**] | Key ID received as part of JWT header field kid | defaults to undefined|


### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved JWT token |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJsonWebToken**
> string getJsonWebToken()

Retrieve JSON Web Token

### Example

```typescript
import {
    BlueOceanApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new BlueOceanApi(configuration);

let expiryTimeInMins: number; //Token expiry time in minutes, default: 30 minutes (optional) (default to undefined)
let maxExpiryTimeInMins: number; //Maximum token expiry time in minutes, default: 480 minutes (optional) (default to undefined)

const { status, data } = await apiInstance.getJsonWebToken(
    expiryTimeInMins,
    maxExpiryTimeInMins
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **expiryTimeInMins** | [**number**] | Token expiry time in minutes, default: 30 minutes | (optional) defaults to undefined|
| **maxExpiryTimeInMins** | [**number**] | Maximum token expiry time in minutes, default: 480 minutes | (optional) defaults to undefined|


### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved JWT token |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganisation**
> Organisation getOrganisation()

Retrieve organization details

### Example

```typescript
import {
    BlueOceanApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new BlueOceanApi(configuration);

let organization: string; //Name of the organization (default to undefined)

const { status, data } = await apiInstance.getOrganisation(
    organization
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organization** | [**string**] | Name of the organization | defaults to undefined|


### Return type

**Organisation**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved pipeline details |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |
|**404** | Pipeline cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganisations**
> Array<Organisation> getOrganisations()

Retrieve all organizations details

### Example

```typescript
import {
    BlueOceanApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new BlueOceanApi(configuration);

const { status, data } = await apiInstance.getOrganisations();
```

### Parameters
This endpoint does not have any parameters.


### Return type

**Array<Organisation>**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved pipelines details |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipeline**
> Pipeline getPipeline()

Retrieve pipeline details for an organization

### Example

```typescript
import {
    BlueOceanApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new BlueOceanApi(configuration);

let organization: string; //Name of the organization (default to undefined)
let pipeline: string; //Name of the pipeline (default to undefined)

const { status, data } = await apiInstance.getPipeline(
    organization,
    pipeline
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organization** | [**string**] | Name of the organization | defaults to undefined|
| **pipeline** | [**string**] | Name of the pipeline | defaults to undefined|


### Return type

**Pipeline**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved pipeline details |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |
|**404** | Pipeline cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineActivities**
> Array<PipelineActivity> getPipelineActivities()

Retrieve all activities details for an organization pipeline

### Example

```typescript
import {
    BlueOceanApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new BlueOceanApi(configuration);

let organization: string; //Name of the organization (default to undefined)
let pipeline: string; //Name of the pipeline (default to undefined)

const { status, data } = await apiInstance.getPipelineActivities(
    organization,
    pipeline
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organization** | [**string**] | Name of the organization | defaults to undefined|
| **pipeline** | [**string**] | Name of the pipeline | defaults to undefined|


### Return type

**Array<PipelineActivity>**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved all activities details |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineBranch**
> BranchImpl getPipelineBranch()

Retrieve branch details for an organization pipeline

### Example

```typescript
import {
    BlueOceanApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new BlueOceanApi(configuration);

let organization: string; //Name of the organization (default to undefined)
let pipeline: string; //Name of the pipeline (default to undefined)
let branch: string; //Name of the branch (default to undefined)

const { status, data } = await apiInstance.getPipelineBranch(
    organization,
    pipeline,
    branch
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organization** | [**string**] | Name of the organization | defaults to undefined|
| **pipeline** | [**string**] | Name of the pipeline | defaults to undefined|
| **branch** | [**string**] | Name of the branch | defaults to undefined|


### Return type

**BranchImpl**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved branch details |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineBranchRun**
> PipelineRun getPipelineBranchRun()

Retrieve branch run details for an organization pipeline

### Example

```typescript
import {
    BlueOceanApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new BlueOceanApi(configuration);

let organization: string; //Name of the organization (default to undefined)
let pipeline: string; //Name of the pipeline (default to undefined)
let branch: string; //Name of the branch (default to undefined)
let run: string; //Name of the run (default to undefined)

const { status, data } = await apiInstance.getPipelineBranchRun(
    organization,
    pipeline,
    branch,
    run
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organization** | [**string**] | Name of the organization | defaults to undefined|
| **pipeline** | [**string**] | Name of the pipeline | defaults to undefined|
| **branch** | [**string**] | Name of the branch | defaults to undefined|
| **run** | [**string**] | Name of the run | defaults to undefined|


### Return type

**PipelineRun**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved run details |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineBranches**
> MultibranchPipeline getPipelineBranches()

Retrieve all branches details for an organization pipeline

### Example

```typescript
import {
    BlueOceanApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new BlueOceanApi(configuration);

let organization: string; //Name of the organization (default to undefined)
let pipeline: string; //Name of the pipeline (default to undefined)

const { status, data } = await apiInstance.getPipelineBranches(
    organization,
    pipeline
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organization** | [**string**] | Name of the organization | defaults to undefined|
| **pipeline** | [**string**] | Name of the pipeline | defaults to undefined|


### Return type

**MultibranchPipeline**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved all branches details |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineFolder**
> PipelineFolderImpl getPipelineFolder()

Retrieve pipeline folder for an organization

### Example

```typescript
import {
    BlueOceanApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new BlueOceanApi(configuration);

let organization: string; //Name of the organization (default to undefined)
let folder: string; //Name of the folder (default to undefined)

const { status, data } = await apiInstance.getPipelineFolder(
    organization,
    folder
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organization** | [**string**] | Name of the organization | defaults to undefined|
| **folder** | [**string**] | Name of the folder | defaults to undefined|


### Return type

**PipelineFolderImpl**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved folder details |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineFolderPipeline**
> PipelineImpl getPipelineFolderPipeline()

Retrieve pipeline details for an organization folder

### Example

```typescript
import {
    BlueOceanApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new BlueOceanApi(configuration);

let organization: string; //Name of the organization (default to undefined)
let pipeline: string; //Name of the pipeline (default to undefined)
let folder: string; //Name of the folder (default to undefined)

const { status, data } = await apiInstance.getPipelineFolderPipeline(
    organization,
    pipeline,
    folder
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organization** | [**string**] | Name of the organization | defaults to undefined|
| **pipeline** | [**string**] | Name of the pipeline | defaults to undefined|
| **folder** | [**string**] | Name of the folder | defaults to undefined|


### Return type

**PipelineImpl**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved pipeline details |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineQueue**
> Array<QueueItemImpl> getPipelineQueue()

Retrieve queue details for an organization pipeline

### Example

```typescript
import {
    BlueOceanApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new BlueOceanApi(configuration);

let organization: string; //Name of the organization (default to undefined)
let pipeline: string; //Name of the pipeline (default to undefined)

const { status, data } = await apiInstance.getPipelineQueue(
    organization,
    pipeline
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organization** | [**string**] | Name of the organization | defaults to undefined|
| **pipeline** | [**string**] | Name of the pipeline | defaults to undefined|


### Return type

**Array<QueueItemImpl>**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved queue details |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRun**
> PipelineRun getPipelineRun()

Retrieve run details for an organization pipeline

### Example

```typescript
import {
    BlueOceanApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new BlueOceanApi(configuration);

let organization: string; //Name of the organization (default to undefined)
let pipeline: string; //Name of the pipeline (default to undefined)
let run: string; //Name of the run (default to undefined)

const { status, data } = await apiInstance.getPipelineRun(
    organization,
    pipeline,
    run
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organization** | [**string**] | Name of the organization | defaults to undefined|
| **pipeline** | [**string**] | Name of the pipeline | defaults to undefined|
| **run** | [**string**] | Name of the run | defaults to undefined|


### Return type

**PipelineRun**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved run details |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRunLog**
> string getPipelineRunLog()

Get log for a pipeline run

### Example

```typescript
import {
    BlueOceanApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new BlueOceanApi(configuration);

let organization: string; //Name of the organization (default to undefined)
let pipeline: string; //Name of the pipeline (default to undefined)
let run: string; //Name of the run (default to undefined)
let start: number; //Start position of the log (optional) (default to undefined)
let download: boolean; //Set to true in order to download the file, otherwise it\'s passed as a response body (optional) (default to undefined)

const { status, data } = await apiInstance.getPipelineRunLog(
    organization,
    pipeline,
    run,
    start,
    download
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organization** | [**string**] | Name of the organization | defaults to undefined|
| **pipeline** | [**string**] | Name of the pipeline | defaults to undefined|
| **run** | [**string**] | Name of the run | defaults to undefined|
| **start** | [**number**] | Start position of the log | (optional) defaults to undefined|
| **download** | [**boolean**] | Set to true in order to download the file, otherwise it\&#39;s passed as a response body | (optional) defaults to undefined|


### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved pipeline run log |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRunNode**
> PipelineRunNode getPipelineRunNode()

Retrieve run node details for an organization pipeline

### Example

```typescript
import {
    BlueOceanApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new BlueOceanApi(configuration);

let organization: string; //Name of the organization (default to undefined)
let pipeline: string; //Name of the pipeline (default to undefined)
let run: string; //Name of the run (default to undefined)
let node: string; //Name of the node (default to undefined)

const { status, data } = await apiInstance.getPipelineRunNode(
    organization,
    pipeline,
    run,
    node
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organization** | [**string**] | Name of the organization | defaults to undefined|
| **pipeline** | [**string**] | Name of the pipeline | defaults to undefined|
| **run** | [**string**] | Name of the run | defaults to undefined|
| **node** | [**string**] | Name of the node | defaults to undefined|


### Return type

**PipelineRunNode**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved run node details |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRunNodeStep**
> PipelineStepImpl getPipelineRunNodeStep()

Retrieve run node details for an organization pipeline

### Example

```typescript
import {
    BlueOceanApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new BlueOceanApi(configuration);

let organization: string; //Name of the organization (default to undefined)
let pipeline: string; //Name of the pipeline (default to undefined)
let run: string; //Name of the run (default to undefined)
let node: string; //Name of the node (default to undefined)
let step: string; //Name of the step (default to undefined)

const { status, data } = await apiInstance.getPipelineRunNodeStep(
    organization,
    pipeline,
    run,
    node,
    step
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organization** | [**string**] | Name of the organization | defaults to undefined|
| **pipeline** | [**string**] | Name of the pipeline | defaults to undefined|
| **run** | [**string**] | Name of the run | defaults to undefined|
| **node** | [**string**] | Name of the node | defaults to undefined|
| **step** | [**string**] | Name of the step | defaults to undefined|


### Return type

**PipelineStepImpl**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved run node step details |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRunNodeStepLog**
> string getPipelineRunNodeStepLog()

Get log for a pipeline run node step

### Example

```typescript
import {
    BlueOceanApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new BlueOceanApi(configuration);

let organization: string; //Name of the organization (default to undefined)
let pipeline: string; //Name of the pipeline (default to undefined)
let run: string; //Name of the run (default to undefined)
let node: string; //Name of the node (default to undefined)
let step: string; //Name of the step (default to undefined)

const { status, data } = await apiInstance.getPipelineRunNodeStepLog(
    organization,
    pipeline,
    run,
    node,
    step
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organization** | [**string**] | Name of the organization | defaults to undefined|
| **pipeline** | [**string**] | Name of the pipeline | defaults to undefined|
| **run** | [**string**] | Name of the run | defaults to undefined|
| **node** | [**string**] | Name of the node | defaults to undefined|
| **step** | [**string**] | Name of the step | defaults to undefined|


### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved pipeline run node step log |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRunNodeSteps**
> Array<PipelineStepImpl> getPipelineRunNodeSteps()

Retrieve run node steps details for an organization pipeline

### Example

```typescript
import {
    BlueOceanApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new BlueOceanApi(configuration);

let organization: string; //Name of the organization (default to undefined)
let pipeline: string; //Name of the pipeline (default to undefined)
let run: string; //Name of the run (default to undefined)
let node: string; //Name of the node (default to undefined)

const { status, data } = await apiInstance.getPipelineRunNodeSteps(
    organization,
    pipeline,
    run,
    node
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organization** | [**string**] | Name of the organization | defaults to undefined|
| **pipeline** | [**string**] | Name of the pipeline | defaults to undefined|
| **run** | [**string**] | Name of the run | defaults to undefined|
| **node** | [**string**] | Name of the node | defaults to undefined|


### Return type

**Array<PipelineStepImpl>**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved run node steps details |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRunNodes**
> Array<PipelineRunNode> getPipelineRunNodes()

Retrieve run nodes details for an organization pipeline

### Example

```typescript
import {
    BlueOceanApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new BlueOceanApi(configuration);

let organization: string; //Name of the organization (default to undefined)
let pipeline: string; //Name of the pipeline (default to undefined)
let run: string; //Name of the run (default to undefined)

const { status, data } = await apiInstance.getPipelineRunNodes(
    organization,
    pipeline,
    run
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organization** | [**string**] | Name of the organization | defaults to undefined|
| **pipeline** | [**string**] | Name of the pipeline | defaults to undefined|
| **run** | [**string**] | Name of the run | defaults to undefined|


### Return type

**Array<PipelineRunNode>**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved run nodes details |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRuns**
> Array<PipelineRun> getPipelineRuns()

Retrieve all runs details for an organization pipeline

### Example

```typescript
import {
    BlueOceanApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new BlueOceanApi(configuration);

let organization: string; //Name of the organization (default to undefined)
let pipeline: string; //Name of the pipeline (default to undefined)

const { status, data } = await apiInstance.getPipelineRuns(
    organization,
    pipeline
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organization** | [**string**] | Name of the organization | defaults to undefined|
| **pipeline** | [**string**] | Name of the pipeline | defaults to undefined|


### Return type

**Array<PipelineRun>**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved runs details |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelines**
> Array<Pipeline> getPipelines()

Retrieve all pipelines details for an organization

### Example

```typescript
import {
    BlueOceanApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new BlueOceanApi(configuration);

let organization: string; //Name of the organization (default to undefined)

const { status, data } = await apiInstance.getPipelines(
    organization
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organization** | [**string**] | Name of the organization | defaults to undefined|


### Return type

**Array<Pipeline>**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved pipelines details |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSCM**
> GithubScm getSCM()

Retrieve SCM details for an organization

### Example

```typescript
import {
    BlueOceanApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new BlueOceanApi(configuration);

let organization: string; //Name of the organization (default to undefined)
let scm: string; //Name of SCM (default to undefined)

const { status, data } = await apiInstance.getSCM(
    organization,
    scm
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organization** | [**string**] | Name of the organization | defaults to undefined|
| **scm** | [**string**] | Name of SCM | defaults to undefined|


### Return type

**GithubScm**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved SCM details |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSCMOrganisationRepositories**
> Array<GithubOrganization> getSCMOrganisationRepositories()

Retrieve SCM organization repositories details for an organization

### Example

```typescript
import {
    BlueOceanApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new BlueOceanApi(configuration);

let organization: string; //Name of the organization (default to undefined)
let scm: string; //Name of SCM (default to undefined)
let scmOrganisation: string; //Name of the SCM organization (default to undefined)
let credentialId: string; //Credential ID (optional) (default to undefined)
let pageSize: number; //Number of items in a page (optional) (default to undefined)
let pageNumber: number; //Page number (optional) (default to undefined)

const { status, data } = await apiInstance.getSCMOrganisationRepositories(
    organization,
    scm,
    scmOrganisation,
    credentialId,
    pageSize,
    pageNumber
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organization** | [**string**] | Name of the organization | defaults to undefined|
| **scm** | [**string**] | Name of SCM | defaults to undefined|
| **scmOrganisation** | [**string**] | Name of the SCM organization | defaults to undefined|
| **credentialId** | [**string**] | Credential ID | (optional) defaults to undefined|
| **pageSize** | [**number**] | Number of items in a page | (optional) defaults to undefined|
| **pageNumber** | [**number**] | Page number | (optional) defaults to undefined|


### Return type

**Array<GithubOrganization>**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved SCM organization repositories details |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSCMOrganisationRepository**
> Array<GithubOrganization> getSCMOrganisationRepository()

Retrieve SCM organization repository details for an organization

### Example

```typescript
import {
    BlueOceanApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new BlueOceanApi(configuration);

let organization: string; //Name of the organization (default to undefined)
let scm: string; //Name of SCM (default to undefined)
let scmOrganisation: string; //Name of the SCM organization (default to undefined)
let repository: string; //Name of the SCM repository (default to undefined)
let credentialId: string; //Credential ID (optional) (default to undefined)

const { status, data } = await apiInstance.getSCMOrganisationRepository(
    organization,
    scm,
    scmOrganisation,
    repository,
    credentialId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organization** | [**string**] | Name of the organization | defaults to undefined|
| **scm** | [**string**] | Name of SCM | defaults to undefined|
| **scmOrganisation** | [**string**] | Name of the SCM organization | defaults to undefined|
| **repository** | [**string**] | Name of the SCM repository | defaults to undefined|
| **credentialId** | [**string**] | Credential ID | (optional) defaults to undefined|


### Return type

**Array<GithubOrganization>**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved SCM organizations details |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSCMOrganisations**
> Array<GithubOrganization> getSCMOrganisations()

Retrieve SCM organizations details for an organization

### Example

```typescript
import {
    BlueOceanApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new BlueOceanApi(configuration);

let organization: string; //Name of the organization (default to undefined)
let scm: string; //Name of SCM (default to undefined)
let credentialId: string; //Credential ID (optional) (default to undefined)

const { status, data } = await apiInstance.getSCMOrganisations(
    organization,
    scm,
    credentialId
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organization** | [**string**] | Name of the organization | defaults to undefined|
| **scm** | [**string**] | Name of SCM | defaults to undefined|
| **credentialId** | [**string**] | Credential ID | (optional) defaults to undefined|


### Return type

**Array<GithubOrganization>**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved SCM organizations details |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUser**
> User getUser()

Retrieve user details for an organization

### Example

```typescript
import {
    BlueOceanApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new BlueOceanApi(configuration);

let organization: string; //Name of the organization (default to undefined)
let user: string; //Name of the user (default to undefined)

const { status, data } = await apiInstance.getUser(
    organization,
    user
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organization** | [**string**] | Name of the organization | defaults to undefined|
| **user** | [**string**] | Name of the user | defaults to undefined|


### Return type

**User**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved users details |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserFavorites**
> Array<FavoriteImpl> getUserFavorites()

Retrieve user favorites details for an organization

### Example

```typescript
import {
    BlueOceanApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new BlueOceanApi(configuration);

let user: string; //Name of the user (default to undefined)

const { status, data } = await apiInstance.getUserFavorites(
    user
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **user** | [**string**] | Name of the user | defaults to undefined|


### Return type

**Array<FavoriteImpl>**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved users favorites details |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsers**
> User getUsers()

Retrieve users details for an organization

### Example

```typescript
import {
    BlueOceanApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new BlueOceanApi(configuration);

let organization: string; //Name of the organization (default to undefined)

const { status, data } = await apiInstance.getUsers(
    organization
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organization** | [**string**] | Name of the organization | defaults to undefined|


### Return type

**User**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved users details |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postPipelineRun**
> QueueItemImpl postPipelineRun()

Replay an organization pipeline run

### Example

```typescript
import {
    BlueOceanApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new BlueOceanApi(configuration);

let organization: string; //Name of the organization (default to undefined)
let pipeline: string; //Name of the pipeline (default to undefined)
let run: string; //Name of the run (default to undefined)

const { status, data } = await apiInstance.postPipelineRun(
    organization,
    pipeline,
    run
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organization** | [**string**] | Name of the organization | defaults to undefined|
| **pipeline** | [**string**] | Name of the pipeline | defaults to undefined|
| **run** | [**string**] | Name of the run | defaults to undefined|


### Return type

**QueueItemImpl**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully replayed a pipeline run |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postPipelineRuns**
> QueueItemImpl postPipelineRuns()

Start a build for an organization pipeline

### Example

```typescript
import {
    BlueOceanApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new BlueOceanApi(configuration);

let organization: string; //Name of the organization (default to undefined)
let pipeline: string; //Name of the pipeline (default to undefined)

const { status, data } = await apiInstance.postPipelineRuns(
    organization,
    pipeline
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organization** | [**string**] | Name of the organization | defaults to undefined|
| **pipeline** | [**string**] | Name of the pipeline | defaults to undefined|


### Return type

**QueueItemImpl**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully started a build |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putPipelineFavorite**
> FavoriteImpl putPipelineFavorite(body)

Favorite/unfavorite a pipeline

### Example

```typescript
import {
    BlueOceanApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new BlueOceanApi(configuration);

let organization: string; //Name of the organization (default to undefined)
let pipeline: string; //Name of the pipeline (default to undefined)
let body: boolean; //Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite

const { status, data } = await apiInstance.putPipelineFavorite(
    organization,
    pipeline,
    body
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **body** | **boolean**| Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite | |
| **organization** | [**string**] | Name of the organization | defaults to undefined|
| **pipeline** | [**string**] | Name of the pipeline | defaults to undefined|


### Return type

**FavoriteImpl**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully favorited/unfavorited a pipeline |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putPipelineRun**
> PipelineRun putPipelineRun()

Stop a build of an organization pipeline

### Example

```typescript
import {
    BlueOceanApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new BlueOceanApi(configuration);

let organization: string; //Name of the organization (default to undefined)
let pipeline: string; //Name of the pipeline (default to undefined)
let run: string; //Name of the run (default to undefined)
let blocking: string; //Set to true to make blocking stop, default: false (optional) (default to undefined)
let timeOutInSecs: number; //Timeout in seconds, default: 10 seconds (optional) (default to undefined)

const { status, data } = await apiInstance.putPipelineRun(
    organization,
    pipeline,
    run,
    blocking,
    timeOutInSecs
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **organization** | [**string**] | Name of the organization | defaults to undefined|
| **pipeline** | [**string**] | Name of the pipeline | defaults to undefined|
| **run** | [**string**] | Name of the run | defaults to undefined|
| **blocking** | [**string**] | Set to true to make blocking stop, default: false | (optional) defaults to undefined|
| **timeOutInSecs** | [**number**] | Timeout in seconds, default: 10 seconds | (optional) defaults to undefined|


### Return type

**PipelineRun**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully stopped a build |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search**
> string search()

Search for any resource details

### Example

```typescript
import {
    BlueOceanApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new BlueOceanApi(configuration);

let q: string; //Query string (default to undefined)

const { status, data } = await apiInstance.search(
    q
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **q** | [**string**] | Query string | defaults to undefined|


### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved search result |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchClasses**
> string searchClasses()

Get classes details

### Example

```typescript
import {
    BlueOceanApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new BlueOceanApi(configuration);

let q: string; //Query string containing an array of class names (default to undefined)

const { status, data } = await apiInstance.searchClasses(
    q
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **q** | [**string**] | Query string containing an array of class names | defaults to undefined|


### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved search result |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

