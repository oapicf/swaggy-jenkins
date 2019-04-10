# \RemoteAccessApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetComputer**](RemoteAccessApi.md#GetComputer) | **Get** /computer/api/json | 
[**GetJenkins**](RemoteAccessApi.md#GetJenkins) | **Get** /api/json | 
[**GetJob**](RemoteAccessApi.md#GetJob) | **Get** /job/{name}/api/json | 
[**GetJobConfig**](RemoteAccessApi.md#GetJobConfig) | **Get** /job/{name}/config.xml | 
[**GetJobLastBuild**](RemoteAccessApi.md#GetJobLastBuild) | **Get** /job/{name}/lastBuild/api/json | 
[**GetJobProgressiveText**](RemoteAccessApi.md#GetJobProgressiveText) | **Get** /job/{name}/{number}/logText/progressiveText | 
[**GetQueue**](RemoteAccessApi.md#GetQueue) | **Get** /queue/api/json | 
[**GetQueueItem**](RemoteAccessApi.md#GetQueueItem) | **Get** /queue/item/{number}/api/json | 
[**GetView**](RemoteAccessApi.md#GetView) | **Get** /view/{name}/api/json | 
[**GetViewConfig**](RemoteAccessApi.md#GetViewConfig) | **Get** /view/{name}/config.xml | 
[**HeadJenkins**](RemoteAccessApi.md#HeadJenkins) | **Head** /api/json | 
[**PostCreateItem**](RemoteAccessApi.md#PostCreateItem) | **Post** /createItem | 
[**PostCreateView**](RemoteAccessApi.md#PostCreateView) | **Post** /createView | 
[**PostJobBuild**](RemoteAccessApi.md#PostJobBuild) | **Post** /job/{name}/build | 
[**PostJobConfig**](RemoteAccessApi.md#PostJobConfig) | **Post** /job/{name}/config.xml | 
[**PostJobDelete**](RemoteAccessApi.md#PostJobDelete) | **Post** /job/{name}/doDelete | 
[**PostJobDisable**](RemoteAccessApi.md#PostJobDisable) | **Post** /job/{name}/disable | 
[**PostJobEnable**](RemoteAccessApi.md#PostJobEnable) | **Post** /job/{name}/enable | 
[**PostJobLastBuildStop**](RemoteAccessApi.md#PostJobLastBuildStop) | **Post** /job/{name}/lastBuild/stop | 
[**PostViewConfig**](RemoteAccessApi.md#PostViewConfig) | **Post** /view/{name}/config.xml | 


# **GetComputer**
> ComputerSet GetComputer(ctx, depth)


Retrieve computer details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **depth** | **int32**| Recursion depth in response model | 

### Return type

[**ComputerSet**](ComputerSet.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetJenkins**
> Hudson GetJenkins(ctx, )


Retrieve Jenkins details

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**Hudson**](Hudson.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetJob**
> FreeStyleProject GetJob(ctx, name)


Retrieve job details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **name** | **string**| Name of the job | 

### Return type

[**FreeStyleProject**](FreeStyleProject.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetJobConfig**
> string GetJobConfig(ctx, name)


Retrieve job configuration

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **name** | **string**| Name of the job | 

### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetJobLastBuild**
> FreeStyleBuild GetJobLastBuild(ctx, name)


Retrieve job's last build details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **name** | **string**| Name of the job | 

### Return type

[**FreeStyleBuild**](FreeStyleBuild.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetJobProgressiveText**
> GetJobProgressiveText(ctx, name, number, start)


Retrieve job's build progressive text output

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **name** | **string**| Name of the job | 
  **number** | **string**| Build number | 
  **start** | **string**| Starting point of progressive text output | 

### Return type

 (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetQueue**
> Queue GetQueue(ctx, )


Retrieve queue details

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**Queue**](Queue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetQueueItem**
> Queue GetQueueItem(ctx, number)


Retrieve queued item details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **number** | **string**| Queue number | 

### Return type

[**Queue**](Queue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetView**
> ListView GetView(ctx, name)


Retrieve view details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **name** | **string**| Name of the view | 

### Return type

[**ListView**](ListView.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetViewConfig**
> string GetViewConfig(ctx, name)


Retrieve view configuration

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **name** | **string**| Name of the view | 

### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **HeadJenkins**
> HeadJenkins(ctx, )


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

# **PostCreateItem**
> PostCreateItem(ctx, name, optional)


Create a new job using job configuration, or copied from an existing job

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **name** | **string**| Name of the new job | 
 **optional** | ***PostCreateItemOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a PostCreateItemOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **from** | **optional.String**| Existing job to copy from | 
 **mode** | **optional.String**| Set to &#39;copy&#39; for copying an existing job | 
 **jenkinsCrumb** | **optional.String**| CSRF protection token | 
 **contentType** | **optional.String**| Content type header application/xml | 
 **body** | **optional.String**| Job configuration in config.xml format | 

### Return type

 (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PostCreateView**
> PostCreateView(ctx, name, optional)


Create a new view using view configuration

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **name** | **string**| Name of the new view | 
 **optional** | ***PostCreateViewOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a PostCreateViewOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **jenkinsCrumb** | **optional.String**| CSRF protection token | 
 **contentType** | **optional.String**| Content type header application/xml | 
 **body** | **optional.String**| View configuration in config.xml format | 

### Return type

 (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PostJobBuild**
> PostJobBuild(ctx, name, json, optional)


Build a job

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **name** | **string**| Name of the job | 
  **json** | **string**|  | 
 **optional** | ***PostJobBuildOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a PostJobBuildOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **token** | **optional.String**|  | 
 **jenkinsCrumb** | **optional.String**| CSRF protection token | 

### Return type

 (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PostJobConfig**
> PostJobConfig(ctx, name, body, optional)


Update job configuration

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **name** | **string**| Name of the job | 
  **body** | **string**| Job configuration in config.xml format | 
 **optional** | ***PostJobConfigOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a PostJobConfigOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **jenkinsCrumb** | **optional.String**| CSRF protection token | 

### Return type

 (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PostJobDelete**
> PostJobDelete(ctx, name, optional)


Delete a job

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **name** | **string**| Name of the job | 
 **optional** | ***PostJobDeleteOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a PostJobDeleteOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **jenkinsCrumb** | **optional.String**| CSRF protection token | 

### Return type

 (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PostJobDisable**
> PostJobDisable(ctx, name, optional)


Disable a job

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **name** | **string**| Name of the job | 
 **optional** | ***PostJobDisableOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a PostJobDisableOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **jenkinsCrumb** | **optional.String**| CSRF protection token | 

### Return type

 (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PostJobEnable**
> PostJobEnable(ctx, name, optional)


Enable a job

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **name** | **string**| Name of the job | 
 **optional** | ***PostJobEnableOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a PostJobEnableOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **jenkinsCrumb** | **optional.String**| CSRF protection token | 

### Return type

 (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PostJobLastBuildStop**
> PostJobLastBuildStop(ctx, name, optional)


Stop a job

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **name** | **string**| Name of the job | 
 **optional** | ***PostJobLastBuildStopOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a PostJobLastBuildStopOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **jenkinsCrumb** | **optional.String**| CSRF protection token | 

### Return type

 (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PostViewConfig**
> PostViewConfig(ctx, name, body, optional)


Update view configuration

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
  **name** | **string**| Name of the view | 
  **body** | **string**| View configuration in config.xml format | 
 **optional** | ***PostViewConfigOpts** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a pointer to a PostViewConfigOpts struct

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **jenkinsCrumb** | **optional.String**| CSRF protection token | 

### Return type

 (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

