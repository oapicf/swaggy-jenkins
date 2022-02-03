# PSOpenAPITools.PSOpenAPITools/Api.BaseApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-Crumb**](BaseApi.md#Get-Crumb) | **GET** /crumbIssuer/api/json | 


<a name="Get-Crumb"></a>
# **Get-Crumb**
> DefaultCrumbIssuer Get-Crumb<br>



Retrieve CSRF protection token

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure HTTP basic authorization: jenkins_auth
$Configuration.Username = "YOUR_USERNAME"
$Configuration.Password = "YOUR_PASSWORD"


try {
    $Result = Get-Crumb
} catch {
    Write-Host ("Exception occurred when calling Get-Crumb: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**DefaultCrumbIssuer**](DefaultCrumbIssuer.md) (PSCustomObject)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

