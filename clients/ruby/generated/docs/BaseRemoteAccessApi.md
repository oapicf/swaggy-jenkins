# SwaggyJenkinsClient::BaseRemoteAccessApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_crumb**](BaseRemoteAccessApi.md#get_crumb) | **GET** /crumbIssuer/api/json | 


# **get_crumb**
> DefaultCrumbIssuer get_crumb



Retrieve CSRF protection token

### Example
```ruby
# load the gem
require 'swaggy_jenkins'
# setup authorization
SwaggyJenkinsClient.configure do |config|
  # Configure HTTP basic authorization: jenkins_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = SwaggyJenkinsClient::BaseRemoteAccessApi.new

begin
  result = api_instance.get_crumb
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BaseRemoteAccessApi->get_crumb: #{e}"
end
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



