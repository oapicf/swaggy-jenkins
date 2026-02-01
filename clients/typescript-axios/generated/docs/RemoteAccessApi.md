# RemoteAccessApi

All URIs are relative to *http://localhost*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**getComputer**](#getcomputer) | **GET** /computer/api/json | |
|[**getJenkins**](#getjenkins) | **GET** /api/json | |
|[**getJob**](#getjob) | **GET** /job/{name}/api/json | |
|[**getJobConfig**](#getjobconfig) | **GET** /job/{name}/config.xml | |
|[**getJobLastBuild**](#getjoblastbuild) | **GET** /job/{name}/lastBuild/api/json | |
|[**getJobProgressiveText**](#getjobprogressivetext) | **GET** /job/{name}/{number}/logText/progressiveText | |
|[**getQueue**](#getqueue) | **GET** /queue/api/json | |
|[**getQueueItem**](#getqueueitem) | **GET** /queue/item/{number}/api/json | |
|[**getView**](#getview) | **GET** /view/{name}/api/json | |
|[**getViewConfig**](#getviewconfig) | **GET** /view/{name}/config.xml | |
|[**headJenkins**](#headjenkins) | **HEAD** /api/json | |
|[**postCreateItem**](#postcreateitem) | **POST** /createItem | |
|[**postCreateView**](#postcreateview) | **POST** /createView | |
|[**postJobBuild**](#postjobbuild) | **POST** /job/{name}/build | |
|[**postJobConfig**](#postjobconfig) | **POST** /job/{name}/config.xml | |
|[**postJobDelete**](#postjobdelete) | **POST** /job/{name}/doDelete | |
|[**postJobDisable**](#postjobdisable) | **POST** /job/{name}/disable | |
|[**postJobEnable**](#postjobenable) | **POST** /job/{name}/enable | |
|[**postJobLastBuildStop**](#postjoblastbuildstop) | **POST** /job/{name}/lastBuild/stop | |
|[**postViewConfig**](#postviewconfig) | **POST** /view/{name}/config.xml | |

# **getComputer**
> ComputerSet getComputer()

Retrieve computer details

### Example

```typescript
import {
    RemoteAccessApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new RemoteAccessApi(configuration);

let depth: number; //Recursion depth in response model (default to undefined)

const { status, data } = await apiInstance.getComputer(
    depth
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **depth** | [**number**] | Recursion depth in response model | defaults to undefined|


### Return type

**ComputerSet**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved computer details |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJenkins**
> Hudson getJenkins()

Retrieve Jenkins details

### Example

```typescript
import {
    RemoteAccessApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new RemoteAccessApi(configuration);

const { status, data } = await apiInstance.getJenkins();
```

### Parameters
This endpoint does not have any parameters.


### Return type

**Hudson**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved Jenkins details |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJob**
> FreeStyleProject getJob()

Retrieve job details

### Example

```typescript
import {
    RemoteAccessApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new RemoteAccessApi(configuration);

let name: string; //Name of the job (default to undefined)

const { status, data } = await apiInstance.getJob(
    name
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **name** | [**string**] | Name of the job | defaults to undefined|


### Return type

**FreeStyleProject**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved job details |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |
|**404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobConfig**
> string getJobConfig()

Retrieve job configuration

### Example

```typescript
import {
    RemoteAccessApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new RemoteAccessApi(configuration);

let name: string; //Name of the job (default to undefined)

const { status, data } = await apiInstance.getJobConfig(
    name
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **name** | [**string**] | Name of the job | defaults to undefined|


### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved job configuration in config.xml format |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |
|**404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobLastBuild**
> FreeStyleBuild getJobLastBuild()

Retrieve job\'s last build details

### Example

```typescript
import {
    RemoteAccessApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new RemoteAccessApi(configuration);

let name: string; //Name of the job (default to undefined)

const { status, data } = await apiInstance.getJobLastBuild(
    name
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **name** | [**string**] | Name of the job | defaults to undefined|


### Return type

**FreeStyleBuild**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved job\&#39;s last build details |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |
|**404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobProgressiveText**
> getJobProgressiveText()

Retrieve job\'s build progressive text output

### Example

```typescript
import {
    RemoteAccessApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new RemoteAccessApi(configuration);

let name: string; //Name of the job (default to undefined)
let number: string; //Build number (default to undefined)
let start: string; //Starting point of progressive text output (default to undefined)

const { status, data } = await apiInstance.getJobProgressiveText(
    name,
    number,
    start
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **name** | [**string**] | Name of the job | defaults to undefined|
| **number** | [**string**] | Build number | defaults to undefined|
| **start** | [**string**] | Starting point of progressive text output | defaults to undefined|


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
|**200** | Successfully retrieved job\&#39;s build progressive text output |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |
|**404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQueue**
> Queue getQueue()

Retrieve queue details

### Example

```typescript
import {
    RemoteAccessApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new RemoteAccessApi(configuration);

const { status, data } = await apiInstance.getQueue();
```

### Parameters
This endpoint does not have any parameters.


### Return type

**Queue**

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

# **getQueueItem**
> Queue getQueueItem()

Retrieve queued item details

### Example

```typescript
import {
    RemoteAccessApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new RemoteAccessApi(configuration);

let number: string; //Queue number (default to undefined)

const { status, data } = await apiInstance.getQueueItem(
    number
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **number** | [**string**] | Queue number | defaults to undefined|


### Return type

**Queue**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved queued item details |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getView**
> ListView getView()

Retrieve view details

### Example

```typescript
import {
    RemoteAccessApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new RemoteAccessApi(configuration);

let name: string; //Name of the view (default to undefined)

const { status, data } = await apiInstance.getView(
    name
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **name** | [**string**] | Name of the view | defaults to undefined|


### Return type

**ListView**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved view details |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |
|**404** | View cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getViewConfig**
> string getViewConfig()

Retrieve view configuration

### Example

```typescript
import {
    RemoteAccessApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new RemoteAccessApi(configuration);

let name: string; //Name of the view (default to undefined)

const { status, data } = await apiInstance.getViewConfig(
    name
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **name** | [**string**] | Name of the view | defaults to undefined|


### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved view configuration in config.xml format |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |
|**404** | View cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **headJenkins**
> headJenkins()

Retrieve Jenkins headers

### Example

```typescript
import {
    RemoteAccessApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new RemoteAccessApi(configuration);

const { status, data } = await apiInstance.headJenkins();
```

### Parameters
This endpoint does not have any parameters.


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
|**200** | Successfully retrieved Jenkins headers |  * x-jenkins - Jenkins version number <br>  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postCreateItem**
> postCreateItem()

Create a new job using job configuration, or copied from an existing job

### Example

```typescript
import {
    RemoteAccessApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new RemoteAccessApi(configuration);

let name: string; //Name of the new job (default to undefined)
let from: string; //Existing job to copy from (optional) (default to undefined)
let mode: string; //Set to \'copy\' for copying an existing job (optional) (default to undefined)
let jenkinsCrumb: string; //CSRF protection token (optional) (default to undefined)
let contentType: string; //Content type header application/xml (optional) (default to undefined)
let body: string; //Job configuration in config.xml format (optional)

const { status, data } = await apiInstance.postCreateItem(
    name,
    from,
    mode,
    jenkinsCrumb,
    contentType,
    body
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **body** | **string**| Job configuration in config.xml format | |
| **name** | [**string**] | Name of the new job | defaults to undefined|
| **from** | [**string**] | Existing job to copy from | (optional) defaults to undefined|
| **mode** | [**string**] | Set to \&#39;copy\&#39; for copying an existing job | (optional) defaults to undefined|
| **jenkinsCrumb** | [**string**] | CSRF protection token | (optional) defaults to undefined|
| **contentType** | [**string**] | Content type header application/xml | (optional) defaults to undefined|


### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully created a new job |  -  |
|**400** | An error has occurred - error message is embedded inside the HTML response |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postCreateView**
> postCreateView()

Create a new view using view configuration

### Example

```typescript
import {
    RemoteAccessApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new RemoteAccessApi(configuration);

let name: string; //Name of the new view (default to undefined)
let jenkinsCrumb: string; //CSRF protection token (optional) (default to undefined)
let contentType: string; //Content type header application/xml (optional) (default to undefined)
let body: string; //View configuration in config.xml format (optional)

const { status, data } = await apiInstance.postCreateView(
    name,
    jenkinsCrumb,
    contentType,
    body
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **body** | **string**| View configuration in config.xml format | |
| **name** | [**string**] | Name of the new view | defaults to undefined|
| **jenkinsCrumb** | [**string**] | CSRF protection token | (optional) defaults to undefined|
| **contentType** | [**string**] | Content type header application/xml | (optional) defaults to undefined|


### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully created the view |  -  |
|**400** | An error has occurred - error message is embedded inside the HTML response |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postJobBuild**
> postJobBuild()

Build a job

### Example

```typescript
import {
    RemoteAccessApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new RemoteAccessApi(configuration);

let name: string; //Name of the job (default to undefined)
let json: string; // (default to undefined)
let token: string; // (optional) (default to undefined)
let jenkinsCrumb: string; //CSRF protection token (optional) (default to undefined)

const { status, data } = await apiInstance.postJobBuild(
    name,
    json,
    token,
    jenkinsCrumb
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **name** | [**string**] | Name of the job | defaults to undefined|
| **json** | [**string**] |  | defaults to undefined|
| **token** | [**string**] |  | (optional) defaults to undefined|
| **jenkinsCrumb** | [**string**] | CSRF protection token | (optional) defaults to undefined|


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
|**200** | Successfully built the job (backward compatibility for older versions of Jenkins) |  -  |
|**201** | Successfully built the job |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |
|**404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postJobConfig**
> postJobConfig(body)

Update job configuration

### Example

```typescript
import {
    RemoteAccessApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new RemoteAccessApi(configuration);

let name: string; //Name of the job (default to undefined)
let body: string; //Job configuration in config.xml format
let jenkinsCrumb: string; //CSRF protection token (optional) (default to undefined)

const { status, data } = await apiInstance.postJobConfig(
    name,
    body,
    jenkinsCrumb
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **body** | **string**| Job configuration in config.xml format | |
| **name** | [**string**] | Name of the job | defaults to undefined|
| **jenkinsCrumb** | [**string**] | CSRF protection token | (optional) defaults to undefined|


### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved job configuration in config.xml format |  -  |
|**400** | An error has occurred - error message is embedded inside the HTML response |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |
|**404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postJobDelete**
> postJobDelete()

Delete a job

### Example

```typescript
import {
    RemoteAccessApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new RemoteAccessApi(configuration);

let name: string; //Name of the job (default to undefined)
let jenkinsCrumb: string; //CSRF protection token (optional) (default to undefined)

const { status, data } = await apiInstance.postJobDelete(
    name,
    jenkinsCrumb
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **name** | [**string**] | Name of the job | defaults to undefined|
| **jenkinsCrumb** | [**string**] | CSRF protection token | (optional) defaults to undefined|


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
|**200** | Successfully deleted the job |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |
|**404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postJobDisable**
> postJobDisable()

Disable a job

### Example

```typescript
import {
    RemoteAccessApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new RemoteAccessApi(configuration);

let name: string; //Name of the job (default to undefined)
let jenkinsCrumb: string; //CSRF protection token (optional) (default to undefined)

const { status, data } = await apiInstance.postJobDisable(
    name,
    jenkinsCrumb
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **name** | [**string**] | Name of the job | defaults to undefined|
| **jenkinsCrumb** | [**string**] | CSRF protection token | (optional) defaults to undefined|


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
|**200** | Successfully disabled the job |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |
|**404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postJobEnable**
> postJobEnable()

Enable a job

### Example

```typescript
import {
    RemoteAccessApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new RemoteAccessApi(configuration);

let name: string; //Name of the job (default to undefined)
let jenkinsCrumb: string; //CSRF protection token (optional) (default to undefined)

const { status, data } = await apiInstance.postJobEnable(
    name,
    jenkinsCrumb
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **name** | [**string**] | Name of the job | defaults to undefined|
| **jenkinsCrumb** | [**string**] | CSRF protection token | (optional) defaults to undefined|


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
|**200** | Successfully enabled the job |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |
|**404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postJobLastBuildStop**
> postJobLastBuildStop()

Stop a job

### Example

```typescript
import {
    RemoteAccessApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new RemoteAccessApi(configuration);

let name: string; //Name of the job (default to undefined)
let jenkinsCrumb: string; //CSRF protection token (optional) (default to undefined)

const { status, data } = await apiInstance.postJobLastBuildStop(
    name,
    jenkinsCrumb
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **name** | [**string**] | Name of the job | defaults to undefined|
| **jenkinsCrumb** | [**string**] | CSRF protection token | (optional) defaults to undefined|


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
|**200** | Successfully stopped the job |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |
|**404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postViewConfig**
> postViewConfig(body)

Update view configuration

### Example

```typescript
import {
    RemoteAccessApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new RemoteAccessApi(configuration);

let name: string; //Name of the view (default to undefined)
let body: string; //View configuration in config.xml format
let jenkinsCrumb: string; //CSRF protection token (optional) (default to undefined)

const { status, data } = await apiInstance.postViewConfig(
    name,
    body,
    jenkinsCrumb
);
```

### Parameters

|Name | Type | Description  | Notes|
|------------- | ------------- | ------------- | -------------|
| **body** | **string**| View configuration in config.xml format | |
| **name** | [**string**] | Name of the view | defaults to undefined|
| **jenkinsCrumb** | [**string**] | CSRF protection token | (optional) defaults to undefined|


### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully updated view configuration |  -  |
|**400** | An error has occurred - error message is embedded inside the HTML response |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |
|**404** | View cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

