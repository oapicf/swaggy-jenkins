# SwaggyJenkins.JenkinsApi

All URIs are relative to *http://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCrumb**](JenkinsApi.md#getCrumb) | **GET** /crumbIssuer/api/json | 


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

