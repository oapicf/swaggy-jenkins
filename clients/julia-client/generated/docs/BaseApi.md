# BaseApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_crumb**](BaseApi.md#get_crumb) | **GET** /crumbIssuer/api/json | 


# **get_crumb**
> `get_crumb`(_api::`BaseApi`; _mediaType=nothing) -> `DefaultCrumbIssuer`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_crumb`(_api::`BaseApi`, response_stream::`Channel`; _mediaType=nothing) -> `Channel`{ `DefaultCrumbIssuer` }, `OpenAPI.Clients.ApiResponse`



Retrieve CSRF protection token

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**`DefaultCrumbIssuer`**](DefaultCrumbIssuer.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

