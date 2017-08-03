# SwaggyJenkins.RemoteAccessApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getComputer**](RemoteAccessApi.md#getComputer) | **GET** /computer/api/json | 
[**getCrumb**](RemoteAccessApi.md#getCrumb) | **GET** /crumbIssuer/api/json | 
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


<a name="getComputer"></a>
# **getComputer**
> ComputerSet getComputer(depth)



Retrieve computer details

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
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

<a name="getCrumb"></a>
# **getCrumb**
> DefaultCrumbIssuer getCrumb()



Retrieve CSRF protection token

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;

// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.RemoteAccessApi();

apiInstance.getCrumb((error, data, response) => {
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

[**DefaultCrumbIssuer**](DefaultCrumbIssuer.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getJenkins"></a>
# **getJenkins**
> Hudson getJenkins()



Retrieve Jenkins details

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
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

<a name="getJob"></a>
# **getJob**
> FreeStyleProject getJob(name, )



Retrieve job details

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;

// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.RemoteAccessApi();

let name = "name_example"; // String | Name of the job


apiInstance.getJob(name, , (error, data, response) => {
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

<a name="getJobConfig"></a>
# **getJobConfig**
> &#39;String&#39; getJobConfig(name, )



Retrieve job configuration

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;

// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.RemoteAccessApi();

let name = "name_example"; // String | Name of the job


apiInstance.getJobConfig(name, , (error, data, response) => {
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

**&#39;String&#39;**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

<a name="getJobLastBuild"></a>
# **getJobLastBuild**
> FreeStyleBuild getJobLastBuild(name, )



Retrieve job&#39;s last build details

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;

// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.RemoteAccessApi();

let name = "name_example"; // String | Name of the job


apiInstance.getJobLastBuild(name, , (error, data, response) => {
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

<a name="getJobProgressiveText"></a>
# **getJobProgressiveText**
> getJobProgressiveText(name, _number, start)



Retrieve job&#39;s build progressive text output

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;

// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.RemoteAccessApi();

let name = "name_example"; // String | Name of the job

let _number = "_number_example"; // String | Build number

let start = "start_example"; // String | Starting point of progressive text output


apiInstance.getJobProgressiveText(name, _number, start, (error, data, response) => {
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
 **_number** | **String**| Build number | 
 **start** | **String**| Starting point of progressive text output | 

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="getQueue"></a>
# **getQueue**
> Queue getQueue()



Retrieve queue details

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
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

<a name="getQueueItem"></a>
# **getQueueItem**
> Queue getQueueItem(_number)



Retrieve queued item details

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;

// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.RemoteAccessApi();

let _number = "_number_example"; // String | Queue number


apiInstance.getQueueItem(_number, (error, data, response) => {
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
 **_number** | **String**| Queue number | 

### Return type

[**Queue**](Queue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getView"></a>
# **getView**
> ListView getView(name, )



Retrieve view details

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;

// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.RemoteAccessApi();

let name = "name_example"; // String | Name of the view


apiInstance.getView(name, , (error, data, response) => {
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

<a name="getViewConfig"></a>
# **getViewConfig**
> &#39;String&#39; getViewConfig(name, )



Retrieve view configuration

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;

// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.RemoteAccessApi();

let name = "name_example"; // String | Name of the view


apiInstance.getViewConfig(name, , (error, data, response) => {
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

**&#39;String&#39;**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

<a name="headJenkins"></a>
# **headJenkins**
> headJenkins()



Retrieve Jenkins headers

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
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

<a name="postCreateItem"></a>
# **postCreateItem**
> postCreateItem(name, opts)



Create a new job using job configuration, or copied from an existing job

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
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
  'body': "body_example", // String | Job configuration in config.xml format
  'jenkinsCrumb': "jenkinsCrumb_example" // String | CSRF protection token
  'contentType': "contentType_example" // String | Content type header application/xml
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
 **body** | **String**| Job configuration in config.xml format | [optional] 
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] 
 **contentType** | **String**| Content type header application/xml | [optional] 

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

<a name="postCreateView"></a>
# **postCreateView**
> postCreateView(name, opts)



Create a new view using view configuration

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;

// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.RemoteAccessApi();

let name = "name_example"; // String | Name of the new view

let opts = { 
  'body': "body_example", // String | View configuration in config.xml format
  'jenkinsCrumb': "jenkinsCrumb_example" // String | CSRF protection token
  'contentType': "contentType_example" // String | Content type header application/xml
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
 **body** | **String**| View configuration in config.xml format | [optional] 
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] 
 **contentType** | **String**| Content type header application/xml | [optional] 

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

<a name="postJobBuild"></a>
# **postJobBuild**
> postJobBuild(name, json, opts)



Build a job

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
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

<a name="postJobConfig"></a>
# **postJobConfig**
> postJobConfig(name, body, opts)



Update job configuration

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
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

 - **Content-Type**: Not defined
 - **Accept**: text/xml

<a name="postJobDelete"></a>
# **postJobDelete**
> postJobDelete(name, , opts)



Delete a job

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
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

apiInstance.postJobDelete(name, , opts, (error, data, response) => {
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

<a name="postJobDisable"></a>
# **postJobDisable**
> postJobDisable(name, , opts)



Disable a job

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
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

apiInstance.postJobDisable(name, , opts, (error, data, response) => {
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

<a name="postJobEnable"></a>
# **postJobEnable**
> postJobEnable(name, , opts)



Enable a job

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
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

apiInstance.postJobEnable(name, , opts, (error, data, response) => {
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

<a name="postJobLastBuildStop"></a>
# **postJobLastBuildStop**
> postJobLastBuildStop(name, , opts)



Stop a job

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
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

apiInstance.postJobLastBuildStop(name, , opts, (error, data, response) => {
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

<a name="postViewConfig"></a>
# **postViewConfig**
> postViewConfig(name, body, opts)



Update view configuration

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
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

 - **Content-Type**: Not defined
 - **Accept**: Not defined

