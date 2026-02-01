# BlueOceanApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**deletePipelineQueueItem**](BlueOceanApi.md#deletepipelinequeueitem) | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} |  |
| [**getAuthenticatedUser**](BlueOceanApi.md#getauthenticateduser) | **GET** /blue/rest/organizations/{organization}/user/ |  |
| [**getClasses**](BlueOceanApi.md#getclasses) | **GET** /blue/rest/classes/{class} |  |
| [**getJsonWebKey**](BlueOceanApi.md#getjsonwebkey) | **GET** /jwt-auth/jwks/{key} |  |
| [**getJsonWebToken**](BlueOceanApi.md#getjsonwebtoken) | **GET** /jwt-auth/token |  |
| [**getOrganisation**](BlueOceanApi.md#getorganisation) | **GET** /blue/rest/organizations/{organization} |  |
| [**getOrganisations**](BlueOceanApi.md#getorganisations) | **GET** /blue/rest/organizations/ |  |
| [**getPipeline**](BlueOceanApi.md#getpipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline} |  |
| [**getPipelineActivities**](BlueOceanApi.md#getpipelineactivities) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities |  |
| [**getPipelineBranch**](BlueOceanApi.md#getpipelinebranch) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ |  |
| [**getPipelineBranchRun**](BlueOceanApi.md#getpipelinebranchrun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} |  |
| [**getPipelineBranches**](BlueOceanApi.md#getpipelinebranches) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches |  |
| [**getPipelineFolder**](BlueOceanApi.md#getpipelinefolder) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/ |  |
| [**getPipelineFolderPipeline**](BlueOceanApi.md#getpipelinefolderpipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} |  |
| [**getPipelineQueue**](BlueOceanApi.md#getpipelinequeue) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue |  |
| [**getPipelineRun**](BlueOceanApi.md#getpipelinerun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} |  |
| [**getPipelineRunLog**](BlueOceanApi.md#getpipelinerunlog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log |  |
| [**getPipelineRunNode**](BlueOceanApi.md#getpipelinerunnode) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} |  |
| [**getPipelineRunNodeStep**](BlueOceanApi.md#getpipelinerunnodestep) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} |  |
| [**getPipelineRunNodeStepLog**](BlueOceanApi.md#getpipelinerunnodesteplog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log |  |
| [**getPipelineRunNodeSteps**](BlueOceanApi.md#getpipelinerunnodesteps) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps |  |
| [**getPipelineRunNodes**](BlueOceanApi.md#getpipelinerunnodes) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes |  |
| [**getPipelineRuns**](BlueOceanApi.md#getpipelineruns) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs |  |
| [**getPipelines**](BlueOceanApi.md#getpipelines) | **GET** /blue/rest/organizations/{organization}/pipelines/ |  |
| [**getSCM**](BlueOceanApi.md#getscm) | **GET** /blue/rest/organizations/{organization}/scm/{scm} |  |
| [**getSCMOrganisationRepositories**](BlueOceanApi.md#getscmorganisationrepositories) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories |  |
| [**getSCMOrganisationRepository**](BlueOceanApi.md#getscmorganisationrepository) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} |  |
| [**getSCMOrganisations**](BlueOceanApi.md#getscmorganisations) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations |  |
| [**getUser**](BlueOceanApi.md#getuser) | **GET** /blue/rest/organizations/{organization}/users/{user} |  |
| [**getUserFavorites**](BlueOceanApi.md#getuserfavorites) | **GET** /blue/rest/users/{user}/favorites |  |
| [**getUsers**](BlueOceanApi.md#getusers) | **GET** /blue/rest/organizations/{organization}/users/ |  |
| [**postPipelineRun**](BlueOceanApi.md#postpipelinerun) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay |  |
| [**postPipelineRuns**](BlueOceanApi.md#postpipelineruns) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs |  |
| [**putPipelineFavorite**](BlueOceanApi.md#putpipelinefavorite) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite |  |
| [**putPipelineRun**](BlueOceanApi.md#putpipelinerun) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop |  |
| [**search**](BlueOceanApi.md#search) | **GET** /blue/rest/search/ |  |
| [**searchClasses**](BlueOceanApi.md#searchclasses) | **GET** /blue/rest/classes/ |  |



## deletePipelineQueueItem

> deletePipelineQueueItem(organization, pipeline, queue)



Delete queue item from an organization pipeline queue

### Example

```ts
import {
  Configuration,
  BlueOceanApi,
} from '';
import type { DeletePipelineQueueItemRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new BlueOceanApi(config);

  const body = {
    // string | Name of the organization
    organization: organization_example,
    // string | Name of the pipeline
    pipeline: pipeline_example,
    // string | Name of the queue item
    queue: queue_example,
  } satisfies DeletePipelineQueueItemRequest;

  try {
    const data = await api.deletePipelineQueueItem(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | `string` | Name of the organization | [Defaults to `undefined`] |
| **pipeline** | `string` | Name of the pipeline | [Defaults to `undefined`] |
| **queue** | `string` | Name of the queue item | [Defaults to `undefined`] |

### Return type

`void` (Empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully deleted queue item |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getAuthenticatedUser

> User getAuthenticatedUser(organization)



Retrieve authenticated user details for an organization

### Example

```ts
import {
  Configuration,
  BlueOceanApi,
} from '';
import type { GetAuthenticatedUserRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new BlueOceanApi(config);

  const body = {
    // string | Name of the organization
    organization: organization_example,
  } satisfies GetAuthenticatedUserRequest;

  try {
    const data = await api.getAuthenticatedUser(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | `string` | Name of the organization | [Defaults to `undefined`] |

### Return type

[**User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved authenticated user details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getClasses

> string getClasses(_class)



Get a list of class names supported by a given class

### Example

```ts
import {
  Configuration,
  BlueOceanApi,
} from '';
import type { GetClassesRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new BlueOceanApi(config);

  const body = {
    // string | Name of the class
    _class: _class_example,
  } satisfies GetClassesRequest;

  try {
    const data = await api.getClasses(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **_class** | `string` | Name of the class | [Defaults to `undefined`] |

### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved class names |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getJsonWebKey

> string getJsonWebKey(key)



Retrieve JSON Web Key

### Example

```ts
import {
  Configuration,
  BlueOceanApi,
} from '';
import type { GetJsonWebKeyRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const api = new BlueOceanApi();

  const body = {
    // number | Key ID received as part of JWT header field kid
    key: 56,
  } satisfies GetJsonWebKeyRequest;

  try {
    const data = await api.getJsonWebKey(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **key** | `number` | Key ID received as part of JWT header field kid | [Defaults to `undefined`] |

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved JWT token |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getJsonWebToken

> string getJsonWebToken(expiryTimeInMins, maxExpiryTimeInMins)



Retrieve JSON Web Token

### Example

```ts
import {
  Configuration,
  BlueOceanApi,
} from '';
import type { GetJsonWebTokenRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const api = new BlueOceanApi();

  const body = {
    // number | Token expiry time in minutes, default: 30 minutes (optional)
    expiryTimeInMins: 56,
    // number | Maximum token expiry time in minutes, default: 480 minutes (optional)
    maxExpiryTimeInMins: 56,
  } satisfies GetJsonWebTokenRequest;

  try {
    const data = await api.getJsonWebToken(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **expiryTimeInMins** | `number` | Token expiry time in minutes, default: 30 minutes | [Optional] [Defaults to `undefined`] |
| **maxExpiryTimeInMins** | `number` | Maximum token expiry time in minutes, default: 480 minutes | [Optional] [Defaults to `undefined`] |

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved JWT token |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getOrganisation

> Organisation getOrganisation(organization)



Retrieve organization details

### Example

```ts
import {
  Configuration,
  BlueOceanApi,
} from '';
import type { GetOrganisationRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new BlueOceanApi(config);

  const body = {
    // string | Name of the organization
    organization: organization_example,
  } satisfies GetOrganisationRequest;

  try {
    const data = await api.getOrganisation(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | `string` | Name of the organization | [Defaults to `undefined`] |

### Return type

[**Organisation**](Organisation.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved pipeline details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Pipeline cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getOrganisations

> Array&lt;Organisation&gt; getOrganisations()



Retrieve all organizations details

### Example

```ts
import {
  Configuration,
  BlueOceanApi,
} from '';
import type { GetOrganisationsRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new BlueOceanApi(config);

  try {
    const data = await api.getOrganisations();
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Organisation&gt;**](Organisation.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved pipelines details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getPipeline

> Pipeline getPipeline(organization, pipeline)



Retrieve pipeline details for an organization

### Example

```ts
import {
  Configuration,
  BlueOceanApi,
} from '';
import type { GetPipelineRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new BlueOceanApi(config);

  const body = {
    // string | Name of the organization
    organization: organization_example,
    // string | Name of the pipeline
    pipeline: pipeline_example,
  } satisfies GetPipelineRequest;

  try {
    const data = await api.getPipeline(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | `string` | Name of the organization | [Defaults to `undefined`] |
| **pipeline** | `string` | Name of the pipeline | [Defaults to `undefined`] |

### Return type

[**Pipeline**](Pipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved pipeline details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Pipeline cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getPipelineActivities

> Array&lt;PipelineActivity&gt; getPipelineActivities(organization, pipeline)



Retrieve all activities details for an organization pipeline

### Example

```ts
import {
  Configuration,
  BlueOceanApi,
} from '';
import type { GetPipelineActivitiesRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new BlueOceanApi(config);

  const body = {
    // string | Name of the organization
    organization: organization_example,
    // string | Name of the pipeline
    pipeline: pipeline_example,
  } satisfies GetPipelineActivitiesRequest;

  try {
    const data = await api.getPipelineActivities(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | `string` | Name of the organization | [Defaults to `undefined`] |
| **pipeline** | `string` | Name of the pipeline | [Defaults to `undefined`] |

### Return type

[**Array&lt;PipelineActivity&gt;**](PipelineActivity.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved all activities details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getPipelineBranch

> BranchImpl getPipelineBranch(organization, pipeline, branch)



Retrieve branch details for an organization pipeline

### Example

```ts
import {
  Configuration,
  BlueOceanApi,
} from '';
import type { GetPipelineBranchRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new BlueOceanApi(config);

  const body = {
    // string | Name of the organization
    organization: organization_example,
    // string | Name of the pipeline
    pipeline: pipeline_example,
    // string | Name of the branch
    branch: branch_example,
  } satisfies GetPipelineBranchRequest;

  try {
    const data = await api.getPipelineBranch(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | `string` | Name of the organization | [Defaults to `undefined`] |
| **pipeline** | `string` | Name of the pipeline | [Defaults to `undefined`] |
| **branch** | `string` | Name of the branch | [Defaults to `undefined`] |

### Return type

[**BranchImpl**](BranchImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved branch details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getPipelineBranchRun

> PipelineRun getPipelineBranchRun(organization, pipeline, branch, run)



Retrieve branch run details for an organization pipeline

### Example

```ts
import {
  Configuration,
  BlueOceanApi,
} from '';
import type { GetPipelineBranchRunRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new BlueOceanApi(config);

  const body = {
    // string | Name of the organization
    organization: organization_example,
    // string | Name of the pipeline
    pipeline: pipeline_example,
    // string | Name of the branch
    branch: branch_example,
    // string | Name of the run
    run: run_example,
  } satisfies GetPipelineBranchRunRequest;

  try {
    const data = await api.getPipelineBranchRun(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | `string` | Name of the organization | [Defaults to `undefined`] |
| **pipeline** | `string` | Name of the pipeline | [Defaults to `undefined`] |
| **branch** | `string` | Name of the branch | [Defaults to `undefined`] |
| **run** | `string` | Name of the run | [Defaults to `undefined`] |

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved run details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getPipelineBranches

> MultibranchPipeline getPipelineBranches(organization, pipeline)



Retrieve all branches details for an organization pipeline

### Example

```ts
import {
  Configuration,
  BlueOceanApi,
} from '';
import type { GetPipelineBranchesRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new BlueOceanApi(config);

  const body = {
    // string | Name of the organization
    organization: organization_example,
    // string | Name of the pipeline
    pipeline: pipeline_example,
  } satisfies GetPipelineBranchesRequest;

  try {
    const data = await api.getPipelineBranches(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | `string` | Name of the organization | [Defaults to `undefined`] |
| **pipeline** | `string` | Name of the pipeline | [Defaults to `undefined`] |

### Return type

[**MultibranchPipeline**](MultibranchPipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved all branches details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getPipelineFolder

> PipelineFolderImpl getPipelineFolder(organization, folder)



Retrieve pipeline folder for an organization

### Example

```ts
import {
  Configuration,
  BlueOceanApi,
} from '';
import type { GetPipelineFolderRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new BlueOceanApi(config);

  const body = {
    // string | Name of the organization
    organization: organization_example,
    // string | Name of the folder
    folder: folder_example,
  } satisfies GetPipelineFolderRequest;

  try {
    const data = await api.getPipelineFolder(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | `string` | Name of the organization | [Defaults to `undefined`] |
| **folder** | `string` | Name of the folder | [Defaults to `undefined`] |

### Return type

[**PipelineFolderImpl**](PipelineFolderImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved folder details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getPipelineFolderPipeline

> PipelineImpl getPipelineFolderPipeline(organization, pipeline, folder)



Retrieve pipeline details for an organization folder

### Example

```ts
import {
  Configuration,
  BlueOceanApi,
} from '';
import type { GetPipelineFolderPipelineRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new BlueOceanApi(config);

  const body = {
    // string | Name of the organization
    organization: organization_example,
    // string | Name of the pipeline
    pipeline: pipeline_example,
    // string | Name of the folder
    folder: folder_example,
  } satisfies GetPipelineFolderPipelineRequest;

  try {
    const data = await api.getPipelineFolderPipeline(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | `string` | Name of the organization | [Defaults to `undefined`] |
| **pipeline** | `string` | Name of the pipeline | [Defaults to `undefined`] |
| **folder** | `string` | Name of the folder | [Defaults to `undefined`] |

### Return type

[**PipelineImpl**](PipelineImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved pipeline details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getPipelineQueue

> Array&lt;QueueItemImpl&gt; getPipelineQueue(organization, pipeline)



Retrieve queue details for an organization pipeline

### Example

```ts
import {
  Configuration,
  BlueOceanApi,
} from '';
import type { GetPipelineQueueRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new BlueOceanApi(config);

  const body = {
    // string | Name of the organization
    organization: organization_example,
    // string | Name of the pipeline
    pipeline: pipeline_example,
  } satisfies GetPipelineQueueRequest;

  try {
    const data = await api.getPipelineQueue(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | `string` | Name of the organization | [Defaults to `undefined`] |
| **pipeline** | `string` | Name of the pipeline | [Defaults to `undefined`] |

### Return type

[**Array&lt;QueueItemImpl&gt;**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved queue details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getPipelineRun

> PipelineRun getPipelineRun(organization, pipeline, run)



Retrieve run details for an organization pipeline

### Example

```ts
import {
  Configuration,
  BlueOceanApi,
} from '';
import type { GetPipelineRunRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new BlueOceanApi(config);

  const body = {
    // string | Name of the organization
    organization: organization_example,
    // string | Name of the pipeline
    pipeline: pipeline_example,
    // string | Name of the run
    run: run_example,
  } satisfies GetPipelineRunRequest;

  try {
    const data = await api.getPipelineRun(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | `string` | Name of the organization | [Defaults to `undefined`] |
| **pipeline** | `string` | Name of the pipeline | [Defaults to `undefined`] |
| **run** | `string` | Name of the run | [Defaults to `undefined`] |

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved run details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getPipelineRunLog

> string getPipelineRunLog(organization, pipeline, run, start, download)



Get log for a pipeline run

### Example

```ts
import {
  Configuration,
  BlueOceanApi,
} from '';
import type { GetPipelineRunLogRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new BlueOceanApi(config);

  const body = {
    // string | Name of the organization
    organization: organization_example,
    // string | Name of the pipeline
    pipeline: pipeline_example,
    // string | Name of the run
    run: run_example,
    // number | Start position of the log (optional)
    start: 56,
    // boolean | Set to true in order to download the file, otherwise it\'s passed as a response body (optional)
    download: true,
  } satisfies GetPipelineRunLogRequest;

  try {
    const data = await api.getPipelineRunLog(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | `string` | Name of the organization | [Defaults to `undefined`] |
| **pipeline** | `string` | Name of the pipeline | [Defaults to `undefined`] |
| **run** | `string` | Name of the run | [Defaults to `undefined`] |
| **start** | `number` | Start position of the log | [Optional] [Defaults to `undefined`] |
| **download** | `boolean` | Set to true in order to download the file, otherwise it\&#39;s passed as a response body | [Optional] [Defaults to `undefined`] |

### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved pipeline run log |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getPipelineRunNode

> PipelineRunNode getPipelineRunNode(organization, pipeline, run, node)



Retrieve run node details for an organization pipeline

### Example

```ts
import {
  Configuration,
  BlueOceanApi,
} from '';
import type { GetPipelineRunNodeRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new BlueOceanApi(config);

  const body = {
    // string | Name of the organization
    organization: organization_example,
    // string | Name of the pipeline
    pipeline: pipeline_example,
    // string | Name of the run
    run: run_example,
    // string | Name of the node
    node: node_example,
  } satisfies GetPipelineRunNodeRequest;

  try {
    const data = await api.getPipelineRunNode(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | `string` | Name of the organization | [Defaults to `undefined`] |
| **pipeline** | `string` | Name of the pipeline | [Defaults to `undefined`] |
| **run** | `string` | Name of the run | [Defaults to `undefined`] |
| **node** | `string` | Name of the node | [Defaults to `undefined`] |

### Return type

[**PipelineRunNode**](PipelineRunNode.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved run node details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getPipelineRunNodeStep

> PipelineStepImpl getPipelineRunNodeStep(organization, pipeline, run, node, step)



Retrieve run node details for an organization pipeline

### Example

```ts
import {
  Configuration,
  BlueOceanApi,
} from '';
import type { GetPipelineRunNodeStepRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new BlueOceanApi(config);

  const body = {
    // string | Name of the organization
    organization: organization_example,
    // string | Name of the pipeline
    pipeline: pipeline_example,
    // string | Name of the run
    run: run_example,
    // string | Name of the node
    node: node_example,
    // string | Name of the step
    step: step_example,
  } satisfies GetPipelineRunNodeStepRequest;

  try {
    const data = await api.getPipelineRunNodeStep(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | `string` | Name of the organization | [Defaults to `undefined`] |
| **pipeline** | `string` | Name of the pipeline | [Defaults to `undefined`] |
| **run** | `string` | Name of the run | [Defaults to `undefined`] |
| **node** | `string` | Name of the node | [Defaults to `undefined`] |
| **step** | `string` | Name of the step | [Defaults to `undefined`] |

### Return type

[**PipelineStepImpl**](PipelineStepImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved run node step details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getPipelineRunNodeStepLog

> string getPipelineRunNodeStepLog(organization, pipeline, run, node, step)



Get log for a pipeline run node step

### Example

```ts
import {
  Configuration,
  BlueOceanApi,
} from '';
import type { GetPipelineRunNodeStepLogRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new BlueOceanApi(config);

  const body = {
    // string | Name of the organization
    organization: organization_example,
    // string | Name of the pipeline
    pipeline: pipeline_example,
    // string | Name of the run
    run: run_example,
    // string | Name of the node
    node: node_example,
    // string | Name of the step
    step: step_example,
  } satisfies GetPipelineRunNodeStepLogRequest;

  try {
    const data = await api.getPipelineRunNodeStepLog(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | `string` | Name of the organization | [Defaults to `undefined`] |
| **pipeline** | `string` | Name of the pipeline | [Defaults to `undefined`] |
| **run** | `string` | Name of the run | [Defaults to `undefined`] |
| **node** | `string` | Name of the node | [Defaults to `undefined`] |
| **step** | `string` | Name of the step | [Defaults to `undefined`] |

### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved pipeline run node step log |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getPipelineRunNodeSteps

> Array&lt;PipelineStepImpl&gt; getPipelineRunNodeSteps(organization, pipeline, run, node)



Retrieve run node steps details for an organization pipeline

### Example

```ts
import {
  Configuration,
  BlueOceanApi,
} from '';
import type { GetPipelineRunNodeStepsRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new BlueOceanApi(config);

  const body = {
    // string | Name of the organization
    organization: organization_example,
    // string | Name of the pipeline
    pipeline: pipeline_example,
    // string | Name of the run
    run: run_example,
    // string | Name of the node
    node: node_example,
  } satisfies GetPipelineRunNodeStepsRequest;

  try {
    const data = await api.getPipelineRunNodeSteps(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | `string` | Name of the organization | [Defaults to `undefined`] |
| **pipeline** | `string` | Name of the pipeline | [Defaults to `undefined`] |
| **run** | `string` | Name of the run | [Defaults to `undefined`] |
| **node** | `string` | Name of the node | [Defaults to `undefined`] |

### Return type

[**Array&lt;PipelineStepImpl&gt;**](PipelineStepImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved run node steps details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getPipelineRunNodes

> Array&lt;PipelineRunNode&gt; getPipelineRunNodes(organization, pipeline, run)



Retrieve run nodes details for an organization pipeline

### Example

```ts
import {
  Configuration,
  BlueOceanApi,
} from '';
import type { GetPipelineRunNodesRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new BlueOceanApi(config);

  const body = {
    // string | Name of the organization
    organization: organization_example,
    // string | Name of the pipeline
    pipeline: pipeline_example,
    // string | Name of the run
    run: run_example,
  } satisfies GetPipelineRunNodesRequest;

  try {
    const data = await api.getPipelineRunNodes(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | `string` | Name of the organization | [Defaults to `undefined`] |
| **pipeline** | `string` | Name of the pipeline | [Defaults to `undefined`] |
| **run** | `string` | Name of the run | [Defaults to `undefined`] |

### Return type

[**Array&lt;PipelineRunNode&gt;**](PipelineRunNode.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved run nodes details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getPipelineRuns

> Array&lt;PipelineRun&gt; getPipelineRuns(organization, pipeline)



Retrieve all runs details for an organization pipeline

### Example

```ts
import {
  Configuration,
  BlueOceanApi,
} from '';
import type { GetPipelineRunsRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new BlueOceanApi(config);

  const body = {
    // string | Name of the organization
    organization: organization_example,
    // string | Name of the pipeline
    pipeline: pipeline_example,
  } satisfies GetPipelineRunsRequest;

  try {
    const data = await api.getPipelineRuns(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | `string` | Name of the organization | [Defaults to `undefined`] |
| **pipeline** | `string` | Name of the pipeline | [Defaults to `undefined`] |

### Return type

[**Array&lt;PipelineRun&gt;**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved runs details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getPipelines

> Array&lt;Pipeline&gt; getPipelines(organization)



Retrieve all pipelines details for an organization

### Example

```ts
import {
  Configuration,
  BlueOceanApi,
} from '';
import type { GetPipelinesRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new BlueOceanApi(config);

  const body = {
    // string | Name of the organization
    organization: organization_example,
  } satisfies GetPipelinesRequest;

  try {
    const data = await api.getPipelines(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | `string` | Name of the organization | [Defaults to `undefined`] |

### Return type

[**Array&lt;Pipeline&gt;**](Pipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved pipelines details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getSCM

> GithubScm getSCM(organization, scm)



Retrieve SCM details for an organization

### Example

```ts
import {
  Configuration,
  BlueOceanApi,
} from '';
import type { GetSCMRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new BlueOceanApi(config);

  const body = {
    // string | Name of the organization
    organization: organization_example,
    // string | Name of SCM
    scm: scm_example,
  } satisfies GetSCMRequest;

  try {
    const data = await api.getSCM(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | `string` | Name of the organization | [Defaults to `undefined`] |
| **scm** | `string` | Name of SCM | [Defaults to `undefined`] |

### Return type

[**GithubScm**](GithubScm.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved SCM details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getSCMOrganisationRepositories

> Array&lt;GithubOrganization&gt; getSCMOrganisationRepositories(organization, scm, scmOrganisation, credentialId, pageSize, pageNumber)



Retrieve SCM organization repositories details for an organization

### Example

```ts
import {
  Configuration,
  BlueOceanApi,
} from '';
import type { GetSCMOrganisationRepositoriesRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new BlueOceanApi(config);

  const body = {
    // string | Name of the organization
    organization: organization_example,
    // string | Name of SCM
    scm: scm_example,
    // string | Name of the SCM organization
    scmOrganisation: scmOrganisation_example,
    // string | Credential ID (optional)
    credentialId: credentialId_example,
    // number | Number of items in a page (optional)
    pageSize: 56,
    // number | Page number (optional)
    pageNumber: 56,
  } satisfies GetSCMOrganisationRepositoriesRequest;

  try {
    const data = await api.getSCMOrganisationRepositories(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | `string` | Name of the organization | [Defaults to `undefined`] |
| **scm** | `string` | Name of SCM | [Defaults to `undefined`] |
| **scmOrganisation** | `string` | Name of the SCM organization | [Defaults to `undefined`] |
| **credentialId** | `string` | Credential ID | [Optional] [Defaults to `undefined`] |
| **pageSize** | `number` | Number of items in a page | [Optional] [Defaults to `undefined`] |
| **pageNumber** | `number` | Page number | [Optional] [Defaults to `undefined`] |

### Return type

[**Array&lt;GithubOrganization&gt;**](GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved SCM organization repositories details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getSCMOrganisationRepository

> Array&lt;GithubOrganization&gt; getSCMOrganisationRepository(organization, scm, scmOrganisation, repository, credentialId)



Retrieve SCM organization repository details for an organization

### Example

```ts
import {
  Configuration,
  BlueOceanApi,
} from '';
import type { GetSCMOrganisationRepositoryRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new BlueOceanApi(config);

  const body = {
    // string | Name of the organization
    organization: organization_example,
    // string | Name of SCM
    scm: scm_example,
    // string | Name of the SCM organization
    scmOrganisation: scmOrganisation_example,
    // string | Name of the SCM repository
    repository: repository_example,
    // string | Credential ID (optional)
    credentialId: credentialId_example,
  } satisfies GetSCMOrganisationRepositoryRequest;

  try {
    const data = await api.getSCMOrganisationRepository(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | `string` | Name of the organization | [Defaults to `undefined`] |
| **scm** | `string` | Name of SCM | [Defaults to `undefined`] |
| **scmOrganisation** | `string` | Name of the SCM organization | [Defaults to `undefined`] |
| **repository** | `string` | Name of the SCM repository | [Defaults to `undefined`] |
| **credentialId** | `string` | Credential ID | [Optional] [Defaults to `undefined`] |

### Return type

[**Array&lt;GithubOrganization&gt;**](GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved SCM organizations details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getSCMOrganisations

> Array&lt;GithubOrganization&gt; getSCMOrganisations(organization, scm, credentialId)



Retrieve SCM organizations details for an organization

### Example

```ts
import {
  Configuration,
  BlueOceanApi,
} from '';
import type { GetSCMOrganisationsRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new BlueOceanApi(config);

  const body = {
    // string | Name of the organization
    organization: organization_example,
    // string | Name of SCM
    scm: scm_example,
    // string | Credential ID (optional)
    credentialId: credentialId_example,
  } satisfies GetSCMOrganisationsRequest;

  try {
    const data = await api.getSCMOrganisations(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | `string` | Name of the organization | [Defaults to `undefined`] |
| **scm** | `string` | Name of SCM | [Defaults to `undefined`] |
| **credentialId** | `string` | Credential ID | [Optional] [Defaults to `undefined`] |

### Return type

[**Array&lt;GithubOrganization&gt;**](GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved SCM organizations details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getUser

> User getUser(organization, user)



Retrieve user details for an organization

### Example

```ts
import {
  Configuration,
  BlueOceanApi,
} from '';
import type { GetUserRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new BlueOceanApi(config);

  const body = {
    // string | Name of the organization
    organization: organization_example,
    // string | Name of the user
    user: user_example,
  } satisfies GetUserRequest;

  try {
    const data = await api.getUser(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | `string` | Name of the organization | [Defaults to `undefined`] |
| **user** | `string` | Name of the user | [Defaults to `undefined`] |

### Return type

[**User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved users details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getUserFavorites

> Array&lt;FavoriteImpl&gt; getUserFavorites(user)



Retrieve user favorites details for an organization

### Example

```ts
import {
  Configuration,
  BlueOceanApi,
} from '';
import type { GetUserFavoritesRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new BlueOceanApi(config);

  const body = {
    // string | Name of the user
    user: user_example,
  } satisfies GetUserFavoritesRequest;

  try {
    const data = await api.getUserFavorites(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **user** | `string` | Name of the user | [Defaults to `undefined`] |

### Return type

[**Array&lt;FavoriteImpl&gt;**](FavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved users favorites details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## getUsers

> User getUsers(organization)



Retrieve users details for an organization

### Example

```ts
import {
  Configuration,
  BlueOceanApi,
} from '';
import type { GetUsersRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new BlueOceanApi(config);

  const body = {
    // string | Name of the organization
    organization: organization_example,
  } satisfies GetUsersRequest;

  try {
    const data = await api.getUsers(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | `string` | Name of the organization | [Defaults to `undefined`] |

### Return type

[**User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved users details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## postPipelineRun

> QueueItemImpl postPipelineRun(organization, pipeline, run)



Replay an organization pipeline run

### Example

```ts
import {
  Configuration,
  BlueOceanApi,
} from '';
import type { PostPipelineRunRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new BlueOceanApi(config);

  const body = {
    // string | Name of the organization
    organization: organization_example,
    // string | Name of the pipeline
    pipeline: pipeline_example,
    // string | Name of the run
    run: run_example,
  } satisfies PostPipelineRunRequest;

  try {
    const data = await api.postPipelineRun(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | `string` | Name of the organization | [Defaults to `undefined`] |
| **pipeline** | `string` | Name of the pipeline | [Defaults to `undefined`] |
| **run** | `string` | Name of the run | [Defaults to `undefined`] |

### Return type

[**QueueItemImpl**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully replayed a pipeline run |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## postPipelineRuns

> QueueItemImpl postPipelineRuns(organization, pipeline)



Start a build for an organization pipeline

### Example

```ts
import {
  Configuration,
  BlueOceanApi,
} from '';
import type { PostPipelineRunsRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new BlueOceanApi(config);

  const body = {
    // string | Name of the organization
    organization: organization_example,
    // string | Name of the pipeline
    pipeline: pipeline_example,
  } satisfies PostPipelineRunsRequest;

  try {
    const data = await api.postPipelineRuns(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | `string` | Name of the organization | [Defaults to `undefined`] |
| **pipeline** | `string` | Name of the pipeline | [Defaults to `undefined`] |

### Return type

[**QueueItemImpl**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully started a build |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## putPipelineFavorite

> FavoriteImpl putPipelineFavorite(organization, pipeline, body)



Favorite/unfavorite a pipeline

### Example

```ts
import {
  Configuration,
  BlueOceanApi,
} from '';
import type { PutPipelineFavoriteRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new BlueOceanApi(config);

  const body = {
    // string | Name of the organization
    organization: organization_example,
    // string | Name of the pipeline
    pipeline: pipeline_example,
    // boolean | Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite
    body: true,
  } satisfies PutPipelineFavoriteRequest;

  try {
    const data = await api.putPipelineFavorite(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | `string` | Name of the organization | [Defaults to `undefined`] |
| **pipeline** | `string` | Name of the pipeline | [Defaults to `undefined`] |
| **body** | `boolean` | Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite | |

### Return type

[**FavoriteImpl**](FavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully favorited/unfavorited a pipeline |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## putPipelineRun

> PipelineRun putPipelineRun(organization, pipeline, run, blocking, timeOutInSecs)



Stop a build of an organization pipeline

### Example

```ts
import {
  Configuration,
  BlueOceanApi,
} from '';
import type { PutPipelineRunRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new BlueOceanApi(config);

  const body = {
    // string | Name of the organization
    organization: organization_example,
    // string | Name of the pipeline
    pipeline: pipeline_example,
    // string | Name of the run
    run: run_example,
    // string | Set to true to make blocking stop, default: false (optional)
    blocking: blocking_example,
    // number | Timeout in seconds, default: 10 seconds (optional)
    timeOutInSecs: 56,
  } satisfies PutPipelineRunRequest;

  try {
    const data = await api.putPipelineRun(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | `string` | Name of the organization | [Defaults to `undefined`] |
| **pipeline** | `string` | Name of the pipeline | [Defaults to `undefined`] |
| **run** | `string` | Name of the run | [Defaults to `undefined`] |
| **blocking** | `string` | Set to true to make blocking stop, default: false | [Optional] [Defaults to `undefined`] |
| **timeOutInSecs** | `number` | Timeout in seconds, default: 10 seconds | [Optional] [Defaults to `undefined`] |

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully stopped a build |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## search

> string search(q)



Search for any resource details

### Example

```ts
import {
  Configuration,
  BlueOceanApi,
} from '';
import type { SearchRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new BlueOceanApi(config);

  const body = {
    // string | Query string
    q: q_example,
  } satisfies SearchRequest;

  try {
    const data = await api.search(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **q** | `string` | Query string | [Defaults to `undefined`] |

### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved search result |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)


## searchClasses

> string searchClasses(q)



Get classes details

### Example

```ts
import {
  Configuration,
  BlueOceanApi,
} from '';
import type { SearchClassesRequest } from '';

async function example() {
  console.log("🚀 Testing  SDK...");
  const config = new Configuration({ 
    // To configure HTTP basic authorization: jenkins_auth
    username: "YOUR USERNAME",
    password: "YOUR PASSWORD",
  });
  const api = new BlueOceanApi(config);

  const body = {
    // string | Query string containing an array of class names
    q: q_example,
  } satisfies SearchClassesRequest;

  try {
    const data = await api.searchClasses(body);
    console.log(data);
  } catch (error) {
    console.error(error);
  }
}

// Run the test
example().catch(console.error);
```

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **q** | `string` | Query string containing an array of class names | [Defaults to `undefined`] |

### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved search result |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

