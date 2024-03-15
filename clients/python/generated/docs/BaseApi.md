# swaggyjenkins.BaseApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_crumb**](BaseApi.md#get_crumb) | **GET** /crumbIssuer/api/json | 


# **get_crumb**
> DefaultCrumbIssuer get_crumb()



Retrieve CSRF protection token

### Example

* Basic Authentication (jenkins_auth):

```python
import swaggyjenkins
from swaggyjenkins.models.default_crumb_issuer import DefaultCrumbIssuer
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Defining the host is optional and defaults to http://localhost
# See configuration.py for a list of all supported configuration parameters.
configuration = swaggyjenkins.Configuration(
    host = "http://localhost"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration(
    username = os.environ["USERNAME"],
    password = os.environ["PASSWORD"]
)

# Enter a context with an instance of the API client
with swaggyjenkins.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = swaggyjenkins.BaseApi(api_client)

    try:
        api_response = api_instance.get_crumb()
        print("The response of BaseApi->get_crumb:\n")
        pprint(api_response)
    except Exception as e:
        print("Exception when calling BaseApi->get_crumb: %s\n" % e)
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

