# .RemoteAccessApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getComputer**](RemoteAccessApi.md#getComputer) | **GET** /computer/api/json | 
[**getJenkins**](RemoteAccessApi.md#getJenkins) | **GET** /api/json | 
[**getJob**](RemoteAccessApi.md#getJob) | **GET** /job/{name}/api/json | 
[**getJobConfig**](RemoteAccessApi.md#getJobConfig) | **GET** /job/{name}/config.xml | 
[**getJobLastBuild**](RemoteAccessApi.md#getJobLastBuild) | **GET** /job/{name}/lastBuild/api/json | 
[**getJobProgressiveText**](RemoteAccessApi.md#getJobProgressiveText) | **GET** /job/{name}/{number}/logText/progressiveText | 
[**getQueue**](RemoteAccessApi.md#getQueue) | **GET** /queue/api/json | 
[**getQueueItem**](RemoteAccessApi.md#getQueueItem) | **GET** /queue/item/{number}/api/json | 
[**getView**](RemoteAccessApi.md#getView) | **GET** /view/{name}/api/json | 
[**getViewConfig**](RemoteAccessApi.md#getViewConfig) | **GET** /view/{name}/config.xml | 
[**headJenkins**](RemoteAccessApi.md#headJenkins) | **HEAD** /api/json | 
[**postCreateItem**](RemoteAccessApi.md#postCreateItem) | **POST** /createItem | 
[**postCreateView**](RemoteAccessApi.md#postCreateView) | **POST** /createView | 
[**postJobBuild**](RemoteAccessApi.md#postJobBuild) | **POST** /job/{name}/build | 
[**postJobConfig**](RemoteAccessApi.md#postJobConfig) | **POST** /job/{name}/config.xml | 
[**postJobDelete**](RemoteAccessApi.md#postJobDelete) | **POST** /job/{name}/doDelete | 
[**postJobDisable**](RemoteAccessApi.md#postJobDisable) | **POST** /job/{name}/disable | 
[**postJobEnable**](RemoteAccessApi.md#postJobEnable) | **POST** /job/{name}/enable | 
[**postJobLastBuildStop**](RemoteAccessApi.md#postJobLastBuildStop) | **POST** /job/{name}/lastBuild/stop | 
[**postViewConfig**](RemoteAccessApi.md#postViewConfig) | **POST** /view/{name}/config.xml | 


# **getComputer**
> ComputerSet getComputer()

Retrieve computer details

### Example


```typescript
import { createConfiguration, RemoteAccessApi } from '';
import type { RemoteAccessApiGetComputerRequest } from '';

const configuration = createConfiguration();
const apiInstance = new RemoteAccessApi(configuration);

const request: RemoteAccessApiGetComputerRequest = {
    // Recursion depth in response model
  depth: 1,
};

const data = await apiInstance.getComputer(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **depth** | [**number**] | Recursion depth in response model | defaults to undefined


### Return type

**ComputerSet**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved computer details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getJenkins**
> Hudson getJenkins()

Retrieve Jenkins details

### Example


```typescript
import { createConfiguration, RemoteAccessApi } from '';

const configuration = createConfiguration();
const apiInstance = new RemoteAccessApi(configuration);

const request = {};

const data = await apiInstance.getJenkins(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters
This endpoint does not need any parameter.


### Return type

**Hudson**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved Jenkins details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getJob**
> FreeStyleProject getJob()

Retrieve job details

### Example


```typescript
import { createConfiguration, RemoteAccessApi } from '';
import type { RemoteAccessApiGetJobRequest } from '';

const configuration = createConfiguration();
const apiInstance = new RemoteAccessApi(configuration);

const request: RemoteAccessApiGetJobRequest = {
    // Name of the job
  name: "name_example",
};

const data = await apiInstance.getJob(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | [**string**] | Name of the job | defaults to undefined


### Return type

**FreeStyleProject**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved job details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getJobConfig**
> string getJobConfig()

Retrieve job configuration

### Example


```typescript
import { createConfiguration, RemoteAccessApi } from '';
import type { RemoteAccessApiGetJobConfigRequest } from '';

const configuration = createConfiguration();
const apiInstance = new RemoteAccessApi(configuration);

const request: RemoteAccessApiGetJobConfigRequest = {
    // Name of the job
  name: "name_example",
};

const data = await apiInstance.getJobConfig(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | [**string**] | Name of the job | defaults to undefined


### Return type

**string**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved job configuration in config.xml format |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getJobLastBuild**
> FreeStyleBuild getJobLastBuild()

Retrieve job\'s last build details

### Example


```typescript
import { createConfiguration, RemoteAccessApi } from '';
import type { RemoteAccessApiGetJobLastBuildRequest } from '';

const configuration = createConfiguration();
const apiInstance = new RemoteAccessApi(configuration);

const request: RemoteAccessApiGetJobLastBuildRequest = {
    // Name of the job
  name: "name_example",
};

const data = await apiInstance.getJobLastBuild(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | [**string**] | Name of the job | defaults to undefined


### Return type

**FreeStyleBuild**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved job\&#39;s last build details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getJobProgressiveText**
> void getJobProgressiveText()

Retrieve job\'s build progressive text output

### Example


```typescript
import { createConfiguration, RemoteAccessApi } from '';
import type { RemoteAccessApiGetJobProgressiveTextRequest } from '';

const configuration = createConfiguration();
const apiInstance = new RemoteAccessApi(configuration);

const request: RemoteAccessApiGetJobProgressiveTextRequest = {
    // Name of the job
  name: "name_example",
    // Build number
  number: "number_example",
    // Starting point of progressive text output
  start: "start_example",
};

const data = await apiInstance.getJobProgressiveText(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | [**string**] | Name of the job | defaults to undefined
 **number** | [**string**] | Build number | defaults to undefined
 **start** | [**string**] | Starting point of progressive text output | defaults to undefined


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
**200** | Successfully retrieved job\&#39;s build progressive text output |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getQueue**
> Queue getQueue()

Retrieve queue details

### Example


```typescript
import { createConfiguration, RemoteAccessApi } from '';

const configuration = createConfiguration();
const apiInstance = new RemoteAccessApi(configuration);

const request = {};

const data = await apiInstance.getQueue(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters
This endpoint does not need any parameter.


### Return type

**Queue**

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

# **getQueueItem**
> Queue getQueueItem()

Retrieve queued item details

### Example


```typescript
import { createConfiguration, RemoteAccessApi } from '';
import type { RemoteAccessApiGetQueueItemRequest } from '';

const configuration = createConfiguration();
const apiInstance = new RemoteAccessApi(configuration);

const request: RemoteAccessApiGetQueueItemRequest = {
    // Queue number
  number: "number_example",
};

const data = await apiInstance.getQueueItem(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | [**string**] | Queue number | defaults to undefined


### Return type

**Queue**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved queued item details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getView**
> ListView getView()

Retrieve view details

### Example


```typescript
import { createConfiguration, RemoteAccessApi } from '';
import type { RemoteAccessApiGetViewRequest } from '';

const configuration = createConfiguration();
const apiInstance = new RemoteAccessApi(configuration);

const request: RemoteAccessApiGetViewRequest = {
    // Name of the view
  name: "name_example",
};

const data = await apiInstance.getView(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | [**string**] | Name of the view | defaults to undefined


### Return type

**ListView**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved view details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | View cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **getViewConfig**
> string getViewConfig()

Retrieve view configuration

### Example


```typescript
import { createConfiguration, RemoteAccessApi } from '';
import type { RemoteAccessApiGetViewConfigRequest } from '';

const configuration = createConfiguration();
const apiInstance = new RemoteAccessApi(configuration);

const request: RemoteAccessApiGetViewConfigRequest = {
    // Name of the view
  name: "name_example",
};

const data = await apiInstance.getViewConfig(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | [**string**] | Name of the view | defaults to undefined


### Return type

**string**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved view configuration in config.xml format |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | View cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **headJenkins**
> void headJenkins()

Retrieve Jenkins headers

### Example


```typescript
import { createConfiguration, RemoteAccessApi } from '';

const configuration = createConfiguration();
const apiInstance = new RemoteAccessApi(configuration);

const request = {};

const data = await apiInstance.headJenkins(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters
This endpoint does not need any parameter.


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
**200** | Successfully retrieved Jenkins headers |  * x-jenkins - Jenkins version number <br>  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **postCreateItem**
> void postCreateItem()

Create a new job using job configuration, or copied from an existing job

### Example


```typescript
import { createConfiguration, RemoteAccessApi } from '';
import type { RemoteAccessApiPostCreateItemRequest } from '';

const configuration = createConfiguration();
const apiInstance = new RemoteAccessApi(configuration);

const request: RemoteAccessApiPostCreateItemRequest = {
    // Name of the new job
  name: "name_example",
    // Existing job to copy from (optional)
  _from: "from_example",
    // Set to \'copy\' for copying an existing job (optional)
  mode: "mode_example",
    // CSRF protection token (optional)
  jenkinsCrumb: "Jenkins-Crumb_example",
    // Content type header application/xml (optional)
  contentType: "Content-Type_example",
    // Job configuration in config.xml format (optional)
  body: "body_example",
};

const data = await apiInstance.postCreateItem(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **string**| Job configuration in config.xml format |
 **name** | [**string**] | Name of the new job | defaults to undefined
 **_from** | [**string**] | Existing job to copy from | (optional) defaults to undefined
 **mode** | [**string**] | Set to \&#39;copy\&#39; for copying an existing job | (optional) defaults to undefined
 **jenkinsCrumb** | [**string**] | CSRF protection token | (optional) defaults to undefined
 **contentType** | [**string**] | Content type header application/xml | (optional) defaults to undefined


### Return type

**void**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully created a new job |  -  |
**400** | An error has occurred - error message is embedded inside the HTML response |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **postCreateView**
> void postCreateView()

Create a new view using view configuration

### Example


```typescript
import { createConfiguration, RemoteAccessApi } from '';
import type { RemoteAccessApiPostCreateViewRequest } from '';

const configuration = createConfiguration();
const apiInstance = new RemoteAccessApi(configuration);

const request: RemoteAccessApiPostCreateViewRequest = {
    // Name of the new view
  name: "name_example",
    // CSRF protection token (optional)
  jenkinsCrumb: "Jenkins-Crumb_example",
    // Content type header application/xml (optional)
  contentType: "Content-Type_example",
    // View configuration in config.xml format (optional)
  body: "body_example",
};

const data = await apiInstance.postCreateView(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **string**| View configuration in config.xml format |
 **name** | [**string**] | Name of the new view | defaults to undefined
 **jenkinsCrumb** | [**string**] | CSRF protection token | (optional) defaults to undefined
 **contentType** | [**string**] | Content type header application/xml | (optional) defaults to undefined


### Return type

**void**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully created the view |  -  |
**400** | An error has occurred - error message is embedded inside the HTML response |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **postJobBuild**
> void postJobBuild()

Build a job

### Example


```typescript
import { createConfiguration, RemoteAccessApi } from '';
import type { RemoteAccessApiPostJobBuildRequest } from '';

const configuration = createConfiguration();
const apiInstance = new RemoteAccessApi(configuration);

const request: RemoteAccessApiPostJobBuildRequest = {
    // Name of the job
  name: "name_example",
  
  json: "json_example",
  
  token: "token_example",
    // CSRF protection token (optional)
  jenkinsCrumb: "Jenkins-Crumb_example",
};

const data = await apiInstance.postJobBuild(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | [**string**] | Name of the job | defaults to undefined
 **json** | [**string**] |  | defaults to undefined
 **token** | [**string**] |  | (optional) defaults to undefined
 **jenkinsCrumb** | [**string**] | CSRF protection token | (optional) defaults to undefined


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
**200** | Successfully built the job (backward compatibility for older versions of Jenkins) |  -  |
**201** | Successfully built the job |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **postJobConfig**
> void postJobConfig(body)

Update job configuration

### Example


```typescript
import { createConfiguration, RemoteAccessApi } from '';
import type { RemoteAccessApiPostJobConfigRequest } from '';

const configuration = createConfiguration();
const apiInstance = new RemoteAccessApi(configuration);

const request: RemoteAccessApiPostJobConfigRequest = {
    // Name of the job
  name: "name_example",
    // Job configuration in config.xml format
  body: "body_example",
    // CSRF protection token (optional)
  jenkinsCrumb: "Jenkins-Crumb_example",
};

const data = await apiInstance.postJobConfig(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **string**| Job configuration in config.xml format |
 **name** | [**string**] | Name of the job | defaults to undefined
 **jenkinsCrumb** | [**string**] | CSRF protection token | (optional) defaults to undefined


### Return type

**void**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved job configuration in config.xml format |  -  |
**400** | An error has occurred - error message is embedded inside the HTML response |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **postJobDelete**
> void postJobDelete()

Delete a job

### Example


```typescript
import { createConfiguration, RemoteAccessApi } from '';
import type { RemoteAccessApiPostJobDeleteRequest } from '';

const configuration = createConfiguration();
const apiInstance = new RemoteAccessApi(configuration);

const request: RemoteAccessApiPostJobDeleteRequest = {
    // Name of the job
  name: "name_example",
    // CSRF protection token (optional)
  jenkinsCrumb: "Jenkins-Crumb_example",
};

const data = await apiInstance.postJobDelete(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | [**string**] | Name of the job | defaults to undefined
 **jenkinsCrumb** | [**string**] | CSRF protection token | (optional) defaults to undefined


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
**200** | Successfully deleted the job |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **postJobDisable**
> void postJobDisable()

Disable a job

### Example


```typescript
import { createConfiguration, RemoteAccessApi } from '';
import type { RemoteAccessApiPostJobDisableRequest } from '';

const configuration = createConfiguration();
const apiInstance = new RemoteAccessApi(configuration);

const request: RemoteAccessApiPostJobDisableRequest = {
    // Name of the job
  name: "name_example",
    // CSRF protection token (optional)
  jenkinsCrumb: "Jenkins-Crumb_example",
};

const data = await apiInstance.postJobDisable(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | [**string**] | Name of the job | defaults to undefined
 **jenkinsCrumb** | [**string**] | CSRF protection token | (optional) defaults to undefined


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
**200** | Successfully disabled the job |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **postJobEnable**
> void postJobEnable()

Enable a job

### Example


```typescript
import { createConfiguration, RemoteAccessApi } from '';
import type { RemoteAccessApiPostJobEnableRequest } from '';

const configuration = createConfiguration();
const apiInstance = new RemoteAccessApi(configuration);

const request: RemoteAccessApiPostJobEnableRequest = {
    // Name of the job
  name: "name_example",
    // CSRF protection token (optional)
  jenkinsCrumb: "Jenkins-Crumb_example",
};

const data = await apiInstance.postJobEnable(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | [**string**] | Name of the job | defaults to undefined
 **jenkinsCrumb** | [**string**] | CSRF protection token | (optional) defaults to undefined


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
**200** | Successfully enabled the job |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **postJobLastBuildStop**
> void postJobLastBuildStop()

Stop a job

### Example


```typescript
import { createConfiguration, RemoteAccessApi } from '';
import type { RemoteAccessApiPostJobLastBuildStopRequest } from '';

const configuration = createConfiguration();
const apiInstance = new RemoteAccessApi(configuration);

const request: RemoteAccessApiPostJobLastBuildStopRequest = {
    // Name of the job
  name: "name_example",
    // CSRF protection token (optional)
  jenkinsCrumb: "Jenkins-Crumb_example",
};

const data = await apiInstance.postJobLastBuildStop(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | [**string**] | Name of the job | defaults to undefined
 **jenkinsCrumb** | [**string**] | CSRF protection token | (optional) defaults to undefined


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
**200** | Successfully stopped the job |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | Job cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)

# **postViewConfig**
> void postViewConfig(body)

Update view configuration

### Example


```typescript
import { createConfiguration, RemoteAccessApi } from '';
import type { RemoteAccessApiPostViewConfigRequest } from '';

const configuration = createConfiguration();
const apiInstance = new RemoteAccessApi(configuration);

const request: RemoteAccessApiPostViewConfigRequest = {
    // Name of the view
  name: "name_example",
    // View configuration in config.xml format
  body: "body_example",
    // CSRF protection token (optional)
  jenkinsCrumb: "Jenkins-Crumb_example",
};

const data = await apiInstance.postViewConfig(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **string**| View configuration in config.xml format |
 **name** | [**string**] | Name of the view | defaults to undefined
 **jenkinsCrumb** | [**string**] | CSRF protection token | (optional) defaults to undefined


### Return type

**void**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully updated view configuration |  -  |
**400** | An error has occurred - error message is embedded inside the HTML response |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | View cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)


