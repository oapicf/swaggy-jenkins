# SwaggyJenkinsClient::BlueOceanApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_pipeline_queue_item**](BlueOceanApi.md#delete_pipeline_queue_item) | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | 
[**get_authenticated_user**](BlueOceanApi.md#get_authenticated_user) | **GET** /blue/rest/organizations/{organization}/user/ | 
[**get_classes**](BlueOceanApi.md#get_classes) | **GET** /blue/rest/classes/{class} | 
[**get_organisation**](BlueOceanApi.md#get_organisation) | **GET** /blue/rest/organizations/{organization} | 
[**get_organisations**](BlueOceanApi.md#get_organisations) | **GET** /blue/rest/organizations/ | 
[**get_pipeline**](BlueOceanApi.md#get_pipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline} | 
[**get_pipeline_activities**](BlueOceanApi.md#get_pipeline_activities) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities | 
[**get_pipeline_branch**](BlueOceanApi.md#get_pipeline_branch) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ | 
[**get_pipeline_branch_run**](BlueOceanApi.md#get_pipeline_branch_run) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} | 
[**get_pipeline_branches**](BlueOceanApi.md#get_pipeline_branches) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches | 
[**get_pipeline_folder**](BlueOceanApi.md#get_pipeline_folder) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/ | 
[**get_pipeline_folder_pipeline**](BlueOceanApi.md#get_pipeline_folder_pipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} | 
[**get_pipeline_queue**](BlueOceanApi.md#get_pipeline_queue) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue | 
[**get_pipeline_run**](BlueOceanApi.md#get_pipeline_run) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} | 
[**get_pipeline_run_log**](BlueOceanApi.md#get_pipeline_run_log) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log | 
[**get_pipeline_run_node**](BlueOceanApi.md#get_pipeline_run_node) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} | 
[**get_pipeline_run_node_step**](BlueOceanApi.md#get_pipeline_run_node_step) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} | 
[**get_pipeline_run_node_step_log**](BlueOceanApi.md#get_pipeline_run_node_step_log) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log | 
[**get_pipeline_run_node_steps**](BlueOceanApi.md#get_pipeline_run_node_steps) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps | 
[**get_pipeline_run_nodes**](BlueOceanApi.md#get_pipeline_run_nodes) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes | 
[**get_pipeline_runs**](BlueOceanApi.md#get_pipeline_runs) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**get_pipelines**](BlueOceanApi.md#get_pipelines) | **GET** /blue/rest/organizations/{organization}/pipelines/ | 
[**get_scm**](BlueOceanApi.md#get_scm) | **GET** /blue/rest/organizations/{organization}/scm/{scm} | 
[**get_scm_organisation_repositories**](BlueOceanApi.md#get_scm_organisation_repositories) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories | 
[**get_scm_organisation_repository**](BlueOceanApi.md#get_scm_organisation_repository) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} | 
[**get_scm_organisations**](BlueOceanApi.md#get_scm_organisations) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations | 
[**get_user**](BlueOceanApi.md#get_user) | **GET** /blue/rest/organizations/{organization}/users/{user} | 
[**get_user_favorites**](BlueOceanApi.md#get_user_favorites) | **GET** /blue/rest/users/{user}/favorites | 
[**get_users**](BlueOceanApi.md#get_users) | **GET** /blue/rest/organizations/{organization}/users/ | 
[**post_pipeline_run**](BlueOceanApi.md#post_pipeline_run) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay | 
[**post_pipeline_runs**](BlueOceanApi.md#post_pipeline_runs) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**put_pipeline_favorite**](BlueOceanApi.md#put_pipeline_favorite) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite | 
[**put_pipeline_run**](BlueOceanApi.md#put_pipeline_run) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop | 
[**search**](BlueOceanApi.md#search) | **GET** /blue/rest/search/ | 
[**search_classes**](BlueOceanApi.md#search_classes) | **GET** /blue/rest/classes/ | 


# **delete_pipeline_queue_item**
> delete_pipeline_queue_item(organization, pipeline, queue)



Delete queue item from an organization pipeline queue

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organization = "organization_example" # String | Name of the organization

pipeline = "pipeline_example" # String | Name of the pipeline

queue = "queue_example" # String | Name of the queue item


begin
  api_instance.delete_pipeline_queue_item(organization, pipeline, queue)
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->delete_pipeline_queue_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **pipeline** | **String**| Name of the pipeline | 
 **queue** | **String**| Name of the queue item | 

### Return type

nil (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_authenticated_user**
> User get_authenticated_user(organization, )



Retrieve authenticated user details for an organization

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organization = "organization_example" # String | Name of the organization


begin
  result = api_instance.get_authenticated_user(organization, )
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_authenticated_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 

### Return type

[**User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_classes**
> String get_classes(_class)



Get a list of class names supported by a given class

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

_class = "_class_example" # String | Name of the class


begin
  result = api_instance.get_classes(_class)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_classes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_class** | **String**| Name of the class | 

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_organisation**
> Organisation get_organisation(organization, )



Retrieve organization details

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organization = "organization_example" # String | Name of the organization


begin
  result = api_instance.get_organisation(organization, )
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_organisation: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 

### Return type

[**Organisation**](Organisation.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_organisations**
> Organisations get_organisations



Retrieve all organizations details

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

begin
  result = api_instance.get_organisations
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_organisations: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Organisations**](Organisations.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_pipeline**
> Pipeline get_pipeline(organization, pipeline, )



Retrieve pipeline details for an organization

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organization = "organization_example" # String | Name of the organization

pipeline = "pipeline_example" # String | Name of the pipeline


begin
  result = api_instance.get_pipeline(organization, pipeline, )
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_pipeline: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **pipeline** | **String**| Name of the pipeline | 

### Return type

[**Pipeline**](Pipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_pipeline_activities**
> PipelineActivities get_pipeline_activities(organization, pipeline, )



Retrieve all activities details for an organization pipeline

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organization = "organization_example" # String | Name of the organization

pipeline = "pipeline_example" # String | Name of the pipeline


begin
  result = api_instance.get_pipeline_activities(organization, pipeline, )
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_pipeline_activities: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **pipeline** | **String**| Name of the pipeline | 

### Return type

[**PipelineActivities**](PipelineActivities.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_pipeline_branch**
> BranchImpl get_pipeline_branch(organization, pipeline, branch, )



Retrieve branch details for an organization pipeline

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organization = "organization_example" # String | Name of the organization

pipeline = "pipeline_example" # String | Name of the pipeline

branch = "branch_example" # String | Name of the branch


begin
  result = api_instance.get_pipeline_branch(organization, pipeline, branch, )
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_pipeline_branch: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **pipeline** | **String**| Name of the pipeline | 
 **branch** | **String**| Name of the branch | 

### Return type

[**BranchImpl**](BranchImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_pipeline_branch_run**
> PipelineRun get_pipeline_branch_run(organization, pipeline, branch, run)



Retrieve branch run details for an organization pipeline

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organization = "organization_example" # String | Name of the organization

pipeline = "pipeline_example" # String | Name of the pipeline

branch = "branch_example" # String | Name of the branch

run = "run_example" # String | Name of the run


begin
  result = api_instance.get_pipeline_branch_run(organization, pipeline, branch, run)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_pipeline_branch_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **pipeline** | **String**| Name of the pipeline | 
 **branch** | **String**| Name of the branch | 
 **run** | **String**| Name of the run | 

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_pipeline_branches**
> MultibranchPipeline get_pipeline_branches(organization, pipeline, )



Retrieve all branches details for an organization pipeline

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organization = "organization_example" # String | Name of the organization

pipeline = "pipeline_example" # String | Name of the pipeline


begin
  result = api_instance.get_pipeline_branches(organization, pipeline, )
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_pipeline_branches: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **pipeline** | **String**| Name of the pipeline | 

### Return type

[**MultibranchPipeline**](MultibranchPipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_pipeline_folder**
> PipelineFolderImpl get_pipeline_folder(organization, folder)



Retrieve pipeline folder for an organization

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organization = "organization_example" # String | Name of the organization

folder = "folder_example" # String | Name of the folder


begin
  result = api_instance.get_pipeline_folder(organization, folder)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_pipeline_folder: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **folder** | **String**| Name of the folder | 

### Return type

[**PipelineFolderImpl**](PipelineFolderImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_pipeline_folder_pipeline**
> PipelineImpl get_pipeline_folder_pipeline(organization, pipeline, folder)



Retrieve pipeline details for an organization folder

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organization = "organization_example" # String | Name of the organization

pipeline = "pipeline_example" # String | Name of the pipeline

folder = "folder_example" # String | Name of the folder


begin
  result = api_instance.get_pipeline_folder_pipeline(organization, pipeline, folder)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_pipeline_folder_pipeline: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **pipeline** | **String**| Name of the pipeline | 
 **folder** | **String**| Name of the folder | 

### Return type

[**PipelineImpl**](PipelineImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_pipeline_queue**
> PipelineQueue get_pipeline_queue(organization, pipeline, )



Retrieve queue details for an organization pipeline

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organization = "organization_example" # String | Name of the organization

pipeline = "pipeline_example" # String | Name of the pipeline


begin
  result = api_instance.get_pipeline_queue(organization, pipeline, )
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_pipeline_queue: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **pipeline** | **String**| Name of the pipeline | 

### Return type

[**PipelineQueue**](PipelineQueue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_pipeline_run**
> PipelineRun get_pipeline_run(organization, pipeline, run)



Retrieve run details for an organization pipeline

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organization = "organization_example" # String | Name of the organization

pipeline = "pipeline_example" # String | Name of the pipeline

run = "run_example" # String | Name of the run


begin
  result = api_instance.get_pipeline_run(organization, pipeline, run)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_pipeline_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **pipeline** | **String**| Name of the pipeline | 
 **run** | **String**| Name of the run | 

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_pipeline_run_log**
> String get_pipeline_run_log(organization, pipeline, run, opts)



Get log for a pipeline run

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organization = "organization_example" # String | Name of the organization

pipeline = "pipeline_example" # String | Name of the pipeline

run = "run_example" # String | Name of the run

opts = { 
  start: 56, # Integer | Start position of the log
  download: true # BOOLEAN | Set to true in order to download the file, otherwise it's passed as a response body
}

begin
  result = api_instance.get_pipeline_run_log(organization, pipeline, run, opts)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_pipeline_run_log: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **pipeline** | **String**| Name of the pipeline | 
 **run** | **String**| Name of the run | 
 **start** | **Integer**| Start position of the log | [optional] 
 **download** | **BOOLEAN**| Set to true in order to download the file, otherwise it&#39;s passed as a response body | [optional] 

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_pipeline_run_node**
> PipelineRunNode get_pipeline_run_node(organization, pipeline, runnode, )



Retrieve run node details for an organization pipeline

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organization = "organization_example" # String | Name of the organization

pipeline = "pipeline_example" # String | Name of the pipeline

run = "run_example" # String | Name of the run

node = "node_example" # String | Name of the node


begin
  result = api_instance.get_pipeline_run_node(organization, pipeline, runnode, )
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_pipeline_run_node: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **pipeline** | **String**| Name of the pipeline | 
 **run** | **String**| Name of the run | 
 **node** | **String**| Name of the node | 

### Return type

[**PipelineRunNode**](PipelineRunNode.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_pipeline_run_node_step**
> PipelineStepImpl get_pipeline_run_node_step(organization, pipeline, runnode, step)



Retrieve run node details for an organization pipeline

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organization = "organization_example" # String | Name of the organization

pipeline = "pipeline_example" # String | Name of the pipeline

run = "run_example" # String | Name of the run

node = "node_example" # String | Name of the node

step = "step_example" # String | Name of the step


begin
  result = api_instance.get_pipeline_run_node_step(organization, pipeline, runnode, step)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_pipeline_run_node_step: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **pipeline** | **String**| Name of the pipeline | 
 **run** | **String**| Name of the run | 
 **node** | **String**| Name of the node | 
 **step** | **String**| Name of the step | 

### Return type

[**PipelineStepImpl**](PipelineStepImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_pipeline_run_node_step_log**
> String get_pipeline_run_node_step_log(organization, pipeline, runnode, step)



Get log for a pipeline run node step

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organization = "organization_example" # String | Name of the organization

pipeline = "pipeline_example" # String | Name of the pipeline

run = "run_example" # String | Name of the run

node = "node_example" # String | Name of the node

step = "step_example" # String | Name of the step


begin
  result = api_instance.get_pipeline_run_node_step_log(organization, pipeline, runnode, step)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_pipeline_run_node_step_log: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **pipeline** | **String**| Name of the pipeline | 
 **run** | **String**| Name of the run | 
 **node** | **String**| Name of the node | 
 **step** | **String**| Name of the step | 

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_pipeline_run_node_steps**
> PipelineRunNodeSteps get_pipeline_run_node_steps(organization, pipeline, runnode, )



Retrieve run node steps details for an organization pipeline

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organization = "organization_example" # String | Name of the organization

pipeline = "pipeline_example" # String | Name of the pipeline

run = "run_example" # String | Name of the run

node = "node_example" # String | Name of the node


begin
  result = api_instance.get_pipeline_run_node_steps(organization, pipeline, runnode, )
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_pipeline_run_node_steps: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **pipeline** | **String**| Name of the pipeline | 
 **run** | **String**| Name of the run | 
 **node** | **String**| Name of the node | 

### Return type

[**PipelineRunNodeSteps**](PipelineRunNodeSteps.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_pipeline_run_nodes**
> PipelineRunNodes get_pipeline_run_nodes(organization, pipeline, run)



Retrieve run nodes details for an organization pipeline

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organization = "organization_example" # String | Name of the organization

pipeline = "pipeline_example" # String | Name of the pipeline

run = "run_example" # String | Name of the run


begin
  result = api_instance.get_pipeline_run_nodes(organization, pipeline, run)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_pipeline_run_nodes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **pipeline** | **String**| Name of the pipeline | 
 **run** | **String**| Name of the run | 

### Return type

[**PipelineRunNodes**](PipelineRunNodes.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_pipeline_runs**
> PipelineRuns get_pipeline_runs(organization, pipeline, )



Retrieve all runs details for an organization pipeline

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organization = "organization_example" # String | Name of the organization

pipeline = "pipeline_example" # String | Name of the pipeline


begin
  result = api_instance.get_pipeline_runs(organization, pipeline, )
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_pipeline_runs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **pipeline** | **String**| Name of the pipeline | 

### Return type

[**PipelineRuns**](PipelineRuns.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_pipelines**
> Pipelines get_pipelines(organization, )



Retrieve all pipelines details for an organization

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organization = "organization_example" # String | Name of the organization


begin
  result = api_instance.get_pipelines(organization, )
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_pipelines: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 

### Return type

[**Pipelines**](Pipelines.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_scm**
> GithubScm get_scm(organization, scm, )



Retrieve SCM details for an organization

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organization = "organization_example" # String | Name of the organization

scm = "scm_example" # String | Name of SCM


begin
  result = api_instance.get_scm(organization, scm, )
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_scm: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **scm** | **String**| Name of SCM | 

### Return type

[**GithubScm**](GithubScm.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_scm_organisation_repositories**
> ScmOrganisations get_scm_organisation_repositories(organization, scm, scm_organisation, , opts)



Retrieve SCM organization repositories details for an organization

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organization = "organization_example" # String | Name of the organization

scm = "scm_example" # String | Name of SCM

scm_organisation = "scm_organisation_example" # String | Name of the SCM organization

opts = { 
  credential_id: "credential_id_example", # String | Credential ID
  page_size: 56, # Integer | Number of items in a page
  page_number: 56 # Integer | Page number
}

begin
  result = api_instance.get_scm_organisation_repositories(organization, scm, scm_organisation, , opts)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_scm_organisation_repositories: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **scm** | **String**| Name of SCM | 
 **scm_organisation** | **String**| Name of the SCM organization | 
 **credential_id** | **String**| Credential ID | [optional] 
 **page_size** | **Integer**| Number of items in a page | [optional] 
 **page_number** | **Integer**| Page number | [optional] 

### Return type

[**ScmOrganisations**](ScmOrganisations.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_scm_organisation_repository**
> ScmOrganisations get_scm_organisation_repository(organization, scm, scm_organisation, repository, opts)



Retrieve SCM organization repository details for an organization

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organization = "organization_example" # String | Name of the organization

scm = "scm_example" # String | Name of SCM

scm_organisation = "scm_organisation_example" # String | Name of the SCM organization

repository = "repository_example" # String | Name of the SCM repository

opts = { 
  credential_id: "credential_id_example" # String | Credential ID
}

begin
  result = api_instance.get_scm_organisation_repository(organization, scm, scm_organisation, repository, opts)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_scm_organisation_repository: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **scm** | **String**| Name of SCM | 
 **scm_organisation** | **String**| Name of the SCM organization | 
 **repository** | **String**| Name of the SCM repository | 
 **credential_id** | **String**| Credential ID | [optional] 

### Return type

[**ScmOrganisations**](ScmOrganisations.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_scm_organisations**
> ScmOrganisations get_scm_organisations(organization, scm, , opts)



Retrieve SCM organizations details for an organization

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organization = "organization_example" # String | Name of the organization

scm = "scm_example" # String | Name of SCM

opts = { 
  credential_id: "credential_id_example" # String | Credential ID
}

begin
  result = api_instance.get_scm_organisations(organization, scm, , opts)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_scm_organisations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **scm** | **String**| Name of SCM | 
 **credential_id** | **String**| Credential ID | [optional] 

### Return type

[**ScmOrganisations**](ScmOrganisations.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_user**
> User get_user(organization, user)



Retrieve user details for an organization

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organization = "organization_example" # String | Name of the organization

user = "user_example" # String | Name of the user


begin
  result = api_instance.get_user(organization, user)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **user** | **String**| Name of the user | 

### Return type

[**User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_user_favorites**
> UserFavorites get_user_favorites(user)



Retrieve user favorites details for an organization

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

user = "user_example" # String | Name of the user


begin
  result = api_instance.get_user_favorites(user)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_user_favorites: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | **String**| Name of the user | 

### Return type

[**UserFavorites**](UserFavorites.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **get_users**
> User get_users(organization, )



Retrieve users details for an organization

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organization = "organization_example" # String | Name of the organization


begin
  result = api_instance.get_users(organization, )
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->get_users: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 

### Return type

[**User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_pipeline_run**
> QueueItemImpl post_pipeline_run(organization, pipeline, run)



Replay an organization pipeline run

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organization = "organization_example" # String | Name of the organization

pipeline = "pipeline_example" # String | Name of the pipeline

run = "run_example" # String | Name of the run


begin
  result = api_instance.post_pipeline_run(organization, pipeline, run)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->post_pipeline_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **pipeline** | **String**| Name of the pipeline | 
 **run** | **String**| Name of the run | 

### Return type

[**QueueItemImpl**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **post_pipeline_runs**
> QueueItemImpl post_pipeline_runs(organization, pipeline, )



Start a build for an organization pipeline

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organization = "organization_example" # String | Name of the organization

pipeline = "pipeline_example" # String | Name of the pipeline


begin
  result = api_instance.post_pipeline_runs(organization, pipeline, )
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->post_pipeline_runs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **pipeline** | **String**| Name of the pipeline | 

### Return type

[**QueueItemImpl**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **put_pipeline_favorite**
> FavoriteImpl put_pipeline_favorite(organization, pipeline, body)



Favorite/unfavorite a pipeline

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organization = "organization_example" # String | Name of the organization

pipeline = "pipeline_example" # String | Name of the pipeline

body = SwaggyJenkinsClient::Body.new # Body | Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite


begin
  result = api_instance.put_pipeline_favorite(organization, pipeline, body)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->put_pipeline_favorite: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **pipeline** | **String**| Name of the pipeline | 
 **body** | [**Body**](Body.md)| Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite | 

### Return type

[**FavoriteImpl**](FavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **put_pipeline_run**
> PipelineRun put_pipeline_run(organization, pipeline, run, opts)



Stop a build of an organization pipeline

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

organization = "organization_example" # String | Name of the organization

pipeline = "pipeline_example" # String | Name of the pipeline

run = "run_example" # String | Name of the run

opts = { 
  blocking: "blocking_example", # String | Set to true to make blocking stop, default: false
  time_out_in_secs: 56 # Integer | Timeout in seconds, default: 10 seconds
}

begin
  result = api_instance.put_pipeline_run(organization, pipeline, run, opts)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->put_pipeline_run: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **pipeline** | **String**| Name of the pipeline | 
 **run** | **String**| Name of the run | 
 **blocking** | **String**| Set to true to make blocking stop, default: false | [optional] 
 **time_out_in_secs** | **Integer**| Timeout in seconds, default: 10 seconds | [optional] 

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **search**
> String search(q)



Search for any resource details

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

q = "q_example" # String | Query string


begin
  result = api_instance.search(q)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->search: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Query string | 

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **search_classes**
> String search_classes(q)



Get classes details

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

api_instance = SwaggyJenkinsClient::BlueOceanApi.new

q = "q_example" # String | Query string containing an array of class names


begin
  result = api_instance.search_classes(q)
  p result
rescue SwaggyJenkinsClient::ApiError => e
  puts "Exception when calling BlueOceanApi->search_classes: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Query string containing an array of class names | 

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



