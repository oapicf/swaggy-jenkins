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
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = RemoteAccessApi()
try {
    val result : HudsonmodelComputerSet = apiInstance.getComputer()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RemoteAccessApi#getComputer")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RemoteAccessApi#getComputer")
    e.printStackTrace()
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
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = RemoteAccessApi()
try {
    val result : HudsonsecuritycsrfDefaultCrumbIssuer = apiInstance.getCrumb()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RemoteAccessApi#getCrumb")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RemoteAccessApi#getCrumb")
    e.printStackTrace()
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
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = RemoteAccessApi()
try {
    val result : HudsonmodelHudson = apiInstance.getJenkins()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RemoteAccessApi#getJenkins")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RemoteAccessApi#getJenkins")
    e.printStackTrace()
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
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = RemoteAccessApi()
val name : kotlin.String = name_example // kotlin.String | Name of the job
try {
    val result : HudsonmodelFreeStyleProject = apiInstance.getJob(name)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RemoteAccessApi#getJob")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RemoteAccessApi#getJob")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **kotlin.String**| Name of the job |

### Return type

[**HudsonmodelFreeStyleProject**](HudsonmodelFreeStyleProject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getJobConfig"></a>
# **getJobConfig**
> kotlin.String getJobConfig(name)



Retrieve job configuration

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = RemoteAccessApi()
val name : kotlin.String = name_example // kotlin.String | Name of the job
try {
    val result : kotlin.String = apiInstance.getJobConfig(name)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RemoteAccessApi#getJobConfig")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RemoteAccessApi#getJobConfig")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **kotlin.String**| Name of the job |

### Return type

**kotlin.String**

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
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = RemoteAccessApi()
val name : kotlin.String = name_example // kotlin.String | Name of the job
try {
    val result : HudsonmodelFreeStyleBuild = apiInstance.getJobLastBuild(name)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RemoteAccessApi#getJobLastBuild")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RemoteAccessApi#getJobLastBuild")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **kotlin.String**| Name of the job |

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
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = RemoteAccessApi()
val name : kotlin.String = name_example // kotlin.String | Name of the job
val number : kotlin.String = number_example // kotlin.String | Build number
val start : kotlin.String = start_example // kotlin.String | Starting point of progressive text output
try {
    apiInstance.getJobProgressiveText(name, number, start)
} catch (e: ClientException) {
    println("4xx response calling RemoteAccessApi#getJobProgressiveText")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RemoteAccessApi#getJobProgressiveText")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **kotlin.String**| Name of the job |
 **number** | **kotlin.String**| Build number |
 **start** | **kotlin.String**| Starting point of progressive text output |

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
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = RemoteAccessApi()
try {
    val result : HudsonmodelQueue = apiInstance.getQueue()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RemoteAccessApi#getQueue")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RemoteAccessApi#getQueue")
    e.printStackTrace()
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
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = RemoteAccessApi()
val number : kotlin.String = number_example // kotlin.String | Queue number
try {
    val result : HudsonmodelQueue = apiInstance.getQueueItem(number)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RemoteAccessApi#getQueueItem")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RemoteAccessApi#getQueueItem")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **kotlin.String**| Queue number |

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
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = RemoteAccessApi()
val name : kotlin.String = name_example // kotlin.String | Name of the view
try {
    val result : HudsonmodelListView = apiInstance.getView(name)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RemoteAccessApi#getView")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RemoteAccessApi#getView")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **kotlin.String**| Name of the view |

### Return type

[**HudsonmodelListView**](HudsonmodelListView.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getViewConfig"></a>
# **getViewConfig**
> kotlin.String getViewConfig(name)



Retrieve view configuration

### Example
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = RemoteAccessApi()
val name : kotlin.String = name_example // kotlin.String | Name of the view
try {
    val result : kotlin.String = apiInstance.getViewConfig(name)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling RemoteAccessApi#getViewConfig")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RemoteAccessApi#getViewConfig")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **kotlin.String**| Name of the view |

### Return type

**kotlin.String**

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
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = RemoteAccessApi()
try {
    apiInstance.headJenkins()
} catch (e: ClientException) {
    println("4xx response calling RemoteAccessApi#headJenkins")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RemoteAccessApi#headJenkins")
    e.printStackTrace()
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
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = RemoteAccessApi()
val name : kotlin.String = name_example // kotlin.String | Name of the new job
val from : kotlin.String = from_example // kotlin.String | Existing job to copy from
val mode : kotlin.String = mode_example // kotlin.String | Set to 'copy' for copying an existing job
val body : kotlin.String = body_example // kotlin.String | Job configuration in config.xml format
val jenkinsCrumb : kotlin.String = jenkinsCrumb_example // kotlin.String | CSRF protection token
val contentType : kotlin.String = contentType_example // kotlin.String | Content type header application/xml
try {
    apiInstance.postCreateItem(name, from, mode, body, jenkinsCrumb, contentType)
} catch (e: ClientException) {
    println("4xx response calling RemoteAccessApi#postCreateItem")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RemoteAccessApi#postCreateItem")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **kotlin.String**| Name of the new job |
 **from** | **kotlin.String**| Existing job to copy from | [optional]
 **mode** | **kotlin.String**| Set to &#39;copy&#39; for copying an existing job | [optional]
 **body** | **kotlin.String**| Job configuration in config.xml format | [optional]
 **jenkinsCrumb** | **kotlin.String**| CSRF protection token | [optional]
 **contentType** | **kotlin.String**| Content type header application/xml | [optional]

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
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = RemoteAccessApi()
val name : kotlin.String = name_example // kotlin.String | Name of the new view
val body : kotlin.String = body_example // kotlin.String | View configuration in config.xml format
val jenkinsCrumb : kotlin.String = jenkinsCrumb_example // kotlin.String | CSRF protection token
val contentType : kotlin.String = contentType_example // kotlin.String | Content type header application/xml
try {
    apiInstance.postCreateView(name, body, jenkinsCrumb, contentType)
} catch (e: ClientException) {
    println("4xx response calling RemoteAccessApi#postCreateView")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RemoteAccessApi#postCreateView")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **kotlin.String**| Name of the new view |
 **body** | **kotlin.String**| View configuration in config.xml format | [optional]
 **jenkinsCrumb** | **kotlin.String**| CSRF protection token | [optional]
 **contentType** | **kotlin.String**| Content type header application/xml | [optional]

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
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = RemoteAccessApi()
val name : kotlin.String = name_example // kotlin.String | Name of the job
val json : kotlin.String = json_example // kotlin.String | 
val token : kotlin.String = token_example // kotlin.String | 
val jenkinsCrumb : kotlin.String = jenkinsCrumb_example // kotlin.String | CSRF protection token
try {
    apiInstance.postJobBuild(name, json, token, jenkinsCrumb)
} catch (e: ClientException) {
    println("4xx response calling RemoteAccessApi#postJobBuild")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RemoteAccessApi#postJobBuild")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **kotlin.String**| Name of the job |
 **json** | **kotlin.String**|  |
 **token** | **kotlin.String**|  | [optional]
 **jenkinsCrumb** | **kotlin.String**| CSRF protection token | [optional]

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
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = RemoteAccessApi()
val name : kotlin.String = name_example // kotlin.String | Name of the job
val body : kotlin.String = body_example // kotlin.String | Job configuration in config.xml format
val jenkinsCrumb : kotlin.String = jenkinsCrumb_example // kotlin.String | CSRF protection token
try {
    apiInstance.postJobConfig(name, body, jenkinsCrumb)
} catch (e: ClientException) {
    println("4xx response calling RemoteAccessApi#postJobConfig")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RemoteAccessApi#postJobConfig")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **kotlin.String**| Name of the job |
 **body** | **kotlin.String**| Job configuration in config.xml format |
 **jenkinsCrumb** | **kotlin.String**| CSRF protection token | [optional]

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
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = RemoteAccessApi()
val name : kotlin.String = name_example // kotlin.String | Name of the job
val jenkinsCrumb : kotlin.String = jenkinsCrumb_example // kotlin.String | CSRF protection token
try {
    apiInstance.postJobDelete(name, jenkinsCrumb)
} catch (e: ClientException) {
    println("4xx response calling RemoteAccessApi#postJobDelete")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RemoteAccessApi#postJobDelete")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **kotlin.String**| Name of the job |
 **jenkinsCrumb** | **kotlin.String**| CSRF protection token | [optional]

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
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = RemoteAccessApi()
val name : kotlin.String = name_example // kotlin.String | Name of the job
val jenkinsCrumb : kotlin.String = jenkinsCrumb_example // kotlin.String | CSRF protection token
try {
    apiInstance.postJobDisable(name, jenkinsCrumb)
} catch (e: ClientException) {
    println("4xx response calling RemoteAccessApi#postJobDisable")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RemoteAccessApi#postJobDisable")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **kotlin.String**| Name of the job |
 **jenkinsCrumb** | **kotlin.String**| CSRF protection token | [optional]

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
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = RemoteAccessApi()
val name : kotlin.String = name_example // kotlin.String | Name of the job
val jenkinsCrumb : kotlin.String = jenkinsCrumb_example // kotlin.String | CSRF protection token
try {
    apiInstance.postJobEnable(name, jenkinsCrumb)
} catch (e: ClientException) {
    println("4xx response calling RemoteAccessApi#postJobEnable")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RemoteAccessApi#postJobEnable")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **kotlin.String**| Name of the job |
 **jenkinsCrumb** | **kotlin.String**| CSRF protection token | [optional]

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
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = RemoteAccessApi()
val name : kotlin.String = name_example // kotlin.String | Name of the job
val jenkinsCrumb : kotlin.String = jenkinsCrumb_example // kotlin.String | CSRF protection token
try {
    apiInstance.postJobLastBuildStop(name, jenkinsCrumb)
} catch (e: ClientException) {
    println("4xx response calling RemoteAccessApi#postJobLastBuildStop")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RemoteAccessApi#postJobLastBuildStop")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **kotlin.String**| Name of the job |
 **jenkinsCrumb** | **kotlin.String**| CSRF protection token | [optional]

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
```kotlin
// Import classes:
//import io.swagger.client.infrastructure.*
//import io.swagger.client.models.*

val apiInstance = RemoteAccessApi()
val name : kotlin.String = name_example // kotlin.String | Name of the view
val body : kotlin.String = body_example // kotlin.String | View configuration in config.xml format
val jenkinsCrumb : kotlin.String = jenkinsCrumb_example // kotlin.String | CSRF protection token
try {
    apiInstance.postViewConfig(name, body, jenkinsCrumb)
} catch (e: ClientException) {
    println("4xx response calling RemoteAccessApi#postViewConfig")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling RemoteAccessApi#postViewConfig")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **kotlin.String**| Name of the view |
 **body** | **kotlin.String**| View configuration in config.xml format |
 **jenkinsCrumb** | **kotlin.String**| CSRF protection token | [optional]

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

