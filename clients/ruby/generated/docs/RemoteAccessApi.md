# SwaggyJenkinsClient::RemoteAccessApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_computer**](RemoteAccessApi.md#get_computer) | **GET** /computer/api/json |  |
| [**get_jenkins**](RemoteAccessApi.md#get_jenkins) | **GET** /api/json |  |
| [**get_job**](RemoteAccessApi.md#get_job) | **GET** /job/{name}/api/json |  |
| [**get_job_config**](RemoteAccessApi.md#get_job_config) | **GET** /job/{name}/config.xml |  |
| [**get_job_last_build**](RemoteAccessApi.md#get_job_last_build) | **GET** /job/{name}/lastBuild/api/json |  |
| [**get_job_progressive_text**](RemoteAccessApi.md#get_job_progressive_text) | **GET** /job/{name}/{number}/logText/progressiveText |  |
| [**get_queue**](RemoteAccessApi.md#get_queue) | **GET** /queue/api/json |  |
| [**get_queue_item**](RemoteAccessApi.md#get_queue_item) | **GET** /queue/item/{number}/api/json |  |
| [**get_view**](RemoteAccessApi.md#get_view) | **GET** /view/{name}/api/json |  |
| [**get_view_config**](RemoteAccessApi.md#get_view_config) | **GET** /view/{name}/config.xml |  |
| [**head_jenkins**](RemoteAccessApi.md#head_jenkins) | **HEAD** /api/json |  |
| [**post_create_item**](RemoteAccessApi.md#post_create_item) | **POST** /createItem |  |
| [**post_create_view**](RemoteAccessApi.md#post_create_view) | **POST** /createView |  |
| [**post_job_build**](RemoteAccessApi.md#post_job_build) | **POST** /job/{name}/build |  |
| [**post_job_config**](RemoteAccessApi.md#post_job_config) | **POST** /job/{name}/config.xml |  |
| [**post_job_delete**](RemoteAccessApi.md#post_job_delete) | **POST** /job/{name}/doDelete |  |
| [**post_job_disable**](RemoteAccessApi.md#post_job_disable) | **POST** /job/{name}/disable |  |
| [**post_job_enable**](RemoteAccessApi.md#post_job_enable) | **POST** /job/{name}/enable |  |
| [**post_job_last_build_stop**](RemoteAccessApi.md#post_job_last_build_stop) | **POST** /job/{name}/lastBuild/stop |  |
| [**post_view_config**](RemoteAccessApi.md#post_view_config) | **POST** /view/{name}/config.xml |  |


## get_computer

> <ComputerSet> get_computer(depth)



Retrieve computer details

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

api_instance = SwaggyJenkinsClient::RemoteAccessApi.new
depth = 56 # Integer | Recursion depth in response model

begin
  
  result = api_instance.get_computer(depth)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->get_computer: #{e}"
end
```

#### Using the get_computer_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ComputerSet>, Integer, Hash)> get_computer_with_http_info(depth)

```ruby
begin
  
  data, status_code, headers = api_instance.get_computer_with_http_info(depth)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ComputerSet>
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->get_computer_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **depth** | **Integer** | Recursion depth in response model |  |

### Return type

[**ComputerSet**](ComputerSet.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_jenkins

> <Hudson> get_jenkins



Retrieve Jenkins details

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

api_instance = SwaggyJenkinsClient::RemoteAccessApi.new

begin
  
  result = api_instance.get_jenkins
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->get_jenkins: #{e}"
end
```

#### Using the get_jenkins_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Hudson>, Integer, Hash)> get_jenkins_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.get_jenkins_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Hudson>
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->get_jenkins_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Hudson**](Hudson.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_job

> <FreeStyleProject> get_job(name)



Retrieve job details

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

api_instance = SwaggyJenkinsClient::RemoteAccessApi.new
name = 'name_example' # String | Name of the job

begin
  
  result = api_instance.get_job(name)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->get_job: #{e}"
end
```

#### Using the get_job_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FreeStyleProject>, Integer, Hash)> get_job_with_http_info(name)

```ruby
begin
  
  data, status_code, headers = api_instance.get_job_with_http_info(name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FreeStyleProject>
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->get_job_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the job |  |

### Return type

[**FreeStyleProject**](FreeStyleProject.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_job_config

> String get_job_config(name)



Retrieve job configuration

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

api_instance = SwaggyJenkinsClient::RemoteAccessApi.new
name = 'name_example' # String | Name of the job

begin
  
  result = api_instance.get_job_config(name)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->get_job_config: #{e}"
end
```

#### Using the get_job_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_job_config_with_http_info(name)

```ruby
begin
  
  data, status_code, headers = api_instance.get_job_config_with_http_info(name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->get_job_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the job |  |

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/xml


## get_job_last_build

> <FreeStyleBuild> get_job_last_build(name)



Retrieve job's last build details

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

api_instance = SwaggyJenkinsClient::RemoteAccessApi.new
name = 'name_example' # String | Name of the job

begin
  
  result = api_instance.get_job_last_build(name)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->get_job_last_build: #{e}"
end
```

#### Using the get_job_last_build_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FreeStyleBuild>, Integer, Hash)> get_job_last_build_with_http_info(name)

```ruby
begin
  
  data, status_code, headers = api_instance.get_job_last_build_with_http_info(name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FreeStyleBuild>
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->get_job_last_build_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the job |  |

### Return type

[**FreeStyleBuild**](FreeStyleBuild.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_job_progressive_text

> get_job_progressive_text(name, number, start)



Retrieve job's build progressive text output

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

api_instance = SwaggyJenkinsClient::RemoteAccessApi.new
name = 'name_example' # String | Name of the job
number = 'number_example' # String | Build number
start = 'start_example' # String | Starting point of progressive text output

begin
  
  api_instance.get_job_progressive_text(name, number, start)
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->get_job_progressive_text: #{e}"
end
```

#### Using the get_job_progressive_text_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> get_job_progressive_text_with_http_info(name, number, start)

```ruby
begin
  
  data, status_code, headers = api_instance.get_job_progressive_text_with_http_info(name, number, start)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->get_job_progressive_text_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the job |  |
| **number** | **String** | Build number |  |
| **start** | **String** | Starting point of progressive text output |  |

### Return type

nil (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_queue

> <Queue> get_queue



Retrieve queue details

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

api_instance = SwaggyJenkinsClient::RemoteAccessApi.new

begin
  
  result = api_instance.get_queue
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->get_queue: #{e}"
end
```

#### Using the get_queue_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Queue>, Integer, Hash)> get_queue_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.get_queue_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Queue>
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->get_queue_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Queue**](Queue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_queue_item

> <Queue> get_queue_item(number)



Retrieve queued item details

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

api_instance = SwaggyJenkinsClient::RemoteAccessApi.new
number = 'number_example' # String | Queue number

begin
  
  result = api_instance.get_queue_item(number)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->get_queue_item: #{e}"
end
```

#### Using the get_queue_item_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Queue>, Integer, Hash)> get_queue_item_with_http_info(number)

```ruby
begin
  
  data, status_code, headers = api_instance.get_queue_item_with_http_info(number)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Queue>
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->get_queue_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **number** | **String** | Queue number |  |

### Return type

[**Queue**](Queue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_view

> <ListView> get_view(name)



Retrieve view details

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

api_instance = SwaggyJenkinsClient::RemoteAccessApi.new
name = 'name_example' # String | Name of the view

begin
  
  result = api_instance.get_view(name)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->get_view: #{e}"
end
```

#### Using the get_view_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListView>, Integer, Hash)> get_view_with_http_info(name)

```ruby
begin
  
  data, status_code, headers = api_instance.get_view_with_http_info(name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListView>
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->get_view_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the view |  |

### Return type

[**ListView**](ListView.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_view_config

> String get_view_config(name)



Retrieve view configuration

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

api_instance = SwaggyJenkinsClient::RemoteAccessApi.new
name = 'name_example' # String | Name of the view

begin
  
  result = api_instance.get_view_config(name)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->get_view_config: #{e}"
end
```

#### Using the get_view_config_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_view_config_with_http_info(name)

```ruby
begin
  
  data, status_code, headers = api_instance.get_view_config_with_http_info(name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->get_view_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the view |  |

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/xml


## head_jenkins

> head_jenkins



Retrieve Jenkins headers

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

api_instance = SwaggyJenkinsClient::RemoteAccessApi.new

begin
  
  api_instance.head_jenkins
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->head_jenkins: #{e}"
end
```

#### Using the head_jenkins_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> head_jenkins_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.head_jenkins_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->head_jenkins_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## post_create_item

> post_create_item(name, opts)



Create a new job using job configuration, or copied from an existing job

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

api_instance = SwaggyJenkinsClient::RemoteAccessApi.new
name = 'name_example' # String | Name of the new job
opts = {
  from: 'from_example', # String | Existing job to copy from
  mode: 'mode_example', # String | Set to 'copy' for copying an existing job
  jenkins_crumb: 'jenkins_crumb_example', # String | CSRF protection token
  content_type: 'content_type_example', # String | Content type header application/xml
  body: 'body_example' # String | Job configuration in config.xml format
}

begin
  
  api_instance.post_create_item(name, opts)
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->post_create_item: #{e}"
end
```

#### Using the post_create_item_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_create_item_with_http_info(name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.post_create_item_with_http_info(name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->post_create_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the new job |  |
| **from** | **String** | Existing job to copy from | [optional] |
| **mode** | **String** | Set to &#39;copy&#39; for copying an existing job | [optional] |
| **jenkins_crumb** | **String** | CSRF protection token | [optional] |
| **content_type** | **String** | Content type header application/xml | [optional] |
| **body** | **String** | Job configuration in config.xml format | [optional] |

### Return type

nil (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## post_create_view

> post_create_view(name, opts)



Create a new view using view configuration

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

api_instance = SwaggyJenkinsClient::RemoteAccessApi.new
name = 'name_example' # String | Name of the new view
opts = {
  jenkins_crumb: 'jenkins_crumb_example', # String | CSRF protection token
  content_type: 'content_type_example', # String | Content type header application/xml
  body: 'body_example' # String | View configuration in config.xml format
}

begin
  
  api_instance.post_create_view(name, opts)
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->post_create_view: #{e}"
end
```

#### Using the post_create_view_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_create_view_with_http_info(name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.post_create_view_with_http_info(name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->post_create_view_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the new view |  |
| **jenkins_crumb** | **String** | CSRF protection token | [optional] |
| **content_type** | **String** | Content type header application/xml | [optional] |
| **body** | **String** | View configuration in config.xml format | [optional] |

### Return type

nil (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## post_job_build

> post_job_build(name, json, opts)



Build a job

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

api_instance = SwaggyJenkinsClient::RemoteAccessApi.new
name = 'name_example' # String | Name of the job
json = 'json_example' # String | 
opts = {
  token: 'token_example', # String | 
  jenkins_crumb: 'jenkins_crumb_example' # String | CSRF protection token
}

begin
  
  api_instance.post_job_build(name, json, opts)
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->post_job_build: #{e}"
end
```

#### Using the post_job_build_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_job_build_with_http_info(name, json, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.post_job_build_with_http_info(name, json, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->post_job_build_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the job |  |
| **json** | **String** |  |  |
| **token** | **String** |  | [optional] |
| **jenkins_crumb** | **String** | CSRF protection token | [optional] |

### Return type

nil (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## post_job_config

> post_job_config(name, body, opts)



Update job configuration

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

api_instance = SwaggyJenkinsClient::RemoteAccessApi.new
name = 'name_example' # String | Name of the job
body = 'body_example' # String | Job configuration in config.xml format
opts = {
  jenkins_crumb: 'jenkins_crumb_example' # String | CSRF protection token
}

begin
  
  api_instance.post_job_config(name, body, opts)
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->post_job_config: #{e}"
end
```

#### Using the post_job_config_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_job_config_with_http_info(name, body, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.post_job_config_with_http_info(name, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->post_job_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the job |  |
| **body** | **String** | Job configuration in config.xml format |  |
| **jenkins_crumb** | **String** | CSRF protection token | [optional] |

### Return type

nil (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## post_job_delete

> post_job_delete(name, opts)



Delete a job

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

api_instance = SwaggyJenkinsClient::RemoteAccessApi.new
name = 'name_example' # String | Name of the job
opts = {
  jenkins_crumb: 'jenkins_crumb_example' # String | CSRF protection token
}

begin
  
  api_instance.post_job_delete(name, opts)
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->post_job_delete: #{e}"
end
```

#### Using the post_job_delete_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_job_delete_with_http_info(name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.post_job_delete_with_http_info(name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->post_job_delete_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the job |  |
| **jenkins_crumb** | **String** | CSRF protection token | [optional] |

### Return type

nil (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## post_job_disable

> post_job_disable(name, opts)



Disable a job

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

api_instance = SwaggyJenkinsClient::RemoteAccessApi.new
name = 'name_example' # String | Name of the job
opts = {
  jenkins_crumb: 'jenkins_crumb_example' # String | CSRF protection token
}

begin
  
  api_instance.post_job_disable(name, opts)
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->post_job_disable: #{e}"
end
```

#### Using the post_job_disable_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_job_disable_with_http_info(name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.post_job_disable_with_http_info(name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->post_job_disable_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the job |  |
| **jenkins_crumb** | **String** | CSRF protection token | [optional] |

### Return type

nil (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## post_job_enable

> post_job_enable(name, opts)



Enable a job

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

api_instance = SwaggyJenkinsClient::RemoteAccessApi.new
name = 'name_example' # String | Name of the job
opts = {
  jenkins_crumb: 'jenkins_crumb_example' # String | CSRF protection token
}

begin
  
  api_instance.post_job_enable(name, opts)
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->post_job_enable: #{e}"
end
```

#### Using the post_job_enable_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_job_enable_with_http_info(name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.post_job_enable_with_http_info(name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->post_job_enable_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the job |  |
| **jenkins_crumb** | **String** | CSRF protection token | [optional] |

### Return type

nil (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## post_job_last_build_stop

> post_job_last_build_stop(name, opts)



Stop a job

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

api_instance = SwaggyJenkinsClient::RemoteAccessApi.new
name = 'name_example' # String | Name of the job
opts = {
  jenkins_crumb: 'jenkins_crumb_example' # String | CSRF protection token
}

begin
  
  api_instance.post_job_last_build_stop(name, opts)
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->post_job_last_build_stop: #{e}"
end
```

#### Using the post_job_last_build_stop_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_job_last_build_stop_with_http_info(name, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.post_job_last_build_stop_with_http_info(name, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->post_job_last_build_stop_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the job |  |
| **jenkins_crumb** | **String** | CSRF protection token | [optional] |

### Return type

nil (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## post_view_config

> post_view_config(name, body, opts)



Update view configuration

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

api_instance = SwaggyJenkinsClient::RemoteAccessApi.new
name = 'name_example' # String | Name of the view
body = 'body_example' # String | View configuration in config.xml format
opts = {
  jenkins_crumb: 'jenkins_crumb_example' # String | CSRF protection token
}

begin
  
  api_instance.post_view_config(name, body, opts)
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->post_view_config: #{e}"
end
```

#### Using the post_view_config_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> post_view_config_with_http_info(name, body, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.post_view_config_with_http_info(name, body, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling RemoteAccessApi->post_view_config_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | Name of the view |  |
| **body** | **String** | View configuration in config.xml format |  |
| **jenkins_crumb** | **String** | CSRF protection token | [optional] |

### Return type

nil (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

