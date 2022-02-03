# WWW::OpenAPIClient::BaseApi

## Load the API package
```perl
use WWW::OpenAPIClient::Object::BaseApi;
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_crumb**](BaseApi.md#get_crumb) | **GET** /crumbIssuer/api/json | 


# **get_crumb**
> DefaultCrumbIssuer get_crumb()



Retrieve CSRF protection token

### Example
```perl
use Data::Dumper;
use WWW::OpenAPIClient::BaseApi;
my $api_instance = WWW::OpenAPIClient::BaseApi->new(

    # Configure HTTP basic authorization: jenkins_auth
    username => 'YOUR_USERNAME',
    password => 'YOUR_PASSWORD',
    
);


eval {
    my $result = $api_instance->get_crumb();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling BaseApi->get_crumb: $@\n";
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

