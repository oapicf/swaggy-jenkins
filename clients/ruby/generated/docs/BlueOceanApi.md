# SwaggyJenkinsClient::BlueOceanApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_pipeline_queue_item**](BlueOceanApi.md#delete_pipeline_queue_item) | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} |  |
| [**get_authenticated_user**](BlueOceanApi.md#get_authenticated_user) | **GET** /blue/rest/organizations/{organization}/user/ |  |
| [**get_classes**](BlueOceanApi.md#get_classes) | **GET** /blue/rest/classes/{class} |  |
| [**get_json_web_key**](BlueOceanApi.md#get_json_web_key) | **GET** /jwt-auth/jwks/{key} |  |
| [**get_json_web_token**](BlueOceanApi.md#get_json_web_token) | **GET** /jwt-auth/token |  |
| [**get_organisation**](BlueOceanApi.md#get_organisation) | **GET** /blue/rest/organizations/{organization} |  |
| [**get_organisations**](BlueOceanApi.md#get_organisations) | **GET** /blue/rest/organizations/ |  |
| [**get_pipeline**](BlueOceanApi.md#get_pipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline} |  |
| [**get_pipeline_activities**](BlueOceanApi.md#get_pipeline_activities) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities |  |
| [**get_pipeline_branch**](BlueOceanApi.md#get_pipeline_branch) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ |  |
| [**get_pipeline_branch_run**](BlueOceanApi.md#get_pipeline_branch_run) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} |  |
| [**get_pipeline_branches**](BlueOceanApi.md#get_pipeline_branches) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches |  |
| [**get_pipeline_folder**](BlueOceanApi.md#get_pipeline_folder) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/ |  |
| [**get_pipeline_folder_pipeline**](BlueOceanApi.md#get_pipeline_folder_pipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} |  |
| [**get_pipeline_queue**](BlueOceanApi.md#get_pipeline_queue) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue |  |
| [**get_pipeline_run**](BlueOceanApi.md#get_pipeline_run) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} |  |
| [**get_pipeline_run_log**](BlueOceanApi.md#get_pipeline_run_log) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log |  |
| [**get_pipeline_run_node**](BlueOceanApi.md#get_pipeline_run_node) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} |  |
| [**get_pipeline_run_node_step**](BlueOceanApi.md#get_pipeline_run_node_step) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} |  |
| [**get_pipeline_run_node_step_log**](BlueOceanApi.md#get_pipeline_run_node_step_log) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log |  |
| [**get_pipeline_run_node_steps**](BlueOceanApi.md#get_pipeline_run_node_steps) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps |  |
| [**get_pipeline_run_nodes**](BlueOceanApi.md#get_pipeline_run_nodes) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes |  |
| [**get_pipeline_runs**](BlueOceanApi.md#get_pipeline_runs) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs |  |
| [**get_pipelines**](BlueOceanApi.md#get_pipelines) | **GET** /blue/rest/organizations/{organization}/pipelines/ |  |
| [**get_scm**](BlueOceanApi.md#get_scm) | **GET** /blue/rest/organizations/{organization}/scm/{scm} |  |
| [**get_scm_organisation_repositories**](BlueOceanApi.md#get_scm_organisation_repositories) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories |  |
| [**get_scm_organisation_repository**](BlueOceanApi.md#get_scm_organisation_repository) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} |  |
| [**get_scm_organisations**](BlueOceanApi.md#get_scm_organisations) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations |  |
| [**get_user**](BlueOceanApi.md#get_user) | **GET** /blue/rest/organizations/{organization}/users/{user} |  |
| [**get_user_favorites**](BlueOceanApi.md#get_user_favorites) | **GET** /blue/rest/users/{user}/favorites |  |
| [**get_users**](BlueOceanApi.md#get_users) | **GET** /blue/rest/organizations/{organization}/users/ |  |
| [**post_pipeline_run**](BlueOceanApi.md#post_pipeline_run) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay |  |
| [**post_pipeline_runs**](BlueOceanApi.md#post_pipeline_runs) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs |  |
| [**put_pipeline_favorite**](BlueOceanApi.md#put_pipeline_favorite) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite |  |
| [**put_pipeline_run**](BlueOceanApi.md#put_pipeline_run) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop |  |
| [**search**](BlueOceanApi.md#search) | **GET** /blue/rest/search/ |  |
| [**search_classes**](BlueOceanApi.md#search_classes) | **GET** /blue/rest/classes/ |  |


## delete_pipeline_queue_item

> delete_pipeline_queue_item(organization, pipeline, queue)



Delete queue item from an organization pipeline queue

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new
organization = 'organization_example' # String | Name of the organization
pipeline = 'pipeline_example' # String | Name of the pipeline
queue = 'queue_example' # String | Name of the queue item

begin
  
  api_instance.delete_pipeline_queue_item(organization, pipeline, queue)
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->delete_pipeline_queue_item: #{e}"
end
```

#### Using the delete_pipeline_queue_item_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_pipeline_queue_item_with_http_info(organization, pipeline, queue)

```ruby
begin
  
  data, status_code, headers = api_instance.delete_pipeline_queue_item_with_http_info(organization, pipeline, queue)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->delete_pipeline_queue_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization** | **String** | Name of the organization |  |
| **pipeline** | **String** | Name of the pipeline |  |
| **queue** | **String** | Name of the queue item |  |

### Return type

nil (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## get_authenticated_user

> <User> get_authenticated_user(organization)



Retrieve authenticated user details for an organization

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new
organization = 'organization_example' # String | Name of the organization

begin
  
  result = api_instance.get_authenticated_user(organization)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_authenticated_user: #{e}"
end
```

#### Using the get_authenticated_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> get_authenticated_user_with_http_info(organization)

```ruby
begin
  
  data, status_code, headers = api_instance.get_authenticated_user_with_http_info(organization)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_authenticated_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization** | **String** | Name of the organization |  |

### Return type

[**User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_classes

> String get_classes(_class)



Get a list of class names supported by a given class

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new
_class = '_class_example' # String | Name of the class

begin
  
  result = api_instance.get_classes(_class)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_classes: #{e}"
end
```

#### Using the get_classes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_classes_with_http_info(_class)

```ruby
begin
  
  data, status_code, headers = api_instance.get_classes_with_http_info(_class)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_classes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_class** | **String** | Name of the class |  |

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_json_web_key

> String get_json_web_key(key)



Retrieve JSON Web Key

### Examples

```ruby
require 'time'
require 'swaggy_jenkins'

api_instance = SwaggyJenkinsClient::BlueOceanApi.new
key = 56 # Integer | Key ID received as part of JWT header field kid

begin
  
  result = api_instance.get_json_web_key(key)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_json_web_key: #{e}"
end
```

#### Using the get_json_web_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_json_web_key_with_http_info(key)

```ruby
begin
  
  data, status_code, headers = api_instance.get_json_web_key_with_http_info(key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_json_web_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key** | **Integer** | Key ID received as part of JWT header field kid |  |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_json_web_token

> String get_json_web_token(opts)



Retrieve JSON Web Token

### Examples

```ruby
require 'time'
require 'swaggy_jenkins'

api_instance = SwaggyJenkinsClient::BlueOceanApi.new
opts = {
  expiry_time_in_mins: 56, # Integer | Token expiry time in minutes, default: 30 minutes
  max_expiry_time_in_mins: 56 # Integer | Maximum token expiry time in minutes, default: 480 minutes
}

begin
  
  result = api_instance.get_json_web_token(opts)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_json_web_token: #{e}"
end
```

#### Using the get_json_web_token_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_json_web_token_with_http_info(opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_json_web_token_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_json_web_token_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **expiry_time_in_mins** | **Integer** | Token expiry time in minutes, default: 30 minutes | [optional] |
| **max_expiry_time_in_mins** | **Integer** | Maximum token expiry time in minutes, default: 480 minutes | [optional] |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organisation

> <Organisation> get_organisation(organization)



Retrieve organization details

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new
organization = 'organization_example' # String | Name of the organization

begin
  
  result = api_instance.get_organisation(organization)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_organisation: #{e}"
end
```

#### Using the get_organisation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Organisation>, Integer, Hash)> get_organisation_with_http_info(organization)

```ruby
begin
  
  data, status_code, headers = api_instance.get_organisation_with_http_info(organization)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Organisation>
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_organisation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization** | **String** | Name of the organization |  |

### Return type

[**Organisation**](Organisation.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_organisations

> <Array<Organisation>> get_organisations



Retrieve all organizations details

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

begin
  
  result = api_instance.get_organisations
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_organisations: #{e}"
end
```

#### Using the get_organisations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Organisation>>, Integer, Hash)> get_organisations_with_http_info

```ruby
begin
  
  data, status_code, headers = api_instance.get_organisations_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Organisation>>
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_organisations_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**Array&lt;Organisation&gt;**](Organisation.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pipeline

> <Pipeline> get_pipeline(organization, pipeline)



Retrieve pipeline details for an organization

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new
organization = 'organization_example' # String | Name of the organization
pipeline = 'pipeline_example' # String | Name of the pipeline

begin
  
  result = api_instance.get_pipeline(organization, pipeline)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_pipeline: #{e}"
end
```

#### Using the get_pipeline_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Pipeline>, Integer, Hash)> get_pipeline_with_http_info(organization, pipeline)

```ruby
begin
  
  data, status_code, headers = api_instance.get_pipeline_with_http_info(organization, pipeline)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Pipeline>
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_pipeline_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization** | **String** | Name of the organization |  |
| **pipeline** | **String** | Name of the pipeline |  |

### Return type

[**Pipeline**](Pipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pipeline_activities

> <Array<PipelineActivity>> get_pipeline_activities(organization, pipeline)



Retrieve all activities details for an organization pipeline

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new
organization = 'organization_example' # String | Name of the organization
pipeline = 'pipeline_example' # String | Name of the pipeline

begin
  
  result = api_instance.get_pipeline_activities(organization, pipeline)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_pipeline_activities: #{e}"
end
```

#### Using the get_pipeline_activities_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PipelineActivity>>, Integer, Hash)> get_pipeline_activities_with_http_info(organization, pipeline)

```ruby
begin
  
  data, status_code, headers = api_instance.get_pipeline_activities_with_http_info(organization, pipeline)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PipelineActivity>>
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_pipeline_activities_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization** | **String** | Name of the organization |  |
| **pipeline** | **String** | Name of the pipeline |  |

### Return type

[**Array&lt;PipelineActivity&gt;**](PipelineActivity.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pipeline_branch

> <BranchImpl> get_pipeline_branch(organization, pipeline, branch)



Retrieve branch details for an organization pipeline

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new
organization = 'organization_example' # String | Name of the organization
pipeline = 'pipeline_example' # String | Name of the pipeline
branch = 'branch_example' # String | Name of the branch

begin
  
  result = api_instance.get_pipeline_branch(organization, pipeline, branch)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_pipeline_branch: #{e}"
end
```

#### Using the get_pipeline_branch_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BranchImpl>, Integer, Hash)> get_pipeline_branch_with_http_info(organization, pipeline, branch)

```ruby
begin
  
  data, status_code, headers = api_instance.get_pipeline_branch_with_http_info(organization, pipeline, branch)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BranchImpl>
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_pipeline_branch_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization** | **String** | Name of the organization |  |
| **pipeline** | **String** | Name of the pipeline |  |
| **branch** | **String** | Name of the branch |  |

### Return type

[**BranchImpl**](BranchImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pipeline_branch_run

> <PipelineRun> get_pipeline_branch_run(organization, pipeline, branch, run)



Retrieve branch run details for an organization pipeline

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new
organization = 'organization_example' # String | Name of the organization
pipeline = 'pipeline_example' # String | Name of the pipeline
branch = 'branch_example' # String | Name of the branch
run = 'run_example' # String | Name of the run

begin
  
  result = api_instance.get_pipeline_branch_run(organization, pipeline, branch, run)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_pipeline_branch_run: #{e}"
end
```

#### Using the get_pipeline_branch_run_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineRun>, Integer, Hash)> get_pipeline_branch_run_with_http_info(organization, pipeline, branch, run)

```ruby
begin
  
  data, status_code, headers = api_instance.get_pipeline_branch_run_with_http_info(organization, pipeline, branch, run)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineRun>
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_pipeline_branch_run_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization** | **String** | Name of the organization |  |
| **pipeline** | **String** | Name of the pipeline |  |
| **branch** | **String** | Name of the branch |  |
| **run** | **String** | Name of the run |  |

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pipeline_branches

> <MultibranchPipeline> get_pipeline_branches(organization, pipeline)



Retrieve all branches details for an organization pipeline

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new
organization = 'organization_example' # String | Name of the organization
pipeline = 'pipeline_example' # String | Name of the pipeline

begin
  
  result = api_instance.get_pipeline_branches(organization, pipeline)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_pipeline_branches: #{e}"
end
```

#### Using the get_pipeline_branches_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MultibranchPipeline>, Integer, Hash)> get_pipeline_branches_with_http_info(organization, pipeline)

```ruby
begin
  
  data, status_code, headers = api_instance.get_pipeline_branches_with_http_info(organization, pipeline)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MultibranchPipeline>
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_pipeline_branches_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization** | **String** | Name of the organization |  |
| **pipeline** | **String** | Name of the pipeline |  |

### Return type

[**MultibranchPipeline**](MultibranchPipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pipeline_folder

> <PipelineFolderImpl> get_pipeline_folder(organization, folder)



Retrieve pipeline folder for an organization

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new
organization = 'organization_example' # String | Name of the organization
folder = 'folder_example' # String | Name of the folder

begin
  
  result = api_instance.get_pipeline_folder(organization, folder)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_pipeline_folder: #{e}"
end
```

#### Using the get_pipeline_folder_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineFolderImpl>, Integer, Hash)> get_pipeline_folder_with_http_info(organization, folder)

```ruby
begin
  
  data, status_code, headers = api_instance.get_pipeline_folder_with_http_info(organization, folder)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineFolderImpl>
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_pipeline_folder_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization** | **String** | Name of the organization |  |
| **folder** | **String** | Name of the folder |  |

### Return type

[**PipelineFolderImpl**](PipelineFolderImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pipeline_folder_pipeline

> <PipelineImpl> get_pipeline_folder_pipeline(organization, pipeline, folder)



Retrieve pipeline details for an organization folder

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new
organization = 'organization_example' # String | Name of the organization
pipeline = 'pipeline_example' # String | Name of the pipeline
folder = 'folder_example' # String | Name of the folder

begin
  
  result = api_instance.get_pipeline_folder_pipeline(organization, pipeline, folder)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_pipeline_folder_pipeline: #{e}"
end
```

#### Using the get_pipeline_folder_pipeline_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineImpl>, Integer, Hash)> get_pipeline_folder_pipeline_with_http_info(organization, pipeline, folder)

```ruby
begin
  
  data, status_code, headers = api_instance.get_pipeline_folder_pipeline_with_http_info(organization, pipeline, folder)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineImpl>
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_pipeline_folder_pipeline_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization** | **String** | Name of the organization |  |
| **pipeline** | **String** | Name of the pipeline |  |
| **folder** | **String** | Name of the folder |  |

### Return type

[**PipelineImpl**](PipelineImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pipeline_queue

> <Array<QueueItemImpl>> get_pipeline_queue(organization, pipeline)



Retrieve queue details for an organization pipeline

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new
organization = 'organization_example' # String | Name of the organization
pipeline = 'pipeline_example' # String | Name of the pipeline

begin
  
  result = api_instance.get_pipeline_queue(organization, pipeline)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_pipeline_queue: #{e}"
end
```

#### Using the get_pipeline_queue_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<QueueItemImpl>>, Integer, Hash)> get_pipeline_queue_with_http_info(organization, pipeline)

```ruby
begin
  
  data, status_code, headers = api_instance.get_pipeline_queue_with_http_info(organization, pipeline)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<QueueItemImpl>>
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_pipeline_queue_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization** | **String** | Name of the organization |  |
| **pipeline** | **String** | Name of the pipeline |  |

### Return type

[**Array&lt;QueueItemImpl&gt;**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pipeline_run

> <PipelineRun> get_pipeline_run(organization, pipeline, run)



Retrieve run details for an organization pipeline

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new
organization = 'organization_example' # String | Name of the organization
pipeline = 'pipeline_example' # String | Name of the pipeline
run = 'run_example' # String | Name of the run

begin
  
  result = api_instance.get_pipeline_run(organization, pipeline, run)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_pipeline_run: #{e}"
end
```

#### Using the get_pipeline_run_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineRun>, Integer, Hash)> get_pipeline_run_with_http_info(organization, pipeline, run)

```ruby
begin
  
  data, status_code, headers = api_instance.get_pipeline_run_with_http_info(organization, pipeline, run)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineRun>
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_pipeline_run_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization** | **String** | Name of the organization |  |
| **pipeline** | **String** | Name of the pipeline |  |
| **run** | **String** | Name of the run |  |

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pipeline_run_log

> String get_pipeline_run_log(organization, pipeline, run, opts)



Get log for a pipeline run

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new
organization = 'organization_example' # String | Name of the organization
pipeline = 'pipeline_example' # String | Name of the pipeline
run = 'run_example' # String | Name of the run
opts = {
  start: 56, # Integer | Start position of the log
  download: true # Boolean | Set to true in order to download the file, otherwise it's passed as a response body
}

begin
  
  result = api_instance.get_pipeline_run_log(organization, pipeline, run, opts)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_pipeline_run_log: #{e}"
end
```

#### Using the get_pipeline_run_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_pipeline_run_log_with_http_info(organization, pipeline, run, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_pipeline_run_log_with_http_info(organization, pipeline, run, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_pipeline_run_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization** | **String** | Name of the organization |  |
| **pipeline** | **String** | Name of the pipeline |  |
| **run** | **String** | Name of the run |  |
| **start** | **Integer** | Start position of the log | [optional] |
| **download** | **Boolean** | Set to true in order to download the file, otherwise it&#39;s passed as a response body | [optional] |

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pipeline_run_node

> <PipelineRunNode> get_pipeline_run_node(organization, pipeline, run, node)



Retrieve run node details for an organization pipeline

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new
organization = 'organization_example' # String | Name of the organization
pipeline = 'pipeline_example' # String | Name of the pipeline
run = 'run_example' # String | Name of the run
node = 'node_example' # String | Name of the node

begin
  
  result = api_instance.get_pipeline_run_node(organization, pipeline, run, node)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_pipeline_run_node: #{e}"
end
```

#### Using the get_pipeline_run_node_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineRunNode>, Integer, Hash)> get_pipeline_run_node_with_http_info(organization, pipeline, run, node)

```ruby
begin
  
  data, status_code, headers = api_instance.get_pipeline_run_node_with_http_info(organization, pipeline, run, node)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineRunNode>
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_pipeline_run_node_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization** | **String** | Name of the organization |  |
| **pipeline** | **String** | Name of the pipeline |  |
| **run** | **String** | Name of the run |  |
| **node** | **String** | Name of the node |  |

### Return type

[**PipelineRunNode**](PipelineRunNode.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pipeline_run_node_step

> <PipelineStepImpl> get_pipeline_run_node_step(organization, pipeline, run, node, step)



Retrieve run node details for an organization pipeline

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new
organization = 'organization_example' # String | Name of the organization
pipeline = 'pipeline_example' # String | Name of the pipeline
run = 'run_example' # String | Name of the run
node = 'node_example' # String | Name of the node
step = 'step_example' # String | Name of the step

begin
  
  result = api_instance.get_pipeline_run_node_step(organization, pipeline, run, node, step)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_pipeline_run_node_step: #{e}"
end
```

#### Using the get_pipeline_run_node_step_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineStepImpl>, Integer, Hash)> get_pipeline_run_node_step_with_http_info(organization, pipeline, run, node, step)

```ruby
begin
  
  data, status_code, headers = api_instance.get_pipeline_run_node_step_with_http_info(organization, pipeline, run, node, step)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineStepImpl>
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_pipeline_run_node_step_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization** | **String** | Name of the organization |  |
| **pipeline** | **String** | Name of the pipeline |  |
| **run** | **String** | Name of the run |  |
| **node** | **String** | Name of the node |  |
| **step** | **String** | Name of the step |  |

### Return type

[**PipelineStepImpl**](PipelineStepImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pipeline_run_node_step_log

> String get_pipeline_run_node_step_log(organization, pipeline, run, node, step)



Get log for a pipeline run node step

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new
organization = 'organization_example' # String | Name of the organization
pipeline = 'pipeline_example' # String | Name of the pipeline
run = 'run_example' # String | Name of the run
node = 'node_example' # String | Name of the node
step = 'step_example' # String | Name of the step

begin
  
  result = api_instance.get_pipeline_run_node_step_log(organization, pipeline, run, node, step)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_pipeline_run_node_step_log: #{e}"
end
```

#### Using the get_pipeline_run_node_step_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> get_pipeline_run_node_step_log_with_http_info(organization, pipeline, run, node, step)

```ruby
begin
  
  data, status_code, headers = api_instance.get_pipeline_run_node_step_log_with_http_info(organization, pipeline, run, node, step)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_pipeline_run_node_step_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization** | **String** | Name of the organization |  |
| **pipeline** | **String** | Name of the pipeline |  |
| **run** | **String** | Name of the run |  |
| **node** | **String** | Name of the node |  |
| **step** | **String** | Name of the step |  |

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pipeline_run_node_steps

> <Array<PipelineStepImpl>> get_pipeline_run_node_steps(organization, pipeline, run, node)



Retrieve run node steps details for an organization pipeline

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new
organization = 'organization_example' # String | Name of the organization
pipeline = 'pipeline_example' # String | Name of the pipeline
run = 'run_example' # String | Name of the run
node = 'node_example' # String | Name of the node

begin
  
  result = api_instance.get_pipeline_run_node_steps(organization, pipeline, run, node)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_pipeline_run_node_steps: #{e}"
end
```

#### Using the get_pipeline_run_node_steps_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PipelineStepImpl>>, Integer, Hash)> get_pipeline_run_node_steps_with_http_info(organization, pipeline, run, node)

```ruby
begin
  
  data, status_code, headers = api_instance.get_pipeline_run_node_steps_with_http_info(organization, pipeline, run, node)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PipelineStepImpl>>
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_pipeline_run_node_steps_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization** | **String** | Name of the organization |  |
| **pipeline** | **String** | Name of the pipeline |  |
| **run** | **String** | Name of the run |  |
| **node** | **String** | Name of the node |  |

### Return type

[**Array&lt;PipelineStepImpl&gt;**](PipelineStepImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pipeline_run_nodes

> <Array<PipelineRunNode>> get_pipeline_run_nodes(organization, pipeline, run)



Retrieve run nodes details for an organization pipeline

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new
organization = 'organization_example' # String | Name of the organization
pipeline = 'pipeline_example' # String | Name of the pipeline
run = 'run_example' # String | Name of the run

begin
  
  result = api_instance.get_pipeline_run_nodes(organization, pipeline, run)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_pipeline_run_nodes: #{e}"
end
```

#### Using the get_pipeline_run_nodes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PipelineRunNode>>, Integer, Hash)> get_pipeline_run_nodes_with_http_info(organization, pipeline, run)

```ruby
begin
  
  data, status_code, headers = api_instance.get_pipeline_run_nodes_with_http_info(organization, pipeline, run)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PipelineRunNode>>
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_pipeline_run_nodes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization** | **String** | Name of the organization |  |
| **pipeline** | **String** | Name of the pipeline |  |
| **run** | **String** | Name of the run |  |

### Return type

[**Array&lt;PipelineRunNode&gt;**](PipelineRunNode.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pipeline_runs

> <Array<PipelineRun>> get_pipeline_runs(organization, pipeline)



Retrieve all runs details for an organization pipeline

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new
organization = 'organization_example' # String | Name of the organization
pipeline = 'pipeline_example' # String | Name of the pipeline

begin
  
  result = api_instance.get_pipeline_runs(organization, pipeline)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_pipeline_runs: #{e}"
end
```

#### Using the get_pipeline_runs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<PipelineRun>>, Integer, Hash)> get_pipeline_runs_with_http_info(organization, pipeline)

```ruby
begin
  
  data, status_code, headers = api_instance.get_pipeline_runs_with_http_info(organization, pipeline)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<PipelineRun>>
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_pipeline_runs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization** | **String** | Name of the organization |  |
| **pipeline** | **String** | Name of the pipeline |  |

### Return type

[**Array&lt;PipelineRun&gt;**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pipelines

> <Array<Pipeline>> get_pipelines(organization)



Retrieve all pipelines details for an organization

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new
organization = 'organization_example' # String | Name of the organization

begin
  
  result = api_instance.get_pipelines(organization)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_pipelines: #{e}"
end
```

#### Using the get_pipelines_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Pipeline>>, Integer, Hash)> get_pipelines_with_http_info(organization)

```ruby
begin
  
  data, status_code, headers = api_instance.get_pipelines_with_http_info(organization)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Pipeline>>
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_pipelines_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization** | **String** | Name of the organization |  |

### Return type

[**Array&lt;Pipeline&gt;**](Pipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_scm

> <GithubScm> get_scm(organization, scm)



Retrieve SCM details for an organization

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new
organization = 'organization_example' # String | Name of the organization
scm = 'scm_example' # String | Name of SCM

begin
  
  result = api_instance.get_scm(organization, scm)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_scm: #{e}"
end
```

#### Using the get_scm_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GithubScm>, Integer, Hash)> get_scm_with_http_info(organization, scm)

```ruby
begin
  
  data, status_code, headers = api_instance.get_scm_with_http_info(organization, scm)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GithubScm>
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_scm_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization** | **String** | Name of the organization |  |
| **scm** | **String** | Name of SCM |  |

### Return type

[**GithubScm**](GithubScm.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_scm_organisation_repositories

> <Array<GithubOrganization>> get_scm_organisation_repositories(organization, scm, scm_organisation, opts)



Retrieve SCM organization repositories details for an organization

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new
organization = 'organization_example' # String | Name of the organization
scm = 'scm_example' # String | Name of SCM
scm_organisation = 'scm_organisation_example' # String | Name of the SCM organization
opts = {
  credential_id: 'credential_id_example', # String | Credential ID
  page_size: 56, # Integer | Number of items in a page
  page_number: 56 # Integer | Page number
}

begin
  
  result = api_instance.get_scm_organisation_repositories(organization, scm, scm_organisation, opts)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_scm_organisation_repositories: #{e}"
end
```

#### Using the get_scm_organisation_repositories_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GithubOrganization>>, Integer, Hash)> get_scm_organisation_repositories_with_http_info(organization, scm, scm_organisation, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_scm_organisation_repositories_with_http_info(organization, scm, scm_organisation, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GithubOrganization>>
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_scm_organisation_repositories_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization** | **String** | Name of the organization |  |
| **scm** | **String** | Name of SCM |  |
| **scm_organisation** | **String** | Name of the SCM organization |  |
| **credential_id** | **String** | Credential ID | [optional] |
| **page_size** | **Integer** | Number of items in a page | [optional] |
| **page_number** | **Integer** | Page number | [optional] |

### Return type

[**Array&lt;GithubOrganization&gt;**](GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_scm_organisation_repository

> <Array<GithubOrganization>> get_scm_organisation_repository(organization, scm, scm_organisation, repository, opts)



Retrieve SCM organization repository details for an organization

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new
organization = 'organization_example' # String | Name of the organization
scm = 'scm_example' # String | Name of SCM
scm_organisation = 'scm_organisation_example' # String | Name of the SCM organization
repository = 'repository_example' # String | Name of the SCM repository
opts = {
  credential_id: 'credential_id_example' # String | Credential ID
}

begin
  
  result = api_instance.get_scm_organisation_repository(organization, scm, scm_organisation, repository, opts)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_scm_organisation_repository: #{e}"
end
```

#### Using the get_scm_organisation_repository_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GithubOrganization>>, Integer, Hash)> get_scm_organisation_repository_with_http_info(organization, scm, scm_organisation, repository, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_scm_organisation_repository_with_http_info(organization, scm, scm_organisation, repository, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GithubOrganization>>
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_scm_organisation_repository_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization** | **String** | Name of the organization |  |
| **scm** | **String** | Name of SCM |  |
| **scm_organisation** | **String** | Name of the SCM organization |  |
| **repository** | **String** | Name of the SCM repository |  |
| **credential_id** | **String** | Credential ID | [optional] |

### Return type

[**Array&lt;GithubOrganization&gt;**](GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_scm_organisations

> <Array<GithubOrganization>> get_scm_organisations(organization, scm, opts)



Retrieve SCM organizations details for an organization

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new
organization = 'organization_example' # String | Name of the organization
scm = 'scm_example' # String | Name of SCM
opts = {
  credential_id: 'credential_id_example' # String | Credential ID
}

begin
  
  result = api_instance.get_scm_organisations(organization, scm, opts)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_scm_organisations: #{e}"
end
```

#### Using the get_scm_organisations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<GithubOrganization>>, Integer, Hash)> get_scm_organisations_with_http_info(organization, scm, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.get_scm_organisations_with_http_info(organization, scm, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<GithubOrganization>>
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_scm_organisations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization** | **String** | Name of the organization |  |
| **scm** | **String** | Name of SCM |  |
| **credential_id** | **String** | Credential ID | [optional] |

### Return type

[**Array&lt;GithubOrganization&gt;**](GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user

> <User> get_user(organization, user)



Retrieve user details for an organization

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new
organization = 'organization_example' # String | Name of the organization
user = 'user_example' # String | Name of the user

begin
  
  result = api_instance.get_user(organization, user)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_user: #{e}"
end
```

#### Using the get_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> get_user_with_http_info(organization, user)

```ruby
begin
  
  data, status_code, headers = api_instance.get_user_with_http_info(organization, user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization** | **String** | Name of the organization |  |
| **user** | **String** | Name of the user |  |

### Return type

[**User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_favorites

> <Array<FavoriteImpl>> get_user_favorites(user)



Retrieve user favorites details for an organization

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new
user = 'user_example' # String | Name of the user

begin
  
  result = api_instance.get_user_favorites(user)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_user_favorites: #{e}"
end
```

#### Using the get_user_favorites_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<FavoriteImpl>>, Integer, Hash)> get_user_favorites_with_http_info(user)

```ruby
begin
  
  data, status_code, headers = api_instance.get_user_favorites_with_http_info(user)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<FavoriteImpl>>
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_user_favorites_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user** | **String** | Name of the user |  |

### Return type

[**Array&lt;FavoriteImpl&gt;**](FavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_users

> <User> get_users(organization)



Retrieve users details for an organization

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new
organization = 'organization_example' # String | Name of the organization

begin
  
  result = api_instance.get_users(organization)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_users: #{e}"
end
```

#### Using the get_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> get_users_with_http_info(organization)

```ruby
begin
  
  data, status_code, headers = api_instance.get_users_with_http_info(organization)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->get_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization** | **String** | Name of the organization |  |

### Return type

[**User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_pipeline_run

> <QueueItemImpl> post_pipeline_run(organization, pipeline, run)



Replay an organization pipeline run

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new
organization = 'organization_example' # String | Name of the organization
pipeline = 'pipeline_example' # String | Name of the pipeline
run = 'run_example' # String | Name of the run

begin
  
  result = api_instance.post_pipeline_run(organization, pipeline, run)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->post_pipeline_run: #{e}"
end
```

#### Using the post_pipeline_run_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QueueItemImpl>, Integer, Hash)> post_pipeline_run_with_http_info(organization, pipeline, run)

```ruby
begin
  
  data, status_code, headers = api_instance.post_pipeline_run_with_http_info(organization, pipeline, run)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QueueItemImpl>
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->post_pipeline_run_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization** | **String** | Name of the organization |  |
| **pipeline** | **String** | Name of the pipeline |  |
| **run** | **String** | Name of the run |  |

### Return type

[**QueueItemImpl**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## post_pipeline_runs

> <QueueItemImpl> post_pipeline_runs(organization, pipeline)



Start a build for an organization pipeline

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new
organization = 'organization_example' # String | Name of the organization
pipeline = 'pipeline_example' # String | Name of the pipeline

begin
  
  result = api_instance.post_pipeline_runs(organization, pipeline)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->post_pipeline_runs: #{e}"
end
```

#### Using the post_pipeline_runs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QueueItemImpl>, Integer, Hash)> post_pipeline_runs_with_http_info(organization, pipeline)

```ruby
begin
  
  data, status_code, headers = api_instance.post_pipeline_runs_with_http_info(organization, pipeline)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QueueItemImpl>
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->post_pipeline_runs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization** | **String** | Name of the organization |  |
| **pipeline** | **String** | Name of the pipeline |  |

### Return type

[**QueueItemImpl**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## put_pipeline_favorite

> <FavoriteImpl> put_pipeline_favorite(organization, pipeline, body)



Favorite/unfavorite a pipeline

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new
organization = 'organization_example' # String | Name of the organization
pipeline = 'pipeline_example' # String | Name of the pipeline
body = true # Boolean | Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite

begin
  
  result = api_instance.put_pipeline_favorite(organization, pipeline, body)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->put_pipeline_favorite: #{e}"
end
```

#### Using the put_pipeline_favorite_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FavoriteImpl>, Integer, Hash)> put_pipeline_favorite_with_http_info(organization, pipeline, body)

```ruby
begin
  
  data, status_code, headers = api_instance.put_pipeline_favorite_with_http_info(organization, pipeline, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FavoriteImpl>
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->put_pipeline_favorite_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization** | **String** | Name of the organization |  |
| **pipeline** | **String** | Name of the pipeline |  |
| **body** | **Boolean** | Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite |  |

### Return type

[**FavoriteImpl**](FavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## put_pipeline_run

> <PipelineRun> put_pipeline_run(organization, pipeline, run, opts)



Stop a build of an organization pipeline

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new
organization = 'organization_example' # String | Name of the organization
pipeline = 'pipeline_example' # String | Name of the pipeline
run = 'run_example' # String | Name of the run
opts = {
  blocking: 'blocking_example', # String | Set to true to make blocking stop, default: false
  time_out_in_secs: 56 # Integer | Timeout in seconds, default: 10 seconds
}

begin
  
  result = api_instance.put_pipeline_run(organization, pipeline, run, opts)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->put_pipeline_run: #{e}"
end
```

#### Using the put_pipeline_run_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PipelineRun>, Integer, Hash)> put_pipeline_run_with_http_info(organization, pipeline, run, opts)

```ruby
begin
  
  data, status_code, headers = api_instance.put_pipeline_run_with_http_info(organization, pipeline, run, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PipelineRun>
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->put_pipeline_run_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **organization** | **String** | Name of the organization |  |
| **pipeline** | **String** | Name of the pipeline |  |
| **run** | **String** | Name of the run |  |
| **blocking** | **String** | Set to true to make blocking stop, default: false | [optional] |
| **time_out_in_secs** | **Integer** | Timeout in seconds, default: 10 seconds | [optional] |

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search

> String search(q)



Search for any resource details

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new
q = 'q_example' # String | Query string

begin
  
  result = api_instance.search(q)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->search: #{e}"
end
```

#### Using the search_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> search_with_http_info(q)

```ruby
begin
  
  data, status_code, headers = api_instance.search_with_http_info(q)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->search_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **q** | **String** | Query string |  |

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_classes

> String search_classes(q)



Get classes details

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new
q = 'q_example' # String | Query string containing an array of class names

begin
  
  result = api_instance.search_classes(q)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->search_classes: #{e}"
end
```

#### Using the search_classes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(String, Integer, Hash)> search_classes_with_http_info(q)

```ruby
begin
  
  data, status_code, headers = api_instance.search_classes_with_http_info(q)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => String
rescue SwaggyJenkinsClient::ApiError => e
  puts "Error when calling BlueOceanApi->search_classes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **q** | **String** | Query string containing an array of class names |  |

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

