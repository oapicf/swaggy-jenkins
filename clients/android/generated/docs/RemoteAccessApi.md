# RemoteAccessApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getComputer**](RemoteAccessApi.md#getComputer) | **GET** /computer/api/json?depth&#x3D;1 | 
[**getCrumb**](RemoteAccessApi.md#getCrumb) | **GET** /crumbIssuer/api/json | 
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


<a name="getComputer"></a>
# **getComputer**
> HudsonmodelComputerSet getComputer()



Retrieve computer details

### Example
```java
// Import classes:
//import io.swagger.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
try {
    HudsonmodelComputerSet result = apiInstance.getComputer();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling RemoteAccessApi#getComputer");
    e.printStackTrace();
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HudsonmodelComputerSet**](HudsonmodelComputerSet.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getCrumb"></a>
# **getCrumb**
> HudsonsecuritycsrfDefaultCrumbIssuer getCrumb()



Retrieve CSRF protection token

### Example
```java
// Import classes:
//import io.swagger.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
try {
    HudsonsecuritycsrfDefaultCrumbIssuer result = apiInstance.getCrumb();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling RemoteAccessApi#getCrumb");
    e.printStackTrace();
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HudsonsecuritycsrfDefaultCrumbIssuer**](HudsonsecuritycsrfDefaultCrumbIssuer.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getJenkins"></a>
# **getJenkins**
> HudsonmodelHudson getJenkins()



Retrieve Jenkins details

### Example
```java
// Import classes:
//import io.swagger.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
try {
    HudsonmodelHudson result = apiInstance.getJenkins();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling RemoteAccessApi#getJenkins");
    e.printStackTrace();
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HudsonmodelHudson**](HudsonmodelHudson.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getJob"></a>
# **getJob**
> HudsonmodelFreeStyleProject getJob(name)



Retrieve job details

### Example
```java
// Import classes:
//import io.swagger.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
String name = "name_example"; // String | Name of the job
try {
    HudsonmodelFreeStyleProject result = apiInstance.getJob(name);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling RemoteAccessApi#getJob");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job |

### Return type

[**HudsonmodelFreeStyleProject**](HudsonmodelFreeStyleProject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getJobConfig"></a>
# **getJobConfig**
> String getJobConfig(name)



Retrieve job configuration

### Example
```java
// Import classes:
//import io.swagger.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
String name = "name_example"; // String | Name of the job
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
 **name** | **String**| Name of the job |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

<a name="getJobLastBuild"></a>
# **getJobLastBuild**
> HudsonmodelFreeStyleBuild getJobLastBuild(name)



Retrieve job&#39;s last build details

### Example
```java
// Import classes:
//import io.swagger.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
String name = "name_example"; // String | Name of the job
try {
    HudsonmodelFreeStyleBuild result = apiInstance.getJobLastBuild(name);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling RemoteAccessApi#getJobLastBuild");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job |

### Return type

[**HudsonmodelFreeStyleBuild**](HudsonmodelFreeStyleBuild.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getJobProgressiveText"></a>
# **getJobProgressiveText**
> getJobProgressiveText(name, number, start)



Retrieve job&#39;s build progressive text output

### Example
```java
// Import classes:
//import io.swagger.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
String name = "name_example"; // String | Name of the job
String number = "number_example"; // String | Build number
String start = "start_example"; // String | Starting point of progressive text output
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
 **name** | **String**| Name of the job |
 **number** | **String**| Build number |
 **start** | **String**| Starting point of progressive text output |

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="getQueue"></a>
# **getQueue**
> HudsonmodelQueue getQueue()



Retrieve queue details

### Example
```java
// Import classes:
//import io.swagger.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
try {
    HudsonmodelQueue result = apiInstance.getQueue();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling RemoteAccessApi#getQueue");
    e.printStackTrace();
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**HudsonmodelQueue**](HudsonmodelQueue.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getQueueItem"></a>
# **getQueueItem**
> HudsonmodelQueue getQueueItem(number)



Retrieve queued item details

### Example
```java
// Import classes:
//import io.swagger.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
String number = "number_example"; // String | Queue number
try {
    HudsonmodelQueue result = apiInstance.getQueueItem(number);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling RemoteAccessApi#getQueueItem");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **String**| Queue number |

### Return type

[**HudsonmodelQueue**](HudsonmodelQueue.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getView"></a>
# **getView**
> HudsonmodelListView getView(name)



Retrieve view details

### Example
```java
// Import classes:
//import io.swagger.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
String name = "name_example"; // String | Name of the view
try {
    HudsonmodelListView result = apiInstance.getView(name);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling RemoteAccessApi#getView");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the view |

### Return type

[**HudsonmodelListView**](HudsonmodelListView.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getViewConfig"></a>
# **getViewConfig**
> String getViewConfig(name)



Retrieve view configuration

### Example
```java
// Import classes:
//import io.swagger.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
String name = "name_example"; // String | Name of the view
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
 **name** | **String**| Name of the view |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

<a name="headJenkins"></a>
# **headJenkins**
> headJenkins()



Retrieve Jenkins headers

### Example
```java
// Import classes:
//import io.swagger.client.api.RemoteAccessApi;

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

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="postCreateItem"></a>
# **postCreateItem**
> postCreateItem(name, from, mode, body, jenkinsCrumb, contentType)



Create a new job using job configuration, or copied from an existing job

### Example
```java
// Import classes:
//import io.swagger.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
String name = "name_example"; // String | Name of the new job
String from = "from_example"; // String | Existing job to copy from
String mode = "mode_example"; // String | Set to 'copy' for copying an existing job
String body = "body_example"; // String | Job configuration in config.xml format
String jenkinsCrumb = "jenkinsCrumb_example"; // String | CSRF protection token
String contentType = "contentType_example"; // String | Content type header application/xml
try {
    apiInstance.postCreateItem(name, from, mode, body, jenkinsCrumb, contentType);
} catch (ApiException e) {
    System.err.println("Exception when calling RemoteAccessApi#postCreateItem");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the new job |
 **from** | **String**| Existing job to copy from | [optional]
 **mode** | **String**| Set to &#39;copy&#39; for copying an existing job | [optional]
 **body** | **String**| Job configuration in config.xml format | [optional]
 **jenkinsCrumb** | **String**| CSRF protection token | [optional]
 **contentType** | **String**| Content type header application/xml | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

<a name="postCreateView"></a>
# **postCreateView**
> postCreateView(name, body, jenkinsCrumb, contentType)



Create a new view using view configuration

### Example
```java
// Import classes:
//import io.swagger.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
String name = "name_example"; // String | Name of the new view
String body = "body_example"; // String | View configuration in config.xml format
String jenkinsCrumb = "jenkinsCrumb_example"; // String | CSRF protection token
String contentType = "contentType_example"; // String | Content type header application/xml
try {
    apiInstance.postCreateView(name, body, jenkinsCrumb, contentType);
} catch (ApiException e) {
    System.err.println("Exception when calling RemoteAccessApi#postCreateView");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the new view |
 **body** | **String**| View configuration in config.xml format | [optional]
 **jenkinsCrumb** | **String**| CSRF protection token | [optional]
 **contentType** | **String**| Content type header application/xml | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/html

<a name="postJobBuild"></a>
# **postJobBuild**
> postJobBuild(name, json, token, jenkinsCrumb)



Build a job

### Example
```java
// Import classes:
//import io.swagger.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
String name = "name_example"; // String | Name of the job
String json = "json_example"; // String | 
String token = "token_example"; // String | 
String jenkinsCrumb = "jenkinsCrumb_example"; // String | CSRF protection token
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
 **name** | **String**| Name of the job |
 **json** | **String**|  |
 **token** | **String**|  | [optional]
 **jenkinsCrumb** | **String**| CSRF protection token | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="postJobConfig"></a>
# **postJobConfig**
> postJobConfig(name, body, jenkinsCrumb)



Update job configuration

### Example
```java
// Import classes:
//import io.swagger.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
String name = "name_example"; // String | Name of the job
String body = "body_example"; // String | Job configuration in config.xml format
String jenkinsCrumb = "jenkinsCrumb_example"; // String | CSRF protection token
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
 **name** | **String**| Name of the job |
 **body** | **String**| Job configuration in config.xml format |
 **jenkinsCrumb** | **String**| CSRF protection token | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

<a name="postJobDelete"></a>
# **postJobDelete**
> postJobDelete(name, jenkinsCrumb)



Delete a job

### Example
```java
// Import classes:
//import io.swagger.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
String name = "name_example"; // String | Name of the job
String jenkinsCrumb = "jenkinsCrumb_example"; // String | CSRF protection token
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
 **name** | **String**| Name of the job |
 **jenkinsCrumb** | **String**| CSRF protection token | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="postJobDisable"></a>
# **postJobDisable**
> postJobDisable(name, jenkinsCrumb)



Disable a job

### Example
```java
// Import classes:
//import io.swagger.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
String name = "name_example"; // String | Name of the job
String jenkinsCrumb = "jenkinsCrumb_example"; // String | CSRF protection token
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
 **name** | **String**| Name of the job |
 **jenkinsCrumb** | **String**| CSRF protection token | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="postJobEnable"></a>
# **postJobEnable**
> postJobEnable(name, jenkinsCrumb)



Enable a job

### Example
```java
// Import classes:
//import io.swagger.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
String name = "name_example"; // String | Name of the job
String jenkinsCrumb = "jenkinsCrumb_example"; // String | CSRF protection token
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
 **name** | **String**| Name of the job |
 **jenkinsCrumb** | **String**| CSRF protection token | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="postJobLastBuildStop"></a>
# **postJobLastBuildStop**
> postJobLastBuildStop(name, jenkinsCrumb)



Stop a job

### Example
```java
// Import classes:
//import io.swagger.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
String name = "name_example"; // String | Name of the job
String jenkinsCrumb = "jenkinsCrumb_example"; // String | CSRF protection token
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
 **name** | **String**| Name of the job |
 **jenkinsCrumb** | **String**| CSRF protection token | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="postViewConfig"></a>
# **postViewConfig**
> postViewConfig(name, body, jenkinsCrumb)



Update view configuration

### Example
```java
// Import classes:
//import io.swagger.client.api.RemoteAccessApi;

RemoteAccessApi apiInstance = new RemoteAccessApi();
String name = "name_example"; // String | Name of the view
String body = "body_example"; // String | View configuration in config.xml format
String jenkinsCrumb = "jenkinsCrumb_example"; // String | CSRF protection token
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
 **name** | **String**| Name of the view |
 **body** | **String**| View configuration in config.xml format |
 **jenkinsCrumb** | **String**| CSRF protection token | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

