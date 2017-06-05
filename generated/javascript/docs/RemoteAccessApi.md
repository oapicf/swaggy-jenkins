# SwaggyJenkins.RemoteAccessApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getComputer**](RemoteAccessApi.md#getComputer) | **GET** /computer/api/json?depth&#x3D;1 | 
[**getCrumb**](RemoteAccessApi.md#getCrumb) | **GET** /crumbIssuer/api/json | 
[**getInfo**](RemoteAccessApi.md#getInfo) | **GET** /api/json | 
[**getJob**](RemoteAccessApi.md#getJob) | **GET** /job/{name}/api/json | 
[**getJobConfig**](RemoteAccessApi.md#getJobConfig) | **GET** /job/{name}/config.xml | 
[**getJobLastBuild**](RemoteAccessApi.md#getJobLastBuild) | **GET** /job/{name}/lastBuild/api/json | 
[**getJobProgressiveText**](RemoteAccessApi.md#getJobProgressiveText) | **GET** /job/{name}/{number}/logText/progressiveText | 
[**getQueue**](RemoteAccessApi.md#getQueue) | **GET** /queue/api/json | 
[**getQueueItem**](RemoteAccessApi.md#getQueueItem) | **GET** /queue/item/{number}/api/json | 
[**headVersion**](RemoteAccessApi.md#headVersion) | **HEAD** / | 
[**postCreateItem**](RemoteAccessApi.md#postCreateItem) | **POST** /createItem | 
[**postJobBuild**](RemoteAccessApi.md#postJobBuild) | **POST** /job/{name}/build | 
[**postJobConfig**](RemoteAccessApi.md#postJobConfig) | **POST** /job/{name}/config.xml | 
[**postJobDelete**](RemoteAccessApi.md#postJobDelete) | **POST** /job/{name}/doDelete | 
[**postJobDisable**](RemoteAccessApi.md#postJobDisable) | **POST** /job/{name}/disable | 
[**postJobEnable**](RemoteAccessApi.md#postJobEnable) | **POST** /job/{name}/enable | 
[**postJobLastBuildStop**](RemoteAccessApi.md#postJobLastBuildStop) | **POST** /job/{name}/lastBuild/stop | 


<a name="getComputer"></a>
# **getComputer**
> HudsonmodelComputerSet getComputer()



Get computer

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.RemoteAccessApi();

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getComputer(callback);
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HudsonmodelComputerSet**](HudsonmodelComputerSet.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getCrumb"></a>
# **getCrumb**
> HudsonsecuritycsrfDefaultCrumbIssuer getCrumb()



Get crumb

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.RemoteAccessApi();

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getCrumb(callback);
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HudsonsecuritycsrfDefaultCrumbIssuer**](HudsonsecuritycsrfDefaultCrumbIssuer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getInfo"></a>
# **getInfo**
> HudsonmodelHudson getInfo()



Get info

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.RemoteAccessApi();

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getInfo(callback);
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HudsonmodelHudson**](HudsonmodelHudson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getJob"></a>
# **getJob**
> HudsonmodelFreeStyleProject getJob(name)



Get job

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.RemoteAccessApi();

var name = "name_example"; // String | 


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getJob(name, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 

### Return type

[**HudsonmodelFreeStyleProject**](HudsonmodelFreeStyleProject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getJobConfig"></a>
# **getJobConfig**
> &#39;String&#39; getJobConfig(name)



Fetch a job configuration config.xml

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.RemoteAccessApi();

var name = "name_example"; // String | 


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getJobConfig(name, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 

### Return type

**&#39;String&#39;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

<a name="getJobLastBuild"></a>
# **getJobLastBuild**
> HudsonmodelFreeStyleBuild getJobLastBuild(name)



Get job last build

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.RemoteAccessApi();

var name = "name_example"; // String | 


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getJobLastBuild(name, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 

### Return type

[**HudsonmodelFreeStyleBuild**](HudsonmodelFreeStyleBuild.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getJobProgressiveText"></a>
# **getJobProgressiveText**
> getJobProgressiveText(name, _number, start)



Get a job&#39;s console progressive text

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.RemoteAccessApi();

var name = "name_example"; // String | 

var _number = "_number_example"; // String | 

var start = "start_example"; // String | 


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.getJobProgressiveText(name, _number, start, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **_number** | **String**|  | 
 **start** | **String**|  | 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="getQueue"></a>
# **getQueue**
> HudsonmodelQueue getQueue()



Get queue

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.RemoteAccessApi();

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getQueue(callback);
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HudsonmodelQueue**](HudsonmodelQueue.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getQueueItem"></a>
# **getQueueItem**
> HudsonmodelQueue getQueueItem(_number)



Get queued item details

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.RemoteAccessApi();

var _number = "_number_example"; // String | 


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getQueueItem(_number, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_number** | **String**|  | 

### Return type

[**HudsonmodelQueue**](HudsonmodelQueue.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="headVersion"></a>
# **headVersion**
> headVersion()



Retrieve version header

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.RemoteAccessApi();

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.headVersion(callback);
```

### Parameters
This endpoint does not need any parameter.

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="postCreateItem"></a>
# **postCreateItem**
> postCreateItem(name, opts)



Post item creation

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.RemoteAccessApi();

var name = "name_example"; // String | 

var opts = { 
  'from': "from_example", // String | 
  'mode': "mode_example", // String | 
  'body': "body_example", // String | 
  'jenkinsCrumb': "jenkinsCrumb_example", // String | 
  'contentType': "contentType_example" // String | 
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.postCreateItem(name, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **from** | **String**|  | [optional] 
 **mode** | **String**|  | [optional] 
 **body** | **String**|  | [optional] 
 **jenkinsCrumb** | **String**|  | [optional] 
 **contentType** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

<a name="postJobBuild"></a>
# **postJobBuild**
> postJobBuild(name, json, opts)



Build a job

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.RemoteAccessApi();

var name = "name_example"; // String | 

var json = "json_example"; // String | 

var opts = { 
  'token': "token_example", // String | 
  'jenkinsCrumb': "jenkinsCrumb_example" // String | 
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.postJobBuild(name, json, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **json** | **String**|  | 
 **token** | **String**|  | [optional] 
 **jenkinsCrumb** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="postJobConfig"></a>
# **postJobConfig**
> postJobConfig(name, body, opts)



Update job config.xml

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.RemoteAccessApi();

var name = "name_example"; // String | 

var body = "body_example"; // String | 

var opts = { 
  'jenkinsCrumb': "jenkinsCrumb_example" // String | 
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.postJobConfig(name, body, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **body** | **String**|  | 
 **jenkinsCrumb** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

<a name="postJobDelete"></a>
# **postJobDelete**
> postJobDelete(name, opts)



Delete job

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.RemoteAccessApi();

var name = "name_example"; // String | 

var opts = { 
  'jenkinsCrumb': "jenkinsCrumb_example" // String | 
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.postJobDelete(name, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **jenkinsCrumb** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="postJobDisable"></a>
# **postJobDisable**
> postJobDisable(name, opts)



Disable a job

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.RemoteAccessApi();

var name = "name_example"; // String | 

var opts = { 
  'jenkinsCrumb': "jenkinsCrumb_example" // String | 
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.postJobDisable(name, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **jenkinsCrumb** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="postJobEnable"></a>
# **postJobEnable**
> postJobEnable(name, opts)



Enable a job

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.RemoteAccessApi();

var name = "name_example"; // String | 

var opts = { 
  'jenkinsCrumb': "jenkinsCrumb_example" // String | 
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.postJobEnable(name, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **jenkinsCrumb** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="postJobLastBuildStop"></a>
# **postJobLastBuildStop**
> postJobLastBuildStop(name, opts)



Stop a running/building job

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.RemoteAccessApi();

var name = "name_example"; // String | 

var opts = { 
  'jenkinsCrumb': "jenkinsCrumb_example" // String | 
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.postJobLastBuildStop(name, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**|  | 
 **jenkinsCrumb** | **String**|  | [optional] 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

