# BaseApi

All URIs are relative to *http://localhost*

|Method | HTTP request | Description|
|------------- | ------------- | -------------|
|[**getCrumb**](#getcrumb) | **GET** /crumbIssuer/api/json | |

# **getCrumb**
> DefaultCrumbIssuer getCrumb()

Retrieve CSRF protection token

### Example

```typescript
import {
    BaseApi,
    Configuration
} from './api';

const configuration = new Configuration();
const apiInstance = new BaseApi(configuration);

const { status, data } = await apiInstance.getCrumb();
```

### Parameters
This endpoint does not have any parameters.


### Return type

**DefaultCrumbIssuer**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
|**200** | Successfully retrieved CSRF protection token |  -  |
|**401** | Authentication failed - incorrect username and/or password |  -  |
|**403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

