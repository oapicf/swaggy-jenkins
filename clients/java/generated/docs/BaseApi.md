# BaseApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCrumb**](BaseApi.md#getCrumb) | **GET** /crumbIssuer/api/json | 


<a name="getCrumb"></a>
# **getCrumb**
> DefaultCrumbIssuer getCrumb()



Retrieve CSRF protection token

### Example
```java
// Import classes:
import com.cliffano.swaggyjenkins.ApiClient;
import com.cliffano.swaggyjenkins.ApiException;
import com.cliffano.swaggyjenkins.Configuration;
import com.cliffano.swaggyjenkins.auth.*;
import com.cliffano.swaggyjenkins.models.*;
import com.cliffano.swaggyjenkins.api.BaseApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    BaseApi apiInstance = new BaseApi(defaultClient);
    try {
      DefaultCrumbIssuer result = apiInstance.getCrumb();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling BaseApi#getCrumb");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved CSRF protection token |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

