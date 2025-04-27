# .BaseApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCrumb**](BaseApi.md#getCrumb) | **GET** /crumbIssuer/api/json | 


# **getCrumb**
> DefaultCrumbIssuer getCrumb()

Retrieve CSRF protection token

### Example


```typescript
import { createConfiguration, BaseApi } from '';

const configuration = createConfiguration();
const apiInstance = new BaseApi(configuration);

const request = {};

const data = await apiInstance.getCrumb(request);
console.log('API called successfully. Returned data:', data);
```


### Parameters
This endpoint does not need any parameter.


### Return type

**DefaultCrumbIssuer**

### Authorization

[jenkins_auth](README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved CSRF protection token |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](README.md#documentation-for-api-endpoints) [[Back to Model list]](README.md#documentation-for-models) [[Back to README]](README.md)


