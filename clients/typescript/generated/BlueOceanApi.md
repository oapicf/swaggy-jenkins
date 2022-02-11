# .BlueOceanApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deletePipelineQueueItem**](BlueOceanApi.md#deletePipelineQueueItem) | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | 
[**getAuthenticatedUser**](BlueOceanApi.md#getAuthenticatedUser) | **GET** /blue/rest/organizations/{organization}/user/ | 
[**getClasses**](BlueOceanApi.md#getClasses) | **GET** /blue/rest/classes/{class} | 
[**getJsonWebKey**](BlueOceanApi.md#getJsonWebKey) | **GET** /jwt-auth/jwks/{key} | 
[**getJsonWebToken**](BlueOceanApi.md#getJsonWebToken) | **GET** /jwt-auth/token | 
[**getOrganisation**](BlueOceanApi.md#getOrganisation) | **GET** /blue/rest/organizations/{organization} | 
[**getOrganisations**](BlueOceanApi.md#getOrganisations) | **GET** /blue/rest/organizations/ | 
[**getPipeline**](BlueOceanApi.md#getPipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline} | 
[**getPipelineActivities**](BlueOceanApi.md#getPipelineActivities) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities | 
[**getPipelineBranch**](BlueOceanApi.md#getPipelineBranch) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ | 
[**getPipelineBranchRun**](BlueOceanApi.md#getPipelineBranchRun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} | 
[**getPipelineBranches**](BlueOceanApi.md#getPipelineBranches) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches | 
[**getPipelineFolder**](BlueOceanApi.md#getPipelineFolder) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/ | 
[**getPipelineFolderPipeline**](BlueOceanApi.md#getPipelineFolderPipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} | 
[**getPipelineQueue**](BlueOceanApi.md#getPipelineQueue) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue | 
[**getPipelineRun**](BlueOceanApi.md#getPipelineRun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} | 
[**getPipelineRunLog**](BlueOceanApi.md#getPipelineRunLog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log | 
[**getPipelineRunNode**](BlueOceanApi.md#getPipelineRunNode) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} | 
[**getPipelineRunNodeStep**](BlueOceanApi.md#getPipelineRunNodeStep) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} | 
[**getPipelineRunNodeStepLog**](BlueOceanApi.md#getPipelineRunNodeStepLog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log | 
[**getPipelineRunNodeSteps**](BlueOceanApi.md#getPipelineRunNodeSteps) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps | 
[**getPipelineRunNodes**](BlueOceanApi.md#getPipelineRunNodes) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes | 
[**getPipelineRuns**](BlueOceanApi.md#getPipelineRuns) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**getPipelines**](BlueOceanApi.md#getPipelines) | **GET** /blue/rest/organizations/{organization}/pipelines/ | 
[**getSCM**](BlueOceanApi.md#getSCM) | **GET** /blue/rest/organizations/{organization}/scm/{scm} | 
[**getSCMOrganisationRepositories**](BlueOceanApi.md#getSCMOrganisationRepositories) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories | 
[**getSCMOrganisationRepository**](BlueOceanApi.md#getSCMOrganisationRepository) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} | 
[**getSCMOrganisations**](BlueOceanApi.md#getSCMOrganisations) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations | 
[**getUser**](BlueOceanApi.md#getUser) | **GET** /blue/rest/organizations/{organization}/users/{user} | 
[**getUserFavorites**](BlueOceanApi.md#getUserFavorites) | **GET** /blue/rest/users/{user}/favorites | 
[**getUsers**](BlueOceanApi.md#getUsers) | **GET** /blue/rest/organizations/{organization}/users/ | 
[**postPipelineRun**](BlueOceanApi.md#postPipelineRun) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay | 
[**postPipelineRuns**](BlueOceanApi.md#postPipelineRuns) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**putPipelineFavorite**](BlueOceanApi.md#putPipelineFavorite) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite | 
[**putPipelineRun**](BlueOceanApi.md#putPipelineRun) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop | 
[**search**](BlueOceanApi.md#search) | **GET** /blue/rest/search/ | 
[**searchClasses**](BlueOceanApi.md#searchClasses) | **GET** /blue/rest/classes/ | 


# **deletePipelineQueueItem**
> void deletePipelineQueueItem()

Delete queue item from an organization pipeline queue

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .BlueOceanApi(configuration);

let body:.BlueOceanApiDeletePipelineQueueItemRequest = {
  // string | Name of the organization
  organization: "organization_example",
  // string | Name of the pipeline
  pipeline: "pipeline_example",
  // string | Name of the queue item
  queue: "queue_example",
};

apiInstance.deletePipelineQueueItem(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | [**string**] | Name of the organization | defaults to undefined
 **pipeline** | [**string**] | Name of the pipeline | defaults to undefined
 **queue** | [**string**] | Name of the queue item | defaults to undefined


### Return type

**void**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully deleted queue item |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getAuthenticatedUser**
> User getAuthenticatedUser()

Retrieve authenticated user details for an organization

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .BlueOceanApi(configuration);

let body:.BlueOceanApiGetAuthenticatedUserRequest = {
  // string | Name of the organization
  organization: "organization_example",
};

apiInstance.getAuthenticatedUser(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | [**string**] | Name of the organization | defaults to undefined


### Return type

**User**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved authenticated user details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getClasses**
> string getClasses()

Get a list of class names supported by a given class

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .BlueOceanApi(configuration);

let body:.BlueOceanApiGetClassesRequest = {
  // string | Name of the class
  _class: "class_example",
};

apiInstance.getClasses(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_class** | [**string**] | Name of the class | defaults to undefined


### Return type

**string**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved class names |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getJsonWebKey**
> string getJsonWebKey()

Retrieve JSON Web Key

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .BlueOceanApi(configuration);

let body:.BlueOceanApiGetJsonWebKeyRequest = {
  // number | Key ID received as part of JWT header field kid
  key: 1,
};

apiInstance.getJsonWebKey(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | [**number**] | Key ID received as part of JWT header field kid | defaults to undefined


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
**200** | Successfully retrieved JWT token |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getJsonWebToken**
> string getJsonWebToken()

Retrieve JSON Web Token

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .BlueOceanApi(configuration);

let body:.BlueOceanApiGetJsonWebTokenRequest = {
  // number | Token expiry time in minutes, default: 30 minutes (optional)
  expiryTimeInMins: 1,
  // number | Maximum token expiry time in minutes, default: 480 minutes (optional)
  maxExpiryTimeInMins: 1,
};

apiInstance.getJsonWebToken(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expiryTimeInMins** | [**number**] | Token expiry time in minutes, default: 30 minutes | (optional) defaults to undefined
 **maxExpiryTimeInMins** | [**number**] | Maximum token expiry time in minutes, default: 480 minutes | (optional) defaults to undefined


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
**200** | Successfully retrieved JWT token |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getOrganisation**
> Organisation getOrganisation()

Retrieve organization details

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .BlueOceanApi(configuration);

let body:.BlueOceanApiGetOrganisationRequest = {
  // string | Name of the organization
  organization: "organization_example",
};

apiInstance.getOrganisation(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | [**string**] | Name of the organization | defaults to undefined


### Return type

**Organisation**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved pipeline details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | Pipeline cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getOrganisations**
> Array<Organisation> getOrganisations()

Retrieve all organizations details

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .BlueOceanApi(configuration);

let body:any = {};

apiInstance.getOrganisations(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters
This endpoint does not need any parameter.


### Return type

**Array<Organisation>**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved pipelines details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getPipeline**
> Pipeline getPipeline()

Retrieve pipeline details for an organization

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .BlueOceanApi(configuration);

let body:.BlueOceanApiGetPipelineRequest = {
  // string | Name of the organization
  organization: "organization_example",
  // string | Name of the pipeline
  pipeline: "pipeline_example",
};

apiInstance.getPipeline(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | [**string**] | Name of the organization | defaults to undefined
 **pipeline** | [**string**] | Name of the pipeline | defaults to undefined


### Return type

**Pipeline**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved pipeline details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | Pipeline cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getPipelineActivities**
> Array<PipelineActivity> getPipelineActivities()

Retrieve all activities details for an organization pipeline

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .BlueOceanApi(configuration);

let body:.BlueOceanApiGetPipelineActivitiesRequest = {
  // string | Name of the organization
  organization: "organization_example",
  // string | Name of the pipeline
  pipeline: "pipeline_example",
};

apiInstance.getPipelineActivities(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | [**string**] | Name of the organization | defaults to undefined
 **pipeline** | [**string**] | Name of the pipeline | defaults to undefined


### Return type

**Array<PipelineActivity>**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved all activities details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getPipelineBranch**
> BranchImpl getPipelineBranch()

Retrieve branch details for an organization pipeline

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .BlueOceanApi(configuration);

let body:.BlueOceanApiGetPipelineBranchRequest = {
  // string | Name of the organization
  organization: "organization_example",
  // string | Name of the pipeline
  pipeline: "pipeline_example",
  // string | Name of the branch
  branch: "branch_example",
};

apiInstance.getPipelineBranch(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | [**string**] | Name of the organization | defaults to undefined
 **pipeline** | [**string**] | Name of the pipeline | defaults to undefined
 **branch** | [**string**] | Name of the branch | defaults to undefined


### Return type

**BranchImpl**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved branch details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getPipelineBranchRun**
> PipelineRun getPipelineBranchRun()

Retrieve branch run details for an organization pipeline

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .BlueOceanApi(configuration);

let body:.BlueOceanApiGetPipelineBranchRunRequest = {
  // string | Name of the organization
  organization: "organization_example",
  // string | Name of the pipeline
  pipeline: "pipeline_example",
  // string | Name of the branch
  branch: "branch_example",
  // string | Name of the run
  run: "run_example",
};

apiInstance.getPipelineBranchRun(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | [**string**] | Name of the organization | defaults to undefined
 **pipeline** | [**string**] | Name of the pipeline | defaults to undefined
 **branch** | [**string**] | Name of the branch | defaults to undefined
 **run** | [**string**] | Name of the run | defaults to undefined


### Return type

**PipelineRun**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved run details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getPipelineBranches**
> MultibranchPipeline getPipelineBranches()

Retrieve all branches details for an organization pipeline

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .BlueOceanApi(configuration);

let body:.BlueOceanApiGetPipelineBranchesRequest = {
  // string | Name of the organization
  organization: "organization_example",
  // string | Name of the pipeline
  pipeline: "pipeline_example",
};

apiInstance.getPipelineBranches(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | [**string**] | Name of the organization | defaults to undefined
 **pipeline** | [**string**] | Name of the pipeline | defaults to undefined


### Return type

**MultibranchPipeline**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved all branches details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getPipelineFolder**
> PipelineFolderImpl getPipelineFolder()

Retrieve pipeline folder for an organization

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .BlueOceanApi(configuration);

let body:.BlueOceanApiGetPipelineFolderRequest = {
  // string | Name of the organization
  organization: "organization_example",
  // string | Name of the folder
  folder: "folder_example",
};

apiInstance.getPipelineFolder(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | [**string**] | Name of the organization | defaults to undefined
 **folder** | [**string**] | Name of the folder | defaults to undefined


### Return type

**PipelineFolderImpl**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved folder details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getPipelineFolderPipeline**
> PipelineImpl getPipelineFolderPipeline()

Retrieve pipeline details for an organization folder

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .BlueOceanApi(configuration);

let body:.BlueOceanApiGetPipelineFolderPipelineRequest = {
  // string | Name of the organization
  organization: "organization_example",
  // string | Name of the pipeline
  pipeline: "pipeline_example",
  // string | Name of the folder
  folder: "folder_example",
};

apiInstance.getPipelineFolderPipeline(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | [**string**] | Name of the organization | defaults to undefined
 **pipeline** | [**string**] | Name of the pipeline | defaults to undefined
 **folder** | [**string**] | Name of the folder | defaults to undefined


### Return type

**PipelineImpl**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved pipeline details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getPipelineQueue**
> Array<QueueItemImpl> getPipelineQueue()

Retrieve queue details for an organization pipeline

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .BlueOceanApi(configuration);

let body:.BlueOceanApiGetPipelineQueueRequest = {
  // string | Name of the organization
  organization: "organization_example",
  // string | Name of the pipeline
  pipeline: "pipeline_example",
};

apiInstance.getPipelineQueue(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | [**string**] | Name of the organization | defaults to undefined
 **pipeline** | [**string**] | Name of the pipeline | defaults to undefined


### Return type

**Array<QueueItemImpl>**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved queue details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getPipelineRun**
> PipelineRun getPipelineRun()

Retrieve run details for an organization pipeline

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .BlueOceanApi(configuration);

let body:.BlueOceanApiGetPipelineRunRequest = {
  // string | Name of the organization
  organization: "organization_example",
  // string | Name of the pipeline
  pipeline: "pipeline_example",
  // string | Name of the run
  run: "run_example",
};

apiInstance.getPipelineRun(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | [**string**] | Name of the organization | defaults to undefined
 **pipeline** | [**string**] | Name of the pipeline | defaults to undefined
 **run** | [**string**] | Name of the run | defaults to undefined


### Return type

**PipelineRun**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved run details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getPipelineRunLog**
> string getPipelineRunLog()

Get log for a pipeline run

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .BlueOceanApi(configuration);

let body:.BlueOceanApiGetPipelineRunLogRequest = {
  // string | Name of the organization
  organization: "organization_example",
  // string | Name of the pipeline
  pipeline: "pipeline_example",
  // string | Name of the run
  run: "run_example",
  // number | Start position of the log (optional)
  start: 1,
  // boolean | Set to true in order to download the file, otherwise it's passed as a response body (optional)
  download: true,
};

apiInstance.getPipelineRunLog(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | [**string**] | Name of the organization | defaults to undefined
 **pipeline** | [**string**] | Name of the pipeline | defaults to undefined
 **run** | [**string**] | Name of the run | defaults to undefined
 **start** | [**number**] | Start position of the log | (optional) defaults to undefined
 **download** | [**boolean**] | Set to true in order to download the file, otherwise it&#39;s passed as a response body | (optional) defaults to undefined


### Return type

**string**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved pipeline run log |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getPipelineRunNode**
> PipelineRunNode getPipelineRunNode()

Retrieve run node details for an organization pipeline

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .BlueOceanApi(configuration);

let body:.BlueOceanApiGetPipelineRunNodeRequest = {
  // string | Name of the organization
  organization: "organization_example",
  // string | Name of the pipeline
  pipeline: "pipeline_example",
  // string | Name of the run
  run: "run_example",
  // string | Name of the node
  node: "node_example",
};

apiInstance.getPipelineRunNode(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | [**string**] | Name of the organization | defaults to undefined
 **pipeline** | [**string**] | Name of the pipeline | defaults to undefined
 **run** | [**string**] | Name of the run | defaults to undefined
 **node** | [**string**] | Name of the node | defaults to undefined


### Return type

**PipelineRunNode**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved run node details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getPipelineRunNodeStep**
> PipelineStepImpl getPipelineRunNodeStep()

Retrieve run node details for an organization pipeline

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .BlueOceanApi(configuration);

let body:.BlueOceanApiGetPipelineRunNodeStepRequest = {
  // string | Name of the organization
  organization: "organization_example",
  // string | Name of the pipeline
  pipeline: "pipeline_example",
  // string | Name of the run
  run: "run_example",
  // string | Name of the node
  node: "node_example",
  // string | Name of the step
  step: "step_example",
};

apiInstance.getPipelineRunNodeStep(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | [**string**] | Name of the organization | defaults to undefined
 **pipeline** | [**string**] | Name of the pipeline | defaults to undefined
 **run** | [**string**] | Name of the run | defaults to undefined
 **node** | [**string**] | Name of the node | defaults to undefined
 **step** | [**string**] | Name of the step | defaults to undefined


### Return type

**PipelineStepImpl**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved run node step details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getPipelineRunNodeStepLog**
> string getPipelineRunNodeStepLog()

Get log for a pipeline run node step

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .BlueOceanApi(configuration);

let body:.BlueOceanApiGetPipelineRunNodeStepLogRequest = {
  // string | Name of the organization
  organization: "organization_example",
  // string | Name of the pipeline
  pipeline: "pipeline_example",
  // string | Name of the run
  run: "run_example",
  // string | Name of the node
  node: "node_example",
  // string | Name of the step
  step: "step_example",
};

apiInstance.getPipelineRunNodeStepLog(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | [**string**] | Name of the organization | defaults to undefined
 **pipeline** | [**string**] | Name of the pipeline | defaults to undefined
 **run** | [**string**] | Name of the run | defaults to undefined
 **node** | [**string**] | Name of the node | defaults to undefined
 **step** | [**string**] | Name of the step | defaults to undefined


### Return type

**string**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved pipeline run node step log |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getPipelineRunNodeSteps**
> Array<PipelineStepImpl> getPipelineRunNodeSteps()

Retrieve run node steps details for an organization pipeline

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .BlueOceanApi(configuration);

let body:.BlueOceanApiGetPipelineRunNodeStepsRequest = {
  // string | Name of the organization
  organization: "organization_example",
  // string | Name of the pipeline
  pipeline: "pipeline_example",
  // string | Name of the run
  run: "run_example",
  // string | Name of the node
  node: "node_example",
};

apiInstance.getPipelineRunNodeSteps(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | [**string**] | Name of the organization | defaults to undefined
 **pipeline** | [**string**] | Name of the pipeline | defaults to undefined
 **run** | [**string**] | Name of the run | defaults to undefined
 **node** | [**string**] | Name of the node | defaults to undefined


### Return type

**Array<PipelineStepImpl>**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved run node steps details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getPipelineRunNodes**
> Array<PipelineRunNode> getPipelineRunNodes()

Retrieve run nodes details for an organization pipeline

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .BlueOceanApi(configuration);

let body:.BlueOceanApiGetPipelineRunNodesRequest = {
  // string | Name of the organization
  organization: "organization_example",
  // string | Name of the pipeline
  pipeline: "pipeline_example",
  // string | Name of the run
  run: "run_example",
};

apiInstance.getPipelineRunNodes(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | [**string**] | Name of the organization | defaults to undefined
 **pipeline** | [**string**] | Name of the pipeline | defaults to undefined
 **run** | [**string**] | Name of the run | defaults to undefined


### Return type

**Array<PipelineRunNode>**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved run nodes details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getPipelineRuns**
> Array<PipelineRun> getPipelineRuns()

Retrieve all runs details for an organization pipeline

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .BlueOceanApi(configuration);

let body:.BlueOceanApiGetPipelineRunsRequest = {
  // string | Name of the organization
  organization: "organization_example",
  // string | Name of the pipeline
  pipeline: "pipeline_example",
};

apiInstance.getPipelineRuns(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | [**string**] | Name of the organization | defaults to undefined
 **pipeline** | [**string**] | Name of the pipeline | defaults to undefined


### Return type

**Array<PipelineRun>**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved runs details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getPipelines**
> Array<Pipeline> getPipelines()

Retrieve all pipelines details for an organization

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .BlueOceanApi(configuration);

let body:.BlueOceanApiGetPipelinesRequest = {
  // string | Name of the organization
  organization: "organization_example",
};

apiInstance.getPipelines(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | [**string**] | Name of the organization | defaults to undefined


### Return type

**Array<Pipeline>**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved pipelines details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getSCM**
> GithubScm getSCM()

Retrieve SCM details for an organization

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .BlueOceanApi(configuration);

let body:.BlueOceanApiGetSCMRequest = {
  // string | Name of the organization
  organization: "organization_example",
  // string | Name of SCM
  scm: "scm_example",
};

apiInstance.getSCM(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | [**string**] | Name of the organization | defaults to undefined
 **scm** | [**string**] | Name of SCM | defaults to undefined


### Return type

**GithubScm**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved SCM details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getSCMOrganisationRepositories**
> Array<GithubOrganization> getSCMOrganisationRepositories()

Retrieve SCM organization repositories details for an organization

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .BlueOceanApi(configuration);

let body:.BlueOceanApiGetSCMOrganisationRepositoriesRequest = {
  // string | Name of the organization
  organization: "organization_example",
  // string | Name of SCM
  scm: "scm_example",
  // string | Name of the SCM organization
  scmOrganisation: "scmOrganisation_example",
  // string | Credential ID (optional)
  credentialId: "credentialId_example",
  // number | Number of items in a page (optional)
  pageSize: 1,
  // number | Page number (optional)
  pageNumber: 1,
};

apiInstance.getSCMOrganisationRepositories(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | [**string**] | Name of the organization | defaults to undefined
 **scm** | [**string**] | Name of SCM | defaults to undefined
 **scmOrganisation** | [**string**] | Name of the SCM organization | defaults to undefined
 **credentialId** | [**string**] | Credential ID | (optional) defaults to undefined
 **pageSize** | [**number**] | Number of items in a page | (optional) defaults to undefined
 **pageNumber** | [**number**] | Page number | (optional) defaults to undefined


### Return type

**Array<GithubOrganization>**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved SCM organization repositories details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getSCMOrganisationRepository**
> Array<GithubOrganization> getSCMOrganisationRepository()

Retrieve SCM organization repository details for an organization

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .BlueOceanApi(configuration);

let body:.BlueOceanApiGetSCMOrganisationRepositoryRequest = {
  // string | Name of the organization
  organization: "organization_example",
  // string | Name of SCM
  scm: "scm_example",
  // string | Name of the SCM organization
  scmOrganisation: "scmOrganisation_example",
  // string | Name of the SCM repository
  repository: "repository_example",
  // string | Credential ID (optional)
  credentialId: "credentialId_example",
};

apiInstance.getSCMOrganisationRepository(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | [**string**] | Name of the organization | defaults to undefined
 **scm** | [**string**] | Name of SCM | defaults to undefined
 **scmOrganisation** | [**string**] | Name of the SCM organization | defaults to undefined
 **repository** | [**string**] | Name of the SCM repository | defaults to undefined
 **credentialId** | [**string**] | Credential ID | (optional) defaults to undefined


### Return type

**Array<GithubOrganization>**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved SCM organizations details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getSCMOrganisations**
> Array<GithubOrganization> getSCMOrganisations()

Retrieve SCM organizations details for an organization

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .BlueOceanApi(configuration);

let body:.BlueOceanApiGetSCMOrganisationsRequest = {
  // string | Name of the organization
  organization: "organization_example",
  // string | Name of SCM
  scm: "scm_example",
  // string | Credential ID (optional)
  credentialId: "credentialId_example",
};

apiInstance.getSCMOrganisations(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | [**string**] | Name of the organization | defaults to undefined
 **scm** | [**string**] | Name of SCM | defaults to undefined
 **credentialId** | [**string**] | Credential ID | (optional) defaults to undefined


### Return type

**Array<GithubOrganization>**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved SCM organizations details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getUser**
> User getUser()

Retrieve user details for an organization

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .BlueOceanApi(configuration);

let body:.BlueOceanApiGetUserRequest = {
  // string | Name of the organization
  organization: "organization_example",
  // string | Name of the user
  user: "user_example",
};

apiInstance.getUser(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | [**string**] | Name of the organization | defaults to undefined
 **user** | [**string**] | Name of the user | defaults to undefined


### Return type

**User**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved users details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getUserFavorites**
> Array<FavoriteImpl> getUserFavorites()

Retrieve user favorites details for an organization

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .BlueOceanApi(configuration);

let body:.BlueOceanApiGetUserFavoritesRequest = {
  // string | Name of the user
  user: "user_example",
};

apiInstance.getUserFavorites(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | [**string**] | Name of the user | defaults to undefined


### Return type

**Array<FavoriteImpl>**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved users favorites details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getUsers**
> User getUsers()

Retrieve users details for an organization

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .BlueOceanApi(configuration);

let body:.BlueOceanApiGetUsersRequest = {
  // string | Name of the organization
  organization: "organization_example",
};

apiInstance.getUsers(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | [**string**] | Name of the organization | defaults to undefined


### Return type

**User**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved users details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **postPipelineRun**
> QueueItemImpl postPipelineRun()

Replay an organization pipeline run

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .BlueOceanApi(configuration);

let body:.BlueOceanApiPostPipelineRunRequest = {
  // string | Name of the organization
  organization: "organization_example",
  // string | Name of the pipeline
  pipeline: "pipeline_example",
  // string | Name of the run
  run: "run_example",
};

apiInstance.postPipelineRun(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | [**string**] | Name of the organization | defaults to undefined
 **pipeline** | [**string**] | Name of the pipeline | defaults to undefined
 **run** | [**string**] | Name of the run | defaults to undefined


### Return type

**QueueItemImpl**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully replayed a pipeline run |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **postPipelineRuns**
> QueueItemImpl postPipelineRuns()

Start a build for an organization pipeline

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .BlueOceanApi(configuration);

let body:.BlueOceanApiPostPipelineRunsRequest = {
  // string | Name of the organization
  organization: "organization_example",
  // string | Name of the pipeline
  pipeline: "pipeline_example",
};

apiInstance.postPipelineRuns(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | [**string**] | Name of the organization | defaults to undefined
 **pipeline** | [**string**] | Name of the pipeline | defaults to undefined


### Return type

**QueueItemImpl**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully started a build |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **putPipelineFavorite**
> FavoriteImpl putPipelineFavorite(body)

Favorite/unfavorite a pipeline

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .BlueOceanApi(configuration);

let body:.BlueOceanApiPutPipelineFavoriteRequest = {
  // string | Name of the organization
  organization: "organization_example",
  // string | Name of the pipeline
  pipeline: "pipeline_example",
  // boolean | Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite
  body: true,
};

apiInstance.putPipelineFavorite(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **boolean**| Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite |
 **organization** | [**string**] | Name of the organization | defaults to undefined
 **pipeline** | [**string**] | Name of the pipeline | defaults to undefined


### Return type

**FavoriteImpl**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully favorited/unfavorited a pipeline |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **putPipelineRun**
> PipelineRun putPipelineRun()

Stop a build of an organization pipeline

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .BlueOceanApi(configuration);

let body:.BlueOceanApiPutPipelineRunRequest = {
  // string | Name of the organization
  organization: "organization_example",
  // string | Name of the pipeline
  pipeline: "pipeline_example",
  // string | Name of the run
  run: "run_example",
  // string | Set to true to make blocking stop, default: false (optional)
  blocking: "blocking_example",
  // number | Timeout in seconds, default: 10 seconds (optional)
  timeOutInSecs: 1,
};

apiInstance.putPipelineRun(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | [**string**] | Name of the organization | defaults to undefined
 **pipeline** | [**string**] | Name of the pipeline | defaults to undefined
 **run** | [**string**] | Name of the run | defaults to undefined
 **blocking** | [**string**] | Set to true to make blocking stop, default: false | (optional) defaults to undefined
 **timeOutInSecs** | [**number**] | Timeout in seconds, default: 10 seconds | (optional) defaults to undefined


### Return type

**PipelineRun**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully stopped a build |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **search**
> string search()

Search for any resource details

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .BlueOceanApi(configuration);

let body:.BlueOceanApiSearchRequest = {
  // string | Query string
  q: "q_example",
};

apiInstance.search(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | [**string**] | Query string | defaults to undefined


### Return type

**string**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved search result |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **searchClasses**
> string searchClasses()

Get classes details

### Example


```typescript
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .BlueOceanApi(configuration);

let body:.BlueOceanApiSearchClassesRequest = {
  // string | Query string containing an array of class names
  q: "q_example",
};

apiInstance.searchClasses(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | [**string**] | Query string containing an array of class names | defaults to undefined


### Return type

**string**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved search result |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)


