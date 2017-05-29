# SwaggyJenkins.JenkinsApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getComputer**](JenkinsApi.md#getComputer) | **GET** /computer/api/json?depth&#x3D;1 | 
[**getCrumb**](JenkinsApi.md#getCrumb) | **GET** /crumbIssuer/api/json | 
[**getInfo**](JenkinsApi.md#getInfo) | **GET** /api/json | 
[**getQueue**](JenkinsApi.md#getQueue) | **GET** /queue/api/json | 
[**headVersion**](JenkinsApi.md#headVersion) | **HEAD** / | 


<a name="getComputer"></a>
# **getComputer**
> HudsonmodelComputerSet getComputer()



Get computer

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.JenkinsApi();

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

var apiInstance = new SwaggyJenkins.JenkinsApi();

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

var apiInstance = new SwaggyJenkins.JenkinsApi();

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

<a name="getQueue"></a>
# **getQueue**
> HudsonmodelQueue getQueue()



Get queue

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.JenkinsApi();

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

<a name="headVersion"></a>
# **headVersion**
> headVersion()



Retrieve version header

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.JenkinsApi();

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

