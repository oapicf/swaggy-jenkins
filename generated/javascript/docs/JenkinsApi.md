# SwaggyJenkins.JenkinsApi

All URIs are relative to *http://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getComputer**](JenkinsApi.md#getComputer) | **GET** /computer/api/json | 
[**getCrumb**](JenkinsApi.md#getCrumb) | **GET** /crumbIssuer/api/json | 
[**getInfo**](JenkinsApi.md#getInfo) | **GET** /api/json | 
[**getQueue**](JenkinsApi.md#getQueue) | **GET** /queue/api/json | 


<a name="getComputer"></a>
# **getComputer**
> ComputerSet getComputer()



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

[**ComputerSet**](ComputerSet.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getCrumb"></a>
# **getCrumb**
> DefaultCrumbIssuer getCrumb()



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

[**DefaultCrumbIssuer**](DefaultCrumbIssuer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getInfo"></a>
# **getInfo**
> Hudson getInfo()



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

[**Hudson**](Hudson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getQueue"></a>
# **getQueue**
> Queue getQueue()



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

[**Queue**](Queue.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

