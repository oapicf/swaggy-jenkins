# BaseApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetCrumb**](BaseApi.md#GetCrumb) | **GET** /crumbIssuer/api/json | 


# **GetCrumb**
> DefaultCrumbIssuer GetCrumb()



Retrieve CSRF protection token

### Example
```R
library(openapi)


api_instance <- BaseApi$new()
# Configure HTTP basic authorization: jenkins_auth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetCrumb(data_file = "result.txt")
result <- api_instance$GetCrumb()
dput(result)
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved CSRF protection token |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

