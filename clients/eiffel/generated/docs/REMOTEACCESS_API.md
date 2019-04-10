# REMOTEACCESS_API

All URIs are relative to *http://localhost*

Feature | HTTP request | Description
------------- | ------------- | -------------
[**computer**](REMOTEACCESS_API.md#computer) | **Get** /computer/api/json | 
[**head_jenkins**](REMOTEACCESS_API.md#head_jenkins) | **Head** /api/json | 
[**jenkins**](REMOTEACCESS_API.md#jenkins) | **Get** /api/json | 
[**job**](REMOTEACCESS_API.md#job) | **Get** /job/{name}/api/json | 
[**job_config**](REMOTEACCESS_API.md#job_config) | **Get** /job/{name}/config.xml | 
[**job_last_build**](REMOTEACCESS_API.md#job_last_build) | **Get** /job/{name}/lastBuild/api/json | 
[**job_progressive_text**](REMOTEACCESS_API.md#job_progressive_text) | **Get** /job/{name}/{number}/logText/progressiveText | 
[**post_create_item**](REMOTEACCESS_API.md#post_create_item) | **Post** /createItem | 
[**post_create_view**](REMOTEACCESS_API.md#post_create_view) | **Post** /createView | 
[**post_job_build**](REMOTEACCESS_API.md#post_job_build) | **Post** /job/{name}/build | 
[**post_job_config**](REMOTEACCESS_API.md#post_job_config) | **Post** /job/{name}/config.xml | 
[**post_job_delete**](REMOTEACCESS_API.md#post_job_delete) | **Post** /job/{name}/doDelete | 
[**post_job_disable**](REMOTEACCESS_API.md#post_job_disable) | **Post** /job/{name}/disable | 
[**post_job_enable**](REMOTEACCESS_API.md#post_job_enable) | **Post** /job/{name}/enable | 
[**post_job_last_build_stop**](REMOTEACCESS_API.md#post_job_last_build_stop) | **Post** /job/{name}/lastBuild/stop | 
[**post_view_config**](REMOTEACCESS_API.md#post_view_config) | **Post** /view/{name}/config.xml | 
[**queue**](REMOTEACCESS_API.md#queue) | **Get** /queue/api/json | 
[**queue_item**](REMOTEACCESS_API.md#queue_item) | **Get** /queue/item/{number}/api/json | 
[**view**](REMOTEACCESS_API.md#view) | **Get** /view/{name}/api/json | 
[**view_config**](REMOTEACCESS_API.md#view_config) | **Get** /view/{name}/config.xml | 


# **computer**
> computer (depth: INTEGER_32 ): detachable COMPUTER_SET
	



Retrieve computer details


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **depth** | **INTEGER_32**| Recursion depth in response model | 

### Return type

[**COMPUTER_SET**](ComputerSet.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **head_jenkins**
> head_jenkins 
	



Retrieve Jenkins headers


### Parameters
This endpoint does not need any parameter.

### Return type

{empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **jenkins**
> jenkins : detachable HUDSON
	



Retrieve Jenkins details


### Parameters
This endpoint does not need any parameter.

### Return type

[**HUDSON**](Hudson.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **job**
> job (name: STRING_32 ): detachable FREE_STYLE_PROJECT
	



Retrieve job details


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **STRING_32**| Name of the job | 

### Return type

[**FREE_STYLE_PROJECT**](FreeStyleProject.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **job_config**
> job_config (name: STRING_32 ): detachable STRING_32
	



Retrieve job configuration


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **STRING_32**| Name of the job | 

### Return type

[**STRING_32**](STRING_32.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **job_last_build**
> job_last_build (name: STRING_32 ): detachable FREE_STYLE_BUILD
	



Retrieve job's last build details


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **STRING_32**| Name of the job | 

### Return type

[**FREE_STYLE_BUILD**](FreeStyleBuild.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **job_progressive_text**
> job_progressive_text (name: STRING_32 ; number: STRING_32 ; start: STRING_32 )
	



Retrieve job's build progressive text output


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **STRING_32**| Name of the job | 
 **number** | **STRING_32**| Build number | 
 **start** | **STRING_32**| Starting point of progressive text output | 

### Return type

{empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_create_item**
> post_create_item (name: STRING_32 ; var_from:  detachable STRING_32 ; mode:  detachable STRING_32 ; jenkins__crumb:  detachable STRING_32 ; content__type:  detachable STRING_32 ; body:  detachable STRING_32 )
	



Create a new job using job configuration, or copied from an existing job


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **STRING_32**| Name of the new job | 
 **var_from** | **STRING_32**| Existing job to copy from | [optional] 
 **mode** | **STRING_32**| Set to &#39;copy&#39; for copying an existing job | [optional] 
 **jenkins__crumb** | **STRING_32**| CSRF protection token | [optional] 
 **content__type** | **STRING_32**| Content type header application/xml | [optional] 
 **body** | **STRING_32**| Job configuration in config.xml format | [optional] 

### Return type

{empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_create_view**
> post_create_view (name: STRING_32 ; jenkins__crumb:  detachable STRING_32 ; content__type:  detachable STRING_32 ; body:  detachable STRING_32 )
	



Create a new view using view configuration


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **STRING_32**| Name of the new view | 
 **jenkins__crumb** | **STRING_32**| CSRF protection token | [optional] 
 **content__type** | **STRING_32**| Content type header application/xml | [optional] 
 **body** | **STRING_32**| View configuration in config.xml format | [optional] 

### Return type

{empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_job_build**
> post_job_build (name: STRING_32 ; json: STRING_32 ; token:  detachable STRING_32 ; jenkins__crumb:  detachable STRING_32 )
	



Build a job


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **STRING_32**| Name of the job | 
 **json** | **STRING_32**|  | 
 **token** | **STRING_32**|  | [optional] 
 **jenkins__crumb** | **STRING_32**| CSRF protection token | [optional] 

### Return type

{empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_job_config**
> post_job_config (name: STRING_32 ; body: STRING_32 ; jenkins__crumb:  detachable STRING_32 )
	



Update job configuration


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **STRING_32**| Name of the job | 
 **body** | **STRING_32**| Job configuration in config.xml format | 
 **jenkins__crumb** | **STRING_32**| CSRF protection token | [optional] 

### Return type

{empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_job_delete**
> post_job_delete (name: STRING_32 ; jenkins__crumb:  detachable STRING_32 )
	



Delete a job


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **STRING_32**| Name of the job | 
 **jenkins__crumb** | **STRING_32**| CSRF protection token | [optional] 

### Return type

{empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_job_disable**
> post_job_disable (name: STRING_32 ; jenkins__crumb:  detachable STRING_32 )
	



Disable a job


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **STRING_32**| Name of the job | 
 **jenkins__crumb** | **STRING_32**| CSRF protection token | [optional] 

### Return type

{empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_job_enable**
> post_job_enable (name: STRING_32 ; jenkins__crumb:  detachable STRING_32 )
	



Enable a job


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **STRING_32**| Name of the job | 
 **jenkins__crumb** | **STRING_32**| CSRF protection token | [optional] 

### Return type

{empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_job_last_build_stop**
> post_job_last_build_stop (name: STRING_32 ; jenkins__crumb:  detachable STRING_32 )
	



Stop a job


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **STRING_32**| Name of the job | 
 **jenkins__crumb** | **STRING_32**| CSRF protection token | [optional] 

### Return type

{empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_view_config**
> post_view_config (name: STRING_32 ; body: STRING_32 ; jenkins__crumb:  detachable STRING_32 )
	



Update view configuration


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **STRING_32**| Name of the view | 
 **body** | **STRING_32**| View configuration in config.xml format | 
 **jenkins__crumb** | **STRING_32**| CSRF protection token | [optional] 

### Return type

{empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queue**
> queue : detachable QUEUE
	



Retrieve queue details


### Parameters
This endpoint does not need any parameter.

### Return type

[**QUEUE**](Queue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queue_item**
> queue_item (number: STRING_32 ): detachable QUEUE
	



Retrieve queued item details


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **STRING_32**| Queue number | 

### Return type

[**QUEUE**](Queue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **view**
> view (name: STRING_32 ): detachable LIST_VIEW
	



Retrieve view details


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **STRING_32**| Name of the view | 

### Return type

[**LIST_VIEW**](ListView.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **view_config**
> view_config (name: STRING_32 ): detachable STRING_32
	



Retrieve view configuration


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **STRING_32**| Name of the view | 

### Return type

[**STRING_32**](STRING_32.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

