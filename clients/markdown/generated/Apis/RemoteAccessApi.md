# RemoteAccessApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**getComputer**](RemoteAccessApi.md#getComputer) | **GET** /computer/api/json |  |
| [**getJenkins**](RemoteAccessApi.md#getJenkins) | **GET** /api/json |  |
| [**getJob**](RemoteAccessApi.md#getJob) | **GET** /job/{name}/api/json |  |
| [**getJobConfig**](RemoteAccessApi.md#getJobConfig) | **GET** /job/{name}/config.xml |  |
| [**getJobLastBuild**](RemoteAccessApi.md#getJobLastBuild) | **GET** /job/{name}/lastBuild/api/json |  |
| [**getJobProgressiveText**](RemoteAccessApi.md#getJobProgressiveText) | **GET** /job/{name}/{number}/logText/progressiveText |  |
| [**getQueue**](RemoteAccessApi.md#getQueue) | **GET** /queue/api/json |  |
| [**getQueueItem**](RemoteAccessApi.md#getQueueItem) | **GET** /queue/item/{number}/api/json |  |
| [**getView**](RemoteAccessApi.md#getView) | **GET** /view/{name}/api/json |  |
| [**getViewConfig**](RemoteAccessApi.md#getViewConfig) | **GET** /view/{name}/config.xml |  |
| [**headJenkins**](RemoteAccessApi.md#headJenkins) | **HEAD** /api/json |  |
| [**postCreateItem**](RemoteAccessApi.md#postCreateItem) | **POST** /createItem |  |
| [**postCreateView**](RemoteAccessApi.md#postCreateView) | **POST** /createView |  |
| [**postJobBuild**](RemoteAccessApi.md#postJobBuild) | **POST** /job/{name}/build |  |
| [**postJobConfig**](RemoteAccessApi.md#postJobConfig) | **POST** /job/{name}/config.xml |  |
| [**postJobDelete**](RemoteAccessApi.md#postJobDelete) | **POST** /job/{name}/doDelete |  |
| [**postJobDisable**](RemoteAccessApi.md#postJobDisable) | **POST** /job/{name}/disable |  |
| [**postJobEnable**](RemoteAccessApi.md#postJobEnable) | **POST** /job/{name}/enable |  |
| [**postJobLastBuildStop**](RemoteAccessApi.md#postJobLastBuildStop) | **POST** /job/{name}/lastBuild/stop |  |
| [**postViewConfig**](RemoteAccessApi.md#postViewConfig) | **POST** /view/{name}/config.xml |  |


<a name="getComputer"></a>
# **getComputer**
> ComputerSet getComputer(depth)



    Retrieve computer details

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **depth** | **Integer**| Recursion depth in response model | [default to null] |

### Return type

[**ComputerSet**](../Models/ComputerSet.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getJenkins"></a>
# **getJenkins**
> Hudson getJenkins()



    Retrieve Jenkins details

### Parameters
This endpoint does not need any parameter.

### Return type

[**Hudson**](../Models/Hudson.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getJob"></a>
# **getJob**
> FreeStyleProject getJob(name)



    Retrieve job details

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | **String**| Name of the job | [default to null] |

### Return type

[**FreeStyleProject**](../Models/FreeStyleProject.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getJobConfig"></a>
# **getJobConfig**
> String getJobConfig(name)



    Retrieve job configuration

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | **String**| Name of the job | [default to null] |

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/xml

<a name="getJobLastBuild"></a>
# **getJobLastBuild**
> FreeStyleBuild getJobLastBuild(name)



    Retrieve job&#39;s last build details

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | **String**| Name of the job | [default to null] |

### Return type

[**FreeStyleBuild**](../Models/FreeStyleBuild.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getJobProgressiveText"></a>
# **getJobProgressiveText**
> getJobProgressiveText(name, number, start)



    Retrieve job&#39;s build progressive text output

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | **String**| Name of the job | [default to null] |
| **number** | **String**| Build number | [default to null] |
| **start** | **String**| Starting point of progressive text output | [default to null] |

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="getQueue"></a>
# **getQueue**
> Queue getQueue()



    Retrieve queue details

### Parameters
This endpoint does not need any parameter.

### Return type

[**Queue**](../Models/Queue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getQueueItem"></a>
# **getQueueItem**
> Queue getQueueItem(number)



    Retrieve queued item details

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **number** | **String**| Queue number | [default to null] |

### Return type

[**Queue**](../Models/Queue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getView"></a>
# **getView**
> ListView getView(name)



    Retrieve view details

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | **String**| Name of the view | [default to null] |

### Return type

[**ListView**](../Models/ListView.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getViewConfig"></a>
# **getViewConfig**
> String getViewConfig(name)



    Retrieve view configuration

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | **String**| Name of the view | [default to null] |

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/xml

<a name="headJenkins"></a>
# **headJenkins**
> headJenkins()



    Retrieve Jenkins headers

### Parameters
This endpoint does not need any parameter.

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="postCreateItem"></a>
# **postCreateItem**
> postCreateItem(name, from, mode, Jenkins-Crumb, Content-Type, body)



    Create a new job using job configuration, or copied from an existing job

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | **String**| Name of the new job | [default to null] |
| **from** | **String**| Existing job to copy from | [optional] [default to null] |
| **mode** | **String**| Set to &#39;copy&#39; for copying an existing job | [optional] [default to null] |
| **Jenkins-Crumb** | **String**| CSRF protection token | [optional] [default to null] |
| **Content-Type** | **String**| Content type header application/xml | [optional] [default to null] |
| **body** | **String**| Job configuration in config.xml format | [optional] |

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

<a name="postCreateView"></a>
# **postCreateView**
> postCreateView(name, Jenkins-Crumb, Content-Type, body)



    Create a new view using view configuration

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | **String**| Name of the new view | [default to null] |
| **Jenkins-Crumb** | **String**| CSRF protection token | [optional] [default to null] |
| **Content-Type** | **String**| Content type header application/xml | [optional] [default to null] |
| **body** | **String**| View configuration in config.xml format | [optional] |

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

<a name="postJobBuild"></a>
# **postJobBuild**
> postJobBuild(name, json, token, Jenkins-Crumb)



    Build a job

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | **String**| Name of the job | [default to null] |
| **json** | **String**|  | [default to null] |
| **token** | **String**|  | [optional] [default to null] |
| **Jenkins-Crumb** | **String**| CSRF protection token | [optional] [default to null] |

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="postJobConfig"></a>
# **postJobConfig**
> postJobConfig(name, body, Jenkins-Crumb)



    Update job configuration

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | **String**| Name of the job | [default to null] |
| **body** | **String**| Job configuration in config.xml format | |
| **Jenkins-Crumb** | **String**| CSRF protection token | [optional] [default to null] |

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

<a name="postJobDelete"></a>
# **postJobDelete**
> postJobDelete(name, Jenkins-Crumb)



    Delete a job

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | **String**| Name of the job | [default to null] |
| **Jenkins-Crumb** | **String**| CSRF protection token | [optional] [default to null] |

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="postJobDisable"></a>
# **postJobDisable**
> postJobDisable(name, Jenkins-Crumb)



    Disable a job

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | **String**| Name of the job | [default to null] |
| **Jenkins-Crumb** | **String**| CSRF protection token | [optional] [default to null] |

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="postJobEnable"></a>
# **postJobEnable**
> postJobEnable(name, Jenkins-Crumb)



    Enable a job

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | **String**| Name of the job | [default to null] |
| **Jenkins-Crumb** | **String**| CSRF protection token | [optional] [default to null] |

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="postJobLastBuildStop"></a>
# **postJobLastBuildStop**
> postJobLastBuildStop(name, Jenkins-Crumb)



    Stop a job

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | **String**| Name of the job | [default to null] |
| **Jenkins-Crumb** | **String**| CSRF protection token | [optional] [default to null] |

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="postViewConfig"></a>
# **postViewConfig**
> postViewConfig(name, body, Jenkins-Crumb)



    Update view configuration

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | **String**| Name of the view | [default to null] |
| **body** | **String**| View configuration in config.xml format | |
| **Jenkins-Crumb** | **String**| CSRF protection token | [optional] [default to null] |

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

