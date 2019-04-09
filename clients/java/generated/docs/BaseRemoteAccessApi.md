# BaseRemoteAccessApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCrumb**](BaseRemoteAccessApi.md#getCrumb) | **GET** /crumbIssuer/api/json | 


<a name="getCrumb"></a>
# **getCrumb**
> DefaultCrumbIssuer getCrumb()



Retrieve CSRF protection token

### Example
```java
// Import classes:
//import com.cliffano.swaggyjenkins.ApiClient;
//import com.cliffano.swaggyjenkins.ApiException;
//import com.cliffano.swaggyjenkins.Configuration;
//import com.cliffano.swaggyjenkins.auth.*;
//import com.cliffano.swaggyjenkins.api.BaseRemoteAccessApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
jenkins_auth.setUsername("YOUR USERNAME");
jenkins_auth.setPassword("YOUR PASSWORD");

BaseRemoteAccessApi apiInstance = new BaseRemoteAccessApi();
try {
    DefaultCrumbIssuer result = apiInstance.getCrumb();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BaseRemoteAccessApi#getCrumb");
    e.printStackTrace();
}
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

