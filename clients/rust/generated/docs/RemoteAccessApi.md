# \RemoteAccessApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_computer**](RemoteAccessApi.md#get_computer) | **Get** /computer/api/json | 
[**get_crumb**](RemoteAccessApi.md#get_crumb) | **Get** /crumbIssuer/api/json | 
[**get_jenkins**](RemoteAccessApi.md#get_jenkins) | **Get** /api/json | 
[**get_job**](RemoteAccessApi.md#get_job) | **Get** /job/{name}/api/json | 
[**get_job_config**](RemoteAccessApi.md#get_job_config) | **Get** /job/{name}/config.xml | 
[**get_job_last_build**](RemoteAccessApi.md#get_job_last_build) | **Get** /job/{name}/lastBuild/api/json | 
[**get_job_progressive_text**](RemoteAccessApi.md#get_job_progressive_text) | **Get** /job/{name}/{number}/logText/progressiveText | 
[**get_queue**](RemoteAccessApi.md#get_queue) | **Get** /queue/api/json | 
[**get_queue_item**](RemoteAccessApi.md#get_queue_item) | **Get** /queue/item/{number}/api/json | 
[**get_view**](RemoteAccessApi.md#get_view) | **Get** /view/{name}/api/json | 
[**get_view_config**](RemoteAccessApi.md#get_view_config) | **Get** /view/{name}/config.xml | 
[**head_jenkins**](RemoteAccessApi.md#head_jenkins) | **Head** /api/json | 
[**post_create_item**](RemoteAccessApi.md#post_create_item) | **Post** /createItem | 
[**post_create_view**](RemoteAccessApi.md#post_create_view) | **Post** /createView | 
[**post_job_build**](RemoteAccessApi.md#post_job_build) | **Post** /job/{name}/build | 
[**post_job_config**](RemoteAccessApi.md#post_job_config) | **Post** /job/{name}/config.xml | 
[**post_job_delete**](RemoteAccessApi.md#post_job_delete) | **Post** /job/{name}/doDelete | 
[**post_job_disable**](RemoteAccessApi.md#post_job_disable) | **Post** /job/{name}/disable | 
[**post_job_enable**](RemoteAccessApi.md#post_job_enable) | **Post** /job/{name}/enable | 
[**post_job_last_build_stop**](RemoteAccessApi.md#post_job_last_build_stop) | **Post** /job/{name}/lastBuild/stop | 
[**post_view_config**](RemoteAccessApi.md#post_view_config) | **Post** /view/{name}/config.xml | 


# **get_computer**
> ::models::ComputerSet get_computer(ctx, depth)


Retrieve computer details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **depth** | **i32**| Recursion depth in response model | 

### Return type

[**::models::ComputerSet**](ComputerSet.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_crumb**
> ::models::DefaultCrumbIssuer get_crumb(ctx, )


Retrieve CSRF protection token

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**::models::DefaultCrumbIssuer**](DefaultCrumbIssuer.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_jenkins**
> ::models::Hudson get_jenkins(ctx, )


Retrieve Jenkins details

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**::models::Hudson**](Hudson.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_job**
> ::models::FreeStyleProject get_job(ctx, name)


Retrieve job details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **name** | **String**| Name of the job | 

### Return type

[**::models::FreeStyleProject**](FreeStyleProject.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_job_config**
> String get_job_config(ctx, name)


Retrieve job configuration

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **name** | **String**| Name of the job | 

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_job_last_build**
> ::models::FreeStyleBuild get_job_last_build(ctx, name)


Retrieve job's last build details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **name** | **String**| Name of the job | 

### Return type

[**::models::FreeStyleBuild**](FreeStyleBuild.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_job_progressive_text**
> get_job_progressive_text(ctx, name, number, start)


Retrieve job's build progressive text output

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **name** | **String**| Name of the job | 
  **number** | **String**| Build number | 
  **start** | **String**| Starting point of progressive text output | 

### Return type

 (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_queue**
> ::models::Queue get_queue(ctx, )


Retrieve queue details

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**::models::Queue**](Queue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_queue_item**
> ::models::Queue get_queue_item(ctx, number)


Retrieve queued item details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **number** | **String**| Queue number | 

### Return type

[**::models::Queue**](Queue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_view**
> ::models::ListView get_view(ctx, name)


Retrieve view details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **name** | **String**| Name of the view | 

### Return type

[**::models::ListView**](ListView.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_view_config**
> String get_view_config(ctx, name)


Retrieve view configuration

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **name** | **String**| Name of the view | 

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **head_jenkins**
> head_jenkins(ctx, )


Retrieve Jenkins headers

### Required Parameters
This endpoint does not need any parameter.

### Return type

 (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_create_item**
> post_create_item(ctx, name, optional)


Create a new job using job configuration, or copied from an existing job

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **name** | **String**| Name of the new job | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the new job | 
 **from** | **String**| Existing job to copy from | 
 **mode** | **String**| Set to &#39;copy&#39; for copying an existing job | 
 **jenkins_crumb** | **String**| CSRF protection token | 
 **content_type** | **String**| Content type header application/xml | 
 **body** | **String**| Job configuration in config.xml format | 

### Return type

 (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_create_view**
> post_create_view(ctx, name, optional)


Create a new view using view configuration

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **name** | **String**| Name of the new view | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the new view | 
 **jenkins_crumb** | **String**| CSRF protection token | 
 **content_type** | **String**| Content type header application/xml | 
 **body** | **String**| View configuration in config.xml format | 

### Return type

 (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_job_build**
> post_job_build(ctx, name, json, optional)


Build a job

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **name** | **String**| Name of the job | 
  **json** | **String**|  | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | 
 **json** | **String**|  | 
 **token** | **String**|  | 
 **jenkins_crumb** | **String**| CSRF protection token | 

### Return type

 (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_job_config**
> post_job_config(ctx, name, body, optional)


Update job configuration

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **name** | **String**| Name of the job | 
  **body** | **String**| Job configuration in config.xml format | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | 
 **body** | **String**| Job configuration in config.xml format | 
 **jenkins_crumb** | **String**| CSRF protection token | 

### Return type

 (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_job_delete**
> post_job_delete(ctx, name, optional)


Delete a job

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **name** | **String**| Name of the job | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | 
 **jenkins_crumb** | **String**| CSRF protection token | 

### Return type

 (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_job_disable**
> post_job_disable(ctx, name, optional)


Disable a job

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **name** | **String**| Name of the job | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | 
 **jenkins_crumb** | **String**| CSRF protection token | 

### Return type

 (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_job_enable**
> post_job_enable(ctx, name, optional)


Enable a job

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **name** | **String**| Name of the job | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | 
 **jenkins_crumb** | **String**| CSRF protection token | 

### Return type

 (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_job_last_build_stop**
> post_job_last_build_stop(ctx, name, optional)


Stop a job

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **name** | **String**| Name of the job | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | 
 **jenkins_crumb** | **String**| CSRF protection token | 

### Return type

 (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_view_config**
> post_view_config(ctx, name, body, optional)


Update view configuration

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **name** | **String**| Name of the view | 
  **body** | **String**| View configuration in config.xml format | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the view | 
 **body** | **String**| View configuration in config.xml format | 
 **jenkins_crumb** | **String**| CSRF protection token | 

### Return type

 (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

