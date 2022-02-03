# SwaggyJenkins.BaseApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCrumb**](BaseApi.md#getCrumb) | **GET** /crumbIssuer/api/json | 



## getCrumb

> DefaultCrumbIssuer getCrumb()



Retrieve CSRF protection token

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BaseApi();
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

