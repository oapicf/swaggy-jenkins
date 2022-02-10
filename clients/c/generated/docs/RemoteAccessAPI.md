# RemoteAccessAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**RemoteAccessAPI_getComputer**](RemoteAccessAPI.md#RemoteAccessAPI_getComputer) | **GET** /computer/api/json | 
[**RemoteAccessAPI_getJenkins**](RemoteAccessAPI.md#RemoteAccessAPI_getJenkins) | **GET** /api/json | 
[**RemoteAccessAPI_getJob**](RemoteAccessAPI.md#RemoteAccessAPI_getJob) | **GET** /job/{name}/api/json | 
[**RemoteAccessAPI_getJobConfig**](RemoteAccessAPI.md#RemoteAccessAPI_getJobConfig) | **GET** /job/{name}/config.xml | 
[**RemoteAccessAPI_getJobLastBuild**](RemoteAccessAPI.md#RemoteAccessAPI_getJobLastBuild) | **GET** /job/{name}/lastBuild/api/json | 
[**RemoteAccessAPI_getJobProgressiveText**](RemoteAccessAPI.md#RemoteAccessAPI_getJobProgressiveText) | **GET** /job/{name}/{number}/logText/progressiveText | 
[**RemoteAccessAPI_getQueue**](RemoteAccessAPI.md#RemoteAccessAPI_getQueue) | **GET** /queue/api/json | 
[**RemoteAccessAPI_getQueueItem**](RemoteAccessAPI.md#RemoteAccessAPI_getQueueItem) | **GET** /queue/item/{number}/api/json | 
[**RemoteAccessAPI_getView**](RemoteAccessAPI.md#RemoteAccessAPI_getView) | **GET** /view/{name}/api/json | 
[**RemoteAccessAPI_getViewConfig**](RemoteAccessAPI.md#RemoteAccessAPI_getViewConfig) | **GET** /view/{name}/config.xml | 
[**RemoteAccessAPI_headJenkins**](RemoteAccessAPI.md#RemoteAccessAPI_headJenkins) | **HEAD** /api/json | 
[**RemoteAccessAPI_postCreateItem**](RemoteAccessAPI.md#RemoteAccessAPI_postCreateItem) | **POST** /createItem | 
[**RemoteAccessAPI_postCreateView**](RemoteAccessAPI.md#RemoteAccessAPI_postCreateView) | **POST** /createView | 
[**RemoteAccessAPI_postJobBuild**](RemoteAccessAPI.md#RemoteAccessAPI_postJobBuild) | **POST** /job/{name}/build | 
[**RemoteAccessAPI_postJobConfig**](RemoteAccessAPI.md#RemoteAccessAPI_postJobConfig) | **POST** /job/{name}/config.xml | 
[**RemoteAccessAPI_postJobDelete**](RemoteAccessAPI.md#RemoteAccessAPI_postJobDelete) | **POST** /job/{name}/doDelete | 
[**RemoteAccessAPI_postJobDisable**](RemoteAccessAPI.md#RemoteAccessAPI_postJobDisable) | **POST** /job/{name}/disable | 
[**RemoteAccessAPI_postJobEnable**](RemoteAccessAPI.md#RemoteAccessAPI_postJobEnable) | **POST** /job/{name}/enable | 
[**RemoteAccessAPI_postJobLastBuildStop**](RemoteAccessAPI.md#RemoteAccessAPI_postJobLastBuildStop) | **POST** /job/{name}/lastBuild/stop | 
[**RemoteAccessAPI_postViewConfig**](RemoteAccessAPI.md#RemoteAccessAPI_postViewConfig) | **POST** /view/{name}/config.xml | 


# **RemoteAccessAPI_getComputer**
```c
// Retrieve computer details
//
computer_set_t* RemoteAccessAPI_getComputer(apiClient_t *apiClient, int depth);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**depth** | **int** | Recursion depth in response model | 

### Return type

[computer_set_t](computer_set.md) *


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **RemoteAccessAPI_getJenkins**
```c
// Retrieve Jenkins details
//
hudson_t* RemoteAccessAPI_getJenkins(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[hudson_t](hudson.md) *


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **RemoteAccessAPI_getJob**
```c
// Retrieve job details
//
free_style_project_t* RemoteAccessAPI_getJob(apiClient_t *apiClient, char * name);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**name** | **char \*** | Name of the job | 

### Return type

[free_style_project_t](free_style_project.md) *


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **RemoteAccessAPI_getJobConfig**
```c
// Retrieve job configuration
//
char* RemoteAccessAPI_getJobConfig(apiClient_t *apiClient, char * name);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**name** | **char \*** | Name of the job | 

### Return type

char*



### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **RemoteAccessAPI_getJobLastBuild**
```c
// Retrieve job's last build details
//
free_style_build_t* RemoteAccessAPI_getJobLastBuild(apiClient_t *apiClient, char * name);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**name** | **char \*** | Name of the job | 

### Return type

[free_style_build_t](free_style_build.md) *


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **RemoteAccessAPI_getJobProgressiveText**
```c
// Retrieve job's build progressive text output
//
void RemoteAccessAPI_getJobProgressiveText(apiClient_t *apiClient, char * name, char * number, char * start);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**name** | **char \*** | Name of the job | 
**number** | **char \*** | Build number | 
**start** | **char \*** | Starting point of progressive text output | 

### Return type

void

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **RemoteAccessAPI_getQueue**
```c
// Retrieve queue details
//
queue_t* RemoteAccessAPI_getQueue(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[queue_t](queue.md) *


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **RemoteAccessAPI_getQueueItem**
```c
// Retrieve queued item details
//
queue_t* RemoteAccessAPI_getQueueItem(apiClient_t *apiClient, char * number);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**number** | **char \*** | Queue number | 

### Return type

[queue_t](queue.md) *


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **RemoteAccessAPI_getView**
```c
// Retrieve view details
//
list_view_t* RemoteAccessAPI_getView(apiClient_t *apiClient, char * name);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**name** | **char \*** | Name of the view | 

### Return type

[list_view_t](list_view.md) *


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **RemoteAccessAPI_getViewConfig**
```c
// Retrieve view configuration
//
char* RemoteAccessAPI_getViewConfig(apiClient_t *apiClient, char * name);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**name** | **char \*** | Name of the view | 

### Return type

char*



### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **RemoteAccessAPI_headJenkins**
```c
// Retrieve Jenkins headers
//
void RemoteAccessAPI_headJenkins(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

void

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **RemoteAccessAPI_postCreateItem**
```c
// Create a new job using job configuration, or copied from an existing job
//
void RemoteAccessAPI_postCreateItem(apiClient_t *apiClient, char * name, char * from, char * mode, char * Jenkins_Crumb, char * Content_Type, char * body);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**name** | **char \*** | Name of the new job | 
**from** | **char \*** | Existing job to copy from | [optional] 
**mode** | **char \*** | Set to &#39;copy&#39; for copying an existing job | [optional] 
**Jenkins_Crumb** | **char \*** | CSRF protection token | [optional] 
**Content_Type** | **char \*** | Content type header application/xml | [optional] 
**body** | **char \*** | Job configuration in config.xml format | [optional] 

### Return type

void

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **RemoteAccessAPI_postCreateView**
```c
// Create a new view using view configuration
//
void RemoteAccessAPI_postCreateView(apiClient_t *apiClient, char * name, char * Jenkins_Crumb, char * Content_Type, char * body);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**name** | **char \*** | Name of the new view | 
**Jenkins_Crumb** | **char \*** | CSRF protection token | [optional] 
**Content_Type** | **char \*** | Content type header application/xml | [optional] 
**body** | **char \*** | View configuration in config.xml format | [optional] 

### Return type

void

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **RemoteAccessAPI_postJobBuild**
```c
// Build a job
//
void RemoteAccessAPI_postJobBuild(apiClient_t *apiClient, char * name, char * json, char * token, char * Jenkins_Crumb);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**name** | **char \*** | Name of the job | 
**json** | **char \*** |  | 
**token** | **char \*** |  | [optional] 
**Jenkins_Crumb** | **char \*** | CSRF protection token | [optional] 

### Return type

void

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **RemoteAccessAPI_postJobConfig**
```c
// Update job configuration
//
void RemoteAccessAPI_postJobConfig(apiClient_t *apiClient, char * name, char * body, char * Jenkins_Crumb);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**name** | **char \*** | Name of the job | 
**body** | **char \*** | Job configuration in config.xml format | 
**Jenkins_Crumb** | **char \*** | CSRF protection token | [optional] 

### Return type

void

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **RemoteAccessAPI_postJobDelete**
```c
// Delete a job
//
void RemoteAccessAPI_postJobDelete(apiClient_t *apiClient, char * name, char * Jenkins_Crumb);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**name** | **char \*** | Name of the job | 
**Jenkins_Crumb** | **char \*** | CSRF protection token | [optional] 

### Return type

void

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **RemoteAccessAPI_postJobDisable**
```c
// Disable a job
//
void RemoteAccessAPI_postJobDisable(apiClient_t *apiClient, char * name, char * Jenkins_Crumb);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**name** | **char \*** | Name of the job | 
**Jenkins_Crumb** | **char \*** | CSRF protection token | [optional] 

### Return type

void

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **RemoteAccessAPI_postJobEnable**
```c
// Enable a job
//
void RemoteAccessAPI_postJobEnable(apiClient_t *apiClient, char * name, char * Jenkins_Crumb);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**name** | **char \*** | Name of the job | 
**Jenkins_Crumb** | **char \*** | CSRF protection token | [optional] 

### Return type

void

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **RemoteAccessAPI_postJobLastBuildStop**
```c
// Stop a job
//
void RemoteAccessAPI_postJobLastBuildStop(apiClient_t *apiClient, char * name, char * Jenkins_Crumb);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**name** | **char \*** | Name of the job | 
**Jenkins_Crumb** | **char \*** | CSRF protection token | [optional] 

### Return type

void

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **RemoteAccessAPI_postViewConfig**
```c
// Update view configuration
//
void RemoteAccessAPI_postViewConfig(apiClient_t *apiClient, char * name, char * body, char * Jenkins_Crumb);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**name** | **char \*** | Name of the view | 
**body** | **char \*** | View configuration in config.xml format | 
**Jenkins_Crumb** | **char \*** | CSRF protection token | [optional] 

### Return type

void

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

