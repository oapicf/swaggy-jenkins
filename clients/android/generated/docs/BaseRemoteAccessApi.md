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
//import org.openapitools.client.api.BaseRemoteAccessApi;

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

