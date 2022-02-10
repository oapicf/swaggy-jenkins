# BaseAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**BaseAPI_getCrumb**](BaseAPI.md#BaseAPI_getCrumb) | **GET** /crumbIssuer/api/json | 


# **BaseAPI_getCrumb**
```c
// Retrieve CSRF protection token
//
default_crumb_issuer_t* BaseAPI_getCrumb(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[default_crumb_issuer_t](default_crumb_issuer.md) *


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

