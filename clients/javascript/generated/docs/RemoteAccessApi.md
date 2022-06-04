# SwaggyJenkins.RemoteAccessApi

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



## getComputer

> ComputerSet getComputer(depth)



Retrieve computer details

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.RemoteAccessApi();
let depth = 56; // Number | Recursion depth in response model
apiInstance.getComputer(depth, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **depth** | **Number**| Recursion depth in response model | 

### Return type

[**ComputerSet**](ComputerSet.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getJenkins

> Hudson getJenkins()



Retrieve Jenkins details

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.RemoteAccessApi();
apiInstance.getJenkins((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Hudson**](Hudson.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getJob

> FreeStyleProject getJob(name)



Retrieve job details

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.RemoteAccessApi();
let name = "name_example"; // String | Name of the job
apiInstance.getJob(name, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | 

### Return type

[**FreeStyleProject**](FreeStyleProject.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getJobConfig

> String getJobConfig(name)



Retrieve job configuration

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.RemoteAccessApi();
let name = "name_example"; // String | Name of the job
apiInstance.getJobConfig(name, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | 

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/xml


## getJobLastBuild

> FreeStyleBuild getJobLastBuild(name)



Retrieve job&#39;s last build details

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.RemoteAccessApi();
let name = "name_example"; // String | Name of the job
apiInstance.getJobLastBuild(name, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | 

### Return type

[**FreeStyleBuild**](FreeStyleBuild.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getJobProgressiveText

> getJobProgressiveText(name, number, start)



Retrieve job&#39;s build progressive text output

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.RemoteAccessApi();
let name = "name_example"; // String | Name of the job
let number = "number_example"; // String | Build number
let start = "start_example"; // String | Starting point of progressive text output
apiInstance.getJobProgressiveText(name, number, start, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | 
 **number** | **String**| Build number | 
 **start** | **String**| Starting point of progressive text output | 

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## getQueue

> Queue getQueue()



Retrieve queue details

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.RemoteAccessApi();
apiInstance.getQueue((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Queue**](Queue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getQueueItem

> Queue getQueueItem(number)



Retrieve queued item details

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.RemoteAccessApi();
let number = "number_example"; // String | Queue number
apiInstance.getQueueItem(number, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **String**| Queue number | 

### Return type

[**Queue**](Queue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getView

> ListView getView(name)



Retrieve view details

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.RemoteAccessApi();
let name = "name_example"; // String | Name of the view
apiInstance.getView(name, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the view | 

### Return type

[**ListView**](ListView.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getViewConfig

> String getViewConfig(name)



Retrieve view configuration

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.RemoteAccessApi();
let name = "name_example"; // String | Name of the view
apiInstance.getViewConfig(name, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the view | 

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/xml


## headJenkins

> headJenkins()



Retrieve Jenkins headers

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.RemoteAccessApi();
apiInstance.headJenkins((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## postCreateItem

> postCreateItem(name, opts)



Create a new job using job configuration, or copied from an existing job

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.RemoteAccessApi();
let name = "name_example"; // String | Name of the new job
let opts = {
  'from': "from_example", // String | Existing job to copy from
  'mode': "mode_example", // String | Set to 'copy' for copying an existing job
  'jenkinsCrumb': "jenkinsCrumb_example", // String | CSRF protection token
  'contentType': "contentType_example", // String | Content type header application/xml
  'body': "body_example" // String | Job configuration in config.xml format
};
apiInstance.postCreateItem(name, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the new job | 
 **from** | **String**| Existing job to copy from | [optional] 
 **mode** | **String**| Set to &#39;copy&#39; for copying an existing job | [optional] 
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] 
 **contentType** | **String**| Content type header application/xml | [optional] 
 **body** | **String**| Job configuration in config.xml format | [optional] 

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## postCreateView

> postCreateView(name, opts)



Create a new view using view configuration

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.RemoteAccessApi();
let name = "name_example"; // String | Name of the new view
let opts = {
  'jenkinsCrumb': "jenkinsCrumb_example", // String | CSRF protection token
  'contentType': "contentType_example", // String | Content type header application/xml
  'body': "body_example" // String | View configuration in config.xml format
};
apiInstance.postCreateView(name, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the new view | 
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] 
 **contentType** | **String**| Content type header application/xml | [optional] 
 **body** | **String**| View configuration in config.xml format | [optional] 

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## postJobBuild

> postJobBuild(name, json, opts)



Build a job

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.RemoteAccessApi();
let name = "name_example"; // String | Name of the job
let json = "json_example"; // String | 
let opts = {
  'token': "token_example", // String | 
  'jenkinsCrumb': "jenkinsCrumb_example" // String | CSRF protection token
};
apiInstance.postJobBuild(name, json, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | 
 **json** | **String**|  | 
 **token** | **String**|  | [optional] 
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] 

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## postJobConfig

> postJobConfig(name, body, opts)



Update job configuration

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.RemoteAccessApi();
let name = "name_example"; // String | Name of the job
let body = "body_example"; // String | Job configuration in config.xml format
let opts = {
  'jenkinsCrumb': "jenkinsCrumb_example" // String | CSRF protection token
};
apiInstance.postJobConfig(name, body, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | 
 **body** | **String**| Job configuration in config.xml format | 
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] 

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## postJobDelete

> postJobDelete(name, opts)



Delete a job

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.RemoteAccessApi();
let name = "name_example"; // String | Name of the job
let opts = {
  'jenkinsCrumb': "jenkinsCrumb_example" // String | CSRF protection token
};
apiInstance.postJobDelete(name, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | 
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] 

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## postJobDisable

> postJobDisable(name, opts)



Disable a job

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.RemoteAccessApi();
let name = "name_example"; // String | Name of the job
let opts = {
  'jenkinsCrumb': "jenkinsCrumb_example" // String | CSRF protection token
};
apiInstance.postJobDisable(name, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | 
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] 

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## postJobEnable

> postJobEnable(name, opts)



Enable a job

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.RemoteAccessApi();
let name = "name_example"; // String | Name of the job
let opts = {
  'jenkinsCrumb': "jenkinsCrumb_example" // String | CSRF protection token
};
apiInstance.postJobEnable(name, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | 
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] 

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## postJobLastBuildStop

> postJobLastBuildStop(name, opts)



Stop a job

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.RemoteAccessApi();
let name = "name_example"; // String | Name of the job
let opts = {
  'jenkinsCrumb': "jenkinsCrumb_example" // String | CSRF protection token
};
apiInstance.postJobLastBuildStop(name, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | 
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] 

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## postViewConfig

> postViewConfig(name, body, opts)



Update view configuration

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.RemoteAccessApi();
let name = "name_example"; // String | Name of the view
let body = "body_example"; // String | View configuration in config.xml format
let opts = {
  'jenkinsCrumb': "jenkinsCrumb_example" // String | CSRF protection token
};
apiInstance.postViewConfig(name, body, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the view | 
 **body** | **String**| View configuration in config.xml format | 
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] 

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

