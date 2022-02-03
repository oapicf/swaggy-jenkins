# SwaggyJenkinsClient::BaseApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_crumb**](BaseApi.md#get_crumb) | **GET** /crumbIssuer/api/json |  |


## get_crumb

> <DefaultCrumbIssuer> get_crumb



Retrieve CSRF protection token

### Examples

```ruby
require 'time'
require 'swaggy_jenkins'
# setup authorization
SwaggyJenkinsClient.configure do |config|
  # Configure HTTP basic authorization: jenkins_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = SwaggyJenkinsClient::BaseApi.new

begin
  
  result = api_instance.get_crumb
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BaseApi->get_crumb: #{e}"
end
```

#### Using the get_crumb_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DefaultCrumbIssuer>, Integer, Hash)> get_crumb_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.get_crumb_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DefaultCrumbIssuer>
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BaseApi->get_crumb_with_http_info: #{e}"
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

