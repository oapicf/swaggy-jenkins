# Org.OpenAPITools.Api.BaseApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetCrumb**](BaseApi.md#getcrumb) | **GET** /crumbIssuer/api/json | 


<a name="getcrumb"></a>
# **GetCrumb**
> DefaultCrumbIssuer GetCrumb ()



Retrieve CSRF protection token

### Example
```csharp
using System;
using System.Diagnostics;
using Org.OpenAPITools.Api;
using Org.OpenAPITools.Client;
using Org.OpenAPITools.Model;

namespace Example
{
    public class GetCrumbExample
    {
        public void main()
        {
            // Configure HTTP basic authorization: jenkins_auth
            Configuration.Default.Username = "YOUR_USERNAME";
            Configuration.Default.Password = "YOUR_PASSWORD";

            var apiInstance = new BaseApi();

            try
            {
                DefaultCrumbIssuer result = apiInstance.GetCrumb();
                Debug.WriteLine(result);
            }
            catch (Exception e)
            {
                Debug.Print("Exception when calling BaseApi.GetCrumb: " + e.Message );
            }
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

