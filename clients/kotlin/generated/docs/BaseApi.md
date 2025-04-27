# BaseApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**getCrumb**](BaseApi.md#getCrumb) | **GET** /crumbIssuer/api/json |  |


<a id="getCrumb"></a>
# **getCrumb**
> DefaultCrumbIssuer getCrumb()



Retrieve CSRF protection token

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BaseApi()
try {
    val result : DefaultCrumbIssuer = apiInstance.getCrumb()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BaseApi#getCrumb")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BaseApi#getCrumb")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DefaultCrumbIssuer**](DefaultCrumbIssuer.md)

### Authorization


Configure jenkins_auth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

