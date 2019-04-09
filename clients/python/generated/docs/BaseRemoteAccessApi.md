# swaggyjenkins.BaseRemoteAccessApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_crumb**](BaseRemoteAccessApi.md#get_crumb) | **GET** /crumbIssuer/api/json | 


# **get_crumb**
> DefaultCrumbIssuer get_crumb()



Retrieve CSRF protection token

### Example
```python
from __future__ import print_function
import time
import swaggyjenkins
from swaggyjenkins.rest import ApiException
from pprint import pprint

# Configure HTTP basic authorization: jenkins_auth
configuration = swaggyjenkins.Configuration()
configuration.username = 'YOUR_USERNAME'
configuration.password = 'YOUR_PASSWORD'

# create an instance of the API class
api_instance = swaggyjenkins.BaseRemoteAccessApi(swaggyjenkins.ApiClient(configuration))

try:
    api_response = api_instance.get_crumb()
    pprint(api_response)
except ApiException as e:
    print("Exception when calling BaseRemoteAccessApi->get_crumb: %s\n" % e)
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

