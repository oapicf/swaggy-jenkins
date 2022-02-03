# remote_access_api

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
**getComputer**](remote_access_api.md#getComputer) | **GET** /computer/api/json | 
**getJenkins**](remote_access_api.md#getJenkins) | **GET** /api/json | 
**getJob**](remote_access_api.md#getJob) | **GET** /job/{name}/api/json | 
**getJobConfig**](remote_access_api.md#getJobConfig) | **GET** /job/{name}/config.xml | 
**getJobLastBuild**](remote_access_api.md#getJobLastBuild) | **GET** /job/{name}/lastBuild/api/json | 
**getJobProgressiveText**](remote_access_api.md#getJobProgressiveText) | **GET** /job/{name}/{number}/logText/progressiveText | 
**getQueue**](remote_access_api.md#getQueue) | **GET** /queue/api/json | 
**getQueueItem**](remote_access_api.md#getQueueItem) | **GET** /queue/item/{number}/api/json | 
**getView**](remote_access_api.md#getView) | **GET** /view/{name}/api/json | 
**getViewConfig**](remote_access_api.md#getViewConfig) | **GET** /view/{name}/config.xml | 
**headJenkins**](remote_access_api.md#headJenkins) | **HEAD** /api/json | 
**postCreateItem**](remote_access_api.md#postCreateItem) | **POST** /createItem | 
**postCreateView**](remote_access_api.md#postCreateView) | **POST** /createView | 
**postJobBuild**](remote_access_api.md#postJobBuild) | **POST** /job/{name}/build | 
**postJobConfig**](remote_access_api.md#postJobConfig) | **POST** /job/{name}/config.xml | 
**postJobDelete**](remote_access_api.md#postJobDelete) | **POST** /job/{name}/doDelete | 
**postJobDisable**](remote_access_api.md#postJobDisable) | **POST** /job/{name}/disable | 
**postJobEnable**](remote_access_api.md#postJobEnable) | **POST** /job/{name}/enable | 
**postJobLastBuildStop**](remote_access_api.md#postJobLastBuildStop) | **POST** /job/{name}/lastBuild/stop | 
**postViewConfig**](remote_access_api.md#postViewConfig) | **POST** /view/{name}/config.xml | 


# **getComputer**
> models::ComputerSet getComputer(ctx, depth)


Retrieve computer details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **depth** | **i32**| Recursion depth in response model | 

### Return type

[**models::ComputerSet**](ComputerSet.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJenkins**
> models::Hudson getJenkins(ctx, )


Retrieve Jenkins details

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**models::Hudson**](Hudson.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJob**
> models::FreeStyleProject getJob(ctx, name)


Retrieve job details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **name** | **String**| Name of the job | 

### Return type

[**models::FreeStyleProject**](FreeStyleProject.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobConfig**
> String getJobConfig(ctx, name)


Retrieve job configuration

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **name** | **String**| Name of the job | 

### Return type

[**String**](string.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobLastBuild**
> models::FreeStyleBuild getJobLastBuild(ctx, name)


Retrieve job's last build details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **name** | **String**| Name of the job | 

### Return type

[**models::FreeStyleBuild**](FreeStyleBuild.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJobProgressiveText**
> getJobProgressiveText(ctx, name, number, start)


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

# **getQueue**
> models::Queue getQueue(ctx, )


Retrieve queue details

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**models::Queue**](Queue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQueueItem**
> models::Queue getQueueItem(ctx, number)


Retrieve queued item details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **number** | **String**| Queue number | 

### Return type

[**models::Queue**](Queue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getView**
> models::ListView getView(ctx, name)


Retrieve view details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **name** | **String**| Name of the view | 

### Return type

[**models::ListView**](ListView.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getViewConfig**
> String getViewConfig(ctx, name)


Retrieve view configuration

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **name** | **String**| Name of the view | 

### Return type

[**String**](string.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **headJenkins**
> headJenkins(ctx, )


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

# **postCreateItem**
> postCreateItem(ctx, name, optional)


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
 **mode** | **String**| Set to 'copy' for copying an existing job | 
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

# **postCreateView**
> postCreateView(ctx, name, optional)


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

# **postJobBuild**
> postJobBuild(ctx, name, json, optional)


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

# **postJobConfig**
> postJobConfig(ctx, name, body, optional)


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

# **postJobDelete**
> postJobDelete(ctx, name, optional)


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

# **postJobDisable**
> postJobDisable(ctx, name, optional)


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

# **postJobEnable**
> postJobEnable(ctx, name, optional)


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

# **postJobLastBuildStop**
> postJobLastBuildStop(ctx, name, optional)


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

# **postViewConfig**
> postViewConfig(ctx, name, body, optional)


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

