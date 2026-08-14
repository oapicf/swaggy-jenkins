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



## getComputer

> ComputerSet getComputer(depth)



Retrieve computer details

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **depth** | **Integer**| Recursion depth in response model | |

### Return type

[**ComputerSet**](ComputerSet.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved computer details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## getJenkins

> Hudson getJenkins()



Retrieve Jenkins details

### Parameters

This endpoint does not need any parameter.

### Return type

[**Hudson**](Hudson.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved Jenkins details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## getJob

> FreeStyleProject getJob(name)



Retrieve job details

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | **String**| Name of the job | |

### Return type

[**FreeStyleProject**](FreeStyleProject.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved job details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Job cannot be found on Jenkins instance |  -  |


## getJobConfig

> String getJobConfig(name)



Retrieve job configuration

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | **String**| Name of the job | |

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/xml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved job configuration in config.xml format |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Job cannot be found on Jenkins instance |  -  |


## getJobLastBuild

> FreeStyleBuild getJobLastBuild(name)



Retrieve job&#39;s last build details

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | **String**| Name of the job | |

### Return type

[**FreeStyleBuild**](FreeStyleBuild.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved job&#39;s last build details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Job cannot be found on Jenkins instance |  -  |


## getJobProgressiveText

> void getJobProgressiveText(name, number, start)



Retrieve job&#39;s build progressive text output

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | **String**| Name of the job | |
| **number** | **String**| Build number | |
| **start** | **String**| Starting point of progressive text output | |

### Return type

[**void**](Void.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved job&#39;s build progressive text output |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Job cannot be found on Jenkins instance |  -  |


## getQueue

> Queue getQueue()



Retrieve queue details

### Parameters

This endpoint does not need any parameter.

### Return type

[**Queue**](Queue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved queue details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## getQueueItem

> Queue getQueueItem(number)



Retrieve queued item details

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **number** | **String**| Queue number | |

### Return type

[**Queue**](Queue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved queued item details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## getView

> ListView getView(name)



Retrieve view details

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | **String**| Name of the view | |

### Return type

[**ListView**](ListView.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved view details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | View cannot be found on Jenkins instance |  -  |


## getViewConfig

> String getViewConfig(name)



Retrieve view configuration

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | **String**| Name of the view | |

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/xml


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved view configuration in config.xml format |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | View cannot be found on Jenkins instance |  -  |


## headJenkins

> void headJenkins()



Retrieve Jenkins headers

### Parameters

This endpoint does not need any parameter.

### Return type

[**void**](Void.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved Jenkins headers |  * x-jenkins - Jenkins version number <br>  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## postCreateItem

> void postCreateItem(name, from, mode, jenkinsCrumb, contentType, body)



Create a new job using job configuration, or copied from an existing job

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | **String**| Name of the new job | |
| **from** | **String**| Existing job to copy from | [optional] |
| **mode** | **String**| Set to &#39;copy&#39; for copying an existing job | [optional] |
| **jenkinsCrumb** | **String**| CSRF protection token | [optional] |
| **contentType** | **String**| Content type header application/xml | [optional] |
| **body** | **String**| Job configuration in config.xml format | [optional] |

### Return type

[**void**](Void.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully created a new job |  -  |
| **400** | An error has occurred - error message is embedded inside the HTML response |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## postCreateView

> void postCreateView(name, jenkinsCrumb, contentType, body)



Create a new view using view configuration

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | **String**| Name of the new view | |
| **jenkinsCrumb** | **String**| CSRF protection token | [optional] |
| **contentType** | **String**| Content type header application/xml | [optional] |
| **body** | **String**| View configuration in config.xml format | [optional] |

### Return type

[**void**](Void.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully created the view |  -  |
| **400** | An error has occurred - error message is embedded inside the HTML response |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## postJobBuild

> void postJobBuild(name, json, token, jenkinsCrumb)



Build a job

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | **String**| Name of the job | |
| **json** | **String**|  | |
| **token** | **String**|  | [optional] |
| **jenkinsCrumb** | **String**| CSRF protection token | [optional] |

### Return type

[**void**](Void.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully built the job (backward compatibility for older versions of Jenkins) |  -  |
| **201** | Successfully built the job |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Job cannot be found on Jenkins instance |  -  |


## postJobConfig

> void postJobConfig(name, body, jenkinsCrumb)



Update job configuration

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | **String**| Name of the job | |
| **body** | **String**| Job configuration in config.xml format | |
| **jenkinsCrumb** | **String**| CSRF protection token | [optional] |

### Return type

[**void**](Void.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved job configuration in config.xml format |  -  |
| **400** | An error has occurred - error message is embedded inside the HTML response |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Job cannot be found on Jenkins instance |  -  |


## postJobDelete

> void postJobDelete(name, jenkinsCrumb)



Delete a job

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | **String**| Name of the job | |
| **jenkinsCrumb** | **String**| CSRF protection token | [optional] |

### Return type

[**void**](Void.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully deleted the job |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Job cannot be found on Jenkins instance |  -  |


## postJobDisable

> void postJobDisable(name, jenkinsCrumb)



Disable a job

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | **String**| Name of the job | |
| **jenkinsCrumb** | **String**| CSRF protection token | [optional] |

### Return type

[**void**](Void.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully disabled the job |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Job cannot be found on Jenkins instance |  -  |


## postJobEnable

> void postJobEnable(name, jenkinsCrumb)



Enable a job

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | **String**| Name of the job | |
| **jenkinsCrumb** | **String**| CSRF protection token | [optional] |

### Return type

[**void**](Void.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully enabled the job |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Job cannot be found on Jenkins instance |  -  |


## postJobLastBuildStop

> void postJobLastBuildStop(name, jenkinsCrumb)



Stop a job

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | **String**| Name of the job | |
| **jenkinsCrumb** | **String**| CSRF protection token | [optional] |

### Return type

[**void**](Void.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully stopped the job |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Job cannot be found on Jenkins instance |  -  |


## postViewConfig

> void postViewConfig(name, body, jenkinsCrumb)



Update view configuration

### Parameters


| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | **String**| Name of the view | |
| **body** | **String**| View configuration in config.xml format | |
| **jenkinsCrumb** | **String**| CSRF protection token | [optional] |

### Return type

[**void**](Void.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully updated view configuration |  -  |
| **400** | An error has occurred - error message is embedded inside the HTML response |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | View cannot be found on Jenkins instance |  -  |

