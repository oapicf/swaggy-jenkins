# RemoteAccessApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getComputer**](RemoteAccessApi.md#getComputer) | **GET** /computer/api/json | 
[**getJenkins**](RemoteAccessApi.md#getJenkins) | **GET** /api/json | 
[**getJob**](RemoteAccessApi.md#getJob) | **GET** /job/{name}/api/json | 
[**getJobConfig**](RemoteAccessApi.md#getJobConfig) | **GET** /job/{name}/config.xml | 
[**getJobLastBuild**](RemoteAccessApi.md#getJobLastBuild) | **GET** /job/{name}/lastBuild/api/json | 
[**getJobProgressiveText**](RemoteAccessApi.md#getJobProgressiveText) | **GET** /job/{name}/{number}/logText/progressiveText | 
[**getQueue**](RemoteAccessApi.md#getQueue) | **GET** /queue/api/json | 
[**getQueueItem**](RemoteAccessApi.md#getQueueItem) | **GET** /queue/item/{number}/api/json | 
[**getView**](RemoteAccessApi.md#getView) | **GET** /view/{name}/api/json | 
[**getViewConfig**](RemoteAccessApi.md#getViewConfig) | **GET** /view/{name}/config.xml | 
[**headJenkins**](RemoteAccessApi.md#headJenkins) | **HEAD** /api/json | 
[**postCreateItem**](RemoteAccessApi.md#postCreateItem) | **POST** /createItem | 
[**postCreateView**](RemoteAccessApi.md#postCreateView) | **POST** /createView | 
[**postJobBuild**](RemoteAccessApi.md#postJobBuild) | **POST** /job/{name}/build | 
[**postJobConfig**](RemoteAccessApi.md#postJobConfig) | **POST** /job/{name}/config.xml | 
[**postJobDelete**](RemoteAccessApi.md#postJobDelete) | **POST** /job/{name}/doDelete | 
[**postJobDisable**](RemoteAccessApi.md#postJobDisable) | **POST** /job/{name}/disable | 
[**postJobEnable**](RemoteAccessApi.md#postJobEnable) | **POST** /job/{name}/enable | 
[**postJobLastBuildStop**](RemoteAccessApi.md#postJobLastBuildStop) | **POST** /job/{name}/lastBuild/stop | 
[**postViewConfig**](RemoteAccessApi.md#postViewConfig) | **POST** /view/{name}/config.xml | 



## getComputer

> ComputerSet getComputer(depth)



Retrieve computer details

### Example

```java
// Import classes:
//import org.openapitools.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
Integer depth = null; // Integer | Recursion depth in response model
try {
    ComputerSet result = apiInstance.getComputer(depth);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling RemoteAccessApi#getComputer");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **depth** | **Integer**| Recursion depth in response model | [default to null]

### Return type

[**ComputerSet**](ComputerSet.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getJenkins

> Hudson getJenkins()



Retrieve Jenkins details

### Example

```java
// Import classes:
//import org.openapitools.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
try {
    Hudson result = apiInstance.getJenkins();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling RemoteAccessApi#getJenkins");
    e.printStackTrace();
}
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


## getJob

> FreeStyleProject getJob(name)



Retrieve job details

### Example

```java
// Import classes:
//import org.openapitools.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
String name = null; // String | Name of the job
try {
    FreeStyleProject result = apiInstance.getJob(name);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling RemoteAccessApi#getJob");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | [default to null]

### Return type

[**FreeStyleProject**](FreeStyleProject.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getJobConfig

> String getJobConfig(name)



Retrieve job configuration

### Example

```java
// Import classes:
//import org.openapitools.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
String name = null; // String | Name of the job
try {
    String result = apiInstance.getJobConfig(name);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling RemoteAccessApi#getJobConfig");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | [default to null]

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/xml


## getJobLastBuild

> FreeStyleBuild getJobLastBuild(name)



Retrieve job&#39;s last build details

### Example

```java
// Import classes:
//import org.openapitools.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
String name = null; // String | Name of the job
try {
    FreeStyleBuild result = apiInstance.getJobLastBuild(name);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling RemoteAccessApi#getJobLastBuild");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | [default to null]

### Return type

[**FreeStyleBuild**](FreeStyleBuild.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getJobProgressiveText

> getJobProgressiveText(name, number, start)



Retrieve job&#39;s build progressive text output

### Example

```java
// Import classes:
//import org.openapitools.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
String name = null; // String | Name of the job
String number = null; // String | Build number
String start = null; // String | Starting point of progressive text output
try {
    apiInstance.getJobProgressiveText(name, number, start);
} catch (ApiException e) {
    System.err.println("Exception when calling RemoteAccessApi#getJobProgressiveText");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | [default to null]
 **number** | **String**| Build number | [default to null]
 **start** | **String**| Starting point of progressive text output | [default to null]

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## getQueue

> Queue getQueue()



Retrieve queue details

### Example

```java
// Import classes:
//import org.openapitools.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
try {
    Queue result = apiInstance.getQueue();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling RemoteAccessApi#getQueue");
    e.printStackTrace();
}
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


## getQueueItem

> Queue getQueueItem(number)



Retrieve queued item details

### Example

```java
// Import classes:
//import org.openapitools.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
String number = null; // String | Queue number
try {
    Queue result = apiInstance.getQueueItem(number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling RemoteAccessApi#getQueueItem");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **String**| Queue number | [default to null]

### Return type

[**Queue**](Queue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getView

> ListView getView(name)



Retrieve view details

### Example

```java
// Import classes:
//import org.openapitools.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
String name = null; // String | Name of the view
try {
    ListView result = apiInstance.getView(name);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling RemoteAccessApi#getView");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the view | [default to null]

### Return type

[**ListView**](ListView.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getViewConfig

> String getViewConfig(name)



Retrieve view configuration

### Example

```java
// Import classes:
//import org.openapitools.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
String name = null; // String | Name of the view
try {
    String result = apiInstance.getViewConfig(name);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling RemoteAccessApi#getViewConfig");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the view | [default to null]

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/xml


## headJenkins

> headJenkins()



Retrieve Jenkins headers

### Example

```java
// Import classes:
//import org.openapitools.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
try {
    apiInstance.headJenkins();
} catch (ApiException e) {
    System.err.println("Exception when calling RemoteAccessApi#headJenkins");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## postCreateItem

> postCreateItem(name, from, mode, jenkinsCrumb, contentType, body)



Create a new job using job configuration, or copied from an existing job

### Example

```java
// Import classes:
//import org.openapitools.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
String name = null; // String | Name of the new job
String from = null; // String | Existing job to copy from
String mode = null; // String | Set to 'copy' for copying an existing job
String jenkinsCrumb = null; // String | CSRF protection token
String contentType = null; // String | Content type header application/xml
String body = "body_example"; // String | Job configuration in config.xml format
try {
    apiInstance.postCreateItem(name, from, mode, jenkinsCrumb, contentType, body);
} catch (ApiException e) {
    System.err.println("Exception when calling RemoteAccessApi#postCreateItem");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the new job | [default to null]
 **from** | **String**| Existing job to copy from | [optional] [default to null]
 **mode** | **String**| Set to &#39;copy&#39; for copying an existing job | [optional] [default to null]
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] [default to null]
 **contentType** | **String**| Content type header application/xml | [optional] [default to null]
 **body** | **String**| Job configuration in config.xml format | [optional]

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## postCreateView

> postCreateView(name, jenkinsCrumb, contentType, body)



Create a new view using view configuration

### Example

```java
// Import classes:
//import org.openapitools.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
String name = null; // String | Name of the new view
String jenkinsCrumb = null; // String | CSRF protection token
String contentType = null; // String | Content type header application/xml
String body = "body_example"; // String | View configuration in config.xml format
try {
    apiInstance.postCreateView(name, jenkinsCrumb, contentType, body);
} catch (ApiException e) {
    System.err.println("Exception when calling RemoteAccessApi#postCreateView");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the new view | [default to null]
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] [default to null]
 **contentType** | **String**| Content type header application/xml | [optional] [default to null]
 **body** | **String**| View configuration in config.xml format | [optional]

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## postJobBuild

> postJobBuild(name, json, token, jenkinsCrumb)



Build a job

### Example

```java
// Import classes:
//import org.openapitools.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
String name = null; // String | Name of the job
String json = null; // String | 
String token = null; // String | 
String jenkinsCrumb = null; // String | CSRF protection token
try {
    apiInstance.postJobBuild(name, json, token, jenkinsCrumb);
} catch (ApiException e) {
    System.err.println("Exception when calling RemoteAccessApi#postJobBuild");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | [default to null]
 **json** | **String**|  | [default to null]
 **token** | **String**|  | [optional] [default to null]
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] [default to null]

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## postJobConfig

> postJobConfig(name, body, jenkinsCrumb)



Update job configuration

### Example

```java
// Import classes:
//import org.openapitools.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
String name = null; // String | Name of the job
String body = "body_example"; // String | Job configuration in config.xml format
String jenkinsCrumb = null; // String | CSRF protection token
try {
    apiInstance.postJobConfig(name, body, jenkinsCrumb);
} catch (ApiException e) {
    System.err.println("Exception when calling RemoteAccessApi#postJobConfig");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | [default to null]
 **body** | **String**| Job configuration in config.xml format |
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] [default to null]

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*


## postJobDelete

> postJobDelete(name, jenkinsCrumb)



Delete a job

### Example

```java
// Import classes:
//import org.openapitools.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
String name = null; // String | Name of the job
String jenkinsCrumb = null; // String | CSRF protection token
try {
    apiInstance.postJobDelete(name, jenkinsCrumb);
} catch (ApiException e) {
    System.err.println("Exception when calling RemoteAccessApi#postJobDelete");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | [default to null]
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] [default to null]

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## postJobDisable

> postJobDisable(name, jenkinsCrumb)



Disable a job

### Example

```java
// Import classes:
//import org.openapitools.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
String name = null; // String | Name of the job
String jenkinsCrumb = null; // String | CSRF protection token
try {
    apiInstance.postJobDisable(name, jenkinsCrumb);
} catch (ApiException e) {
    System.err.println("Exception when calling RemoteAccessApi#postJobDisable");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | [default to null]
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] [default to null]

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## postJobEnable

> postJobEnable(name, jenkinsCrumb)



Enable a job

### Example

```java
// Import classes:
//import org.openapitools.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
String name = null; // String | Name of the job
String jenkinsCrumb = null; // String | CSRF protection token
try {
    apiInstance.postJobEnable(name, jenkinsCrumb);
} catch (ApiException e) {
    System.err.println("Exception when calling RemoteAccessApi#postJobEnable");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | [default to null]
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] [default to null]

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## postJobLastBuildStop

> postJobLastBuildStop(name, jenkinsCrumb)



Stop a job

### Example

```java
// Import classes:
//import org.openapitools.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
String name = null; // String | Name of the job
String jenkinsCrumb = null; // String | CSRF protection token
try {
    apiInstance.postJobLastBuildStop(name, jenkinsCrumb);
} catch (ApiException e) {
    System.err.println("Exception when calling RemoteAccessApi#postJobLastBuildStop");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job | [default to null]
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] [default to null]

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## postViewConfig

> postViewConfig(name, body, jenkinsCrumb)



Update view configuration

### Example

```java
// Import classes:
//import org.openapitools.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
String name = null; // String | Name of the view
String body = "body_example"; // String | View configuration in config.xml format
String jenkinsCrumb = null; // String | CSRF protection token
try {
    apiInstance.postViewConfig(name, body, jenkinsCrumb);
} catch (ApiException e) {
    System.err.println("Exception when calling RemoteAccessApi#postViewConfig");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the view | [default to null]
 **body** | **String**| View configuration in config.xml format |
 **jenkinsCrumb** | **String**| CSRF protection token | [optional] [default to null]

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

