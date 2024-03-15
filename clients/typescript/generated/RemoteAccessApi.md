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
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RemoteAccessApi(configuration);

let body:.RemoteAccessApiGetComputerRequest = {
  // number | Recursion depth in response model
  depth: 1,
};

apiInstance.getComputer(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
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
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RemoteAccessApi(configuration);

let body:any = {};

apiInstance.getJenkins(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
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
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RemoteAccessApi(configuration);

let body:.RemoteAccessApiGetJobRequest = {
  // string | Name of the job
  name: "name_example",
};

apiInstance.getJob(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
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
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RemoteAccessApi(configuration);

let body:.RemoteAccessApiGetJobConfigRequest = {
  // string | Name of the job
  name: "name_example",
};

apiInstance.getJobConfig(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
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
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RemoteAccessApi(configuration);

let body:.RemoteAccessApiGetJobLastBuildRequest = {
  // string | Name of the job
  name: "name_example",
};

apiInstance.getJobLastBuild(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
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
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RemoteAccessApi(configuration);

let body:.RemoteAccessApiGetJobProgressiveTextRequest = {
  // string | Name of the job
  name: "name_example",
  // string | Build number
  number: "number_example",
  // string | Starting point of progressive text output
  start: "start_example",
};

apiInstance.getJobProgressiveText(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
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
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RemoteAccessApi(configuration);

let body:any = {};

apiInstance.getQueue(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
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
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RemoteAccessApi(configuration);

let body:.RemoteAccessApiGetQueueItemRequest = {
  // string | Queue number
  number: "number_example",
};

apiInstance.getQueueItem(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
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
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RemoteAccessApi(configuration);

let body:.RemoteAccessApiGetViewRequest = {
  // string | Name of the view
  name: "name_example",
};

apiInstance.getView(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
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
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RemoteAccessApi(configuration);

let body:.RemoteAccessApiGetViewConfigRequest = {
  // string | Name of the view
  name: "name_example",
};

apiInstance.getViewConfig(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
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
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RemoteAccessApi(configuration);

let body:any = {};

apiInstance.headJenkins(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
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
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RemoteAccessApi(configuration);

let body:.RemoteAccessApiPostCreateItemRequest = {
  // string | Name of the new job
  name: "name_example",
  // string | Existing job to copy from (optional)
  _from: "from_example",
  // string | Set to \'copy\' for copying an existing job (optional)
  mode: "mode_example",
  // string | CSRF protection token (optional)
  jenkinsCrumb: "Jenkins-Crumb_example",
  // string | Content type header application/xml (optional)
  contentType: "Content-Type_example",
  // string | Job configuration in config.xml format (optional)
  body: "body_example",
};

apiInstance.postCreateItem(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
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
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RemoteAccessApi(configuration);

let body:.RemoteAccessApiPostCreateViewRequest = {
  // string | Name of the new view
  name: "name_example",
  // string | CSRF protection token (optional)
  jenkinsCrumb: "Jenkins-Crumb_example",
  // string | Content type header application/xml (optional)
  contentType: "Content-Type_example",
  // string | View configuration in config.xml format (optional)
  body: "body_example",
};

apiInstance.postCreateView(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
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
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RemoteAccessApi(configuration);

let body:.RemoteAccessApiPostJobBuildRequest = {
  // string | Name of the job
  name: "name_example",
  // string
  json: "json_example",
  // string (optional)
  token: "token_example",
  // string | CSRF protection token (optional)
  jenkinsCrumb: "Jenkins-Crumb_example",
};

apiInstance.postJobBuild(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
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
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RemoteAccessApi(configuration);

let body:.RemoteAccessApiPostJobConfigRequest = {
  // string | Name of the job
  name: "name_example",
  // string | Job configuration in config.xml format
  body: "body_example",
  // string | CSRF protection token (optional)
  jenkinsCrumb: "Jenkins-Crumb_example",
};

apiInstance.postJobConfig(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
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
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RemoteAccessApi(configuration);

let body:.RemoteAccessApiPostJobDeleteRequest = {
  // string | Name of the job
  name: "name_example",
  // string | CSRF protection token (optional)
  jenkinsCrumb: "Jenkins-Crumb_example",
};

apiInstance.postJobDelete(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
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
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RemoteAccessApi(configuration);

let body:.RemoteAccessApiPostJobDisableRequest = {
  // string | Name of the job
  name: "name_example",
  // string | CSRF protection token (optional)
  jenkinsCrumb: "Jenkins-Crumb_example",
};

apiInstance.postJobDisable(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
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
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RemoteAccessApi(configuration);

let body:.RemoteAccessApiPostJobEnableRequest = {
  // string | Name of the job
  name: "name_example",
  // string | CSRF protection token (optional)
  jenkinsCrumb: "Jenkins-Crumb_example",
};

apiInstance.postJobEnable(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
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
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RemoteAccessApi(configuration);

let body:.RemoteAccessApiPostJobLastBuildStopRequest = {
  // string | Name of the job
  name: "name_example",
  // string | CSRF protection token (optional)
  jenkinsCrumb: "Jenkins-Crumb_example",
};

apiInstance.postJobLastBuildStop(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
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
import {  } from '';
import * as fs from 'fs';

const configuration = .createConfiguration();
const apiInstance = new .RemoteAccessApi(configuration);

let body:.RemoteAccessApiPostViewConfigRequest = {
  // string | Name of the view
  name: "name_example",
  // string | View configuration in config.xml format
  body: "body_example",
  // string | CSRF protection token (optional)
  jenkinsCrumb: "Jenkins-Crumb_example",
};

apiInstance.postViewConfig(body).then((data:any) => {
  console.log('API called successfully. Returned data: ' + data);
}).catch((error:any) => console.error(error));
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


