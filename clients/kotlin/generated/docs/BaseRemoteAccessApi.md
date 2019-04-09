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
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BaseRemoteAccessApi()
try {
    val result : DefaultCrumbIssuer = apiInstance.getCrumb()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BaseRemoteAccessApi#getCrumb")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BaseRemoteAccessApi#getCrumb")
    e.printStackTrace()
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

