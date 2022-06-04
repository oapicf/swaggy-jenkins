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


## Creating RemoteAccessApi

To initiate an instance of `RemoteAccessApi`, you can use micronaut's `ApplicationContext`:
```java
/* imports
import io.micronaut.runtime.Micronaut;
import io.micronaut.context.ApplicationContext;
import org.openapitools.api.RemoteAccessApi;
*/

ApplicationContext context = Micronaut.run(/* ... */);
PetApi apiInstance = context.getBean(RemoteAccessApi.class);
```

Or the `@Inject` annotation:
```java
@Singleton
class MyClass {
    @Inject
    RemoteAccessApi remoteAccessApi;

    /* ... use the injected variable */
}
```
Note that the class needs to be annotated with one of Micronaut's [scope annotations](https://docs.micronaut.io/latest/guide/#scopes) like `Singleton` in order to be processed.

More information can be found inside [Inversion of Control guide section](https://docs.micronaut.io/latest/guide/#ioc).

<a name="getComputer"></a>
# **getComputer**
```java
Mono<ComputerSet> RemoteAccessApi.getComputer(depth)
```



Retrieve computer details

### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **depth** | `Integer`| Recursion depth in response model | |


### Return type
[**ComputerSet**](ComputerSet.md)

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="getJenkins"></a>
# **getJenkins**
```java
Mono<Hudson> RemoteAccessApi.getJenkins()
```



Retrieve Jenkins details



### Return type
[**Hudson**](Hudson.md)

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="getJob"></a>
# **getJob**
```java
Mono<FreeStyleProject> RemoteAccessApi.getJob(name)
```



Retrieve job details

### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | `String`| Name of the job | |


### Return type
[**FreeStyleProject**](FreeStyleProject.md)

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="getJobConfig"></a>
# **getJobConfig**
```java
Mono<String> RemoteAccessApi.getJobConfig(name)
```



Retrieve job configuration

### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | `String`| Name of the job | |


### Return type
`String`

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `text/xml`

<a name="getJobLastBuild"></a>
# **getJobLastBuild**
```java
Mono<FreeStyleBuild> RemoteAccessApi.getJobLastBuild(name)
```



Retrieve job&#39;s last build details

### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | `String`| Name of the job | |


### Return type
[**FreeStyleBuild**](FreeStyleBuild.md)

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="getJobProgressiveText"></a>
# **getJobProgressiveText**
```java
Mono<Void> RemoteAccessApi.getJobProgressiveText(namenumberstart)
```



Retrieve job&#39;s build progressive text output

### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | `String`| Name of the job | |
| **number** | `String`| Build number | |
| **start** | `String`| Starting point of progressive text output | |




### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="getQueue"></a>
# **getQueue**
```java
Mono<Queue> RemoteAccessApi.getQueue()
```



Retrieve queue details



### Return type
[**Queue**](Queue.md)

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="getQueueItem"></a>
# **getQueueItem**
```java
Mono<Queue> RemoteAccessApi.getQueueItem(number)
```



Retrieve queued item details

### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **number** | `String`| Queue number | |


### Return type
[**Queue**](Queue.md)

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="getView"></a>
# **getView**
```java
Mono<ListView> RemoteAccessApi.getView(name)
```



Retrieve view details

### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | `String`| Name of the view | |


### Return type
[**ListView**](ListView.md)

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="getViewConfig"></a>
# **getViewConfig**
```java
Mono<String> RemoteAccessApi.getViewConfig(name)
```



Retrieve view configuration

### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | `String`| Name of the view | |


### Return type
`String`

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `text/xml`

<a name="headJenkins"></a>
# **headJenkins**
```java
Mono<Void> RemoteAccessApi.headJenkins()
```



Retrieve Jenkins headers





### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="postCreateItem"></a>
# **postCreateItem**
```java
Mono<Void> RemoteAccessApi.postCreateItem(namefrommodejenkinsCrumbcontentType_body)
```



Create a new job using job configuration, or copied from an existing job

### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | `String`| Name of the new job | |
| **from** | `String`| Existing job to copy from | [optional parameter] |
| **mode** | `String`| Set to &#39;copy&#39; for copying an existing job | [optional parameter] |
| **jenkinsCrumb** | `String`| CSRF protection token | [optional parameter] |
| **contentType** | `String`| Content type header application/xml | [optional parameter] |
| **_body** | `String`| Job configuration in config.xml format | [optional parameter] |




### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: `application/json`
 - **Accept**: Not defined

<a name="postCreateView"></a>
# **postCreateView**
```java
Mono<Void> RemoteAccessApi.postCreateView(namejenkinsCrumbcontentType_body)
```



Create a new view using view configuration

### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | `String`| Name of the new view | |
| **jenkinsCrumb** | `String`| CSRF protection token | [optional parameter] |
| **contentType** | `String`| Content type header application/xml | [optional parameter] |
| **_body** | `String`| View configuration in config.xml format | [optional parameter] |




### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: `application/json`
 - **Accept**: Not defined

<a name="postJobBuild"></a>
# **postJobBuild**
```java
Mono<Void> RemoteAccessApi.postJobBuild(namejsontokenjenkinsCrumb)
```



Build a job

### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | `String`| Name of the job | |
| **json** | `String`|  | |
| **token** | `String`|  | [optional parameter] |
| **jenkinsCrumb** | `String`| CSRF protection token | [optional parameter] |




### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="postJobConfig"></a>
# **postJobConfig**
```java
Mono<Void> RemoteAccessApi.postJobConfig(name_bodyjenkinsCrumb)
```



Update job configuration

### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | `String`| Name of the job | |
| **_body** | `String`| Job configuration in config.xml format | |
| **jenkinsCrumb** | `String`| CSRF protection token | [optional parameter] |




### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: `application/json`
 - **Accept**: Not defined

<a name="postJobDelete"></a>
# **postJobDelete**
```java
Mono<Void> RemoteAccessApi.postJobDelete(namejenkinsCrumb)
```



Delete a job

### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | `String`| Name of the job | |
| **jenkinsCrumb** | `String`| CSRF protection token | [optional parameter] |




### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="postJobDisable"></a>
# **postJobDisable**
```java
Mono<Void> RemoteAccessApi.postJobDisable(namejenkinsCrumb)
```



Disable a job

### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | `String`| Name of the job | |
| **jenkinsCrumb** | `String`| CSRF protection token | [optional parameter] |




### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="postJobEnable"></a>
# **postJobEnable**
```java
Mono<Void> RemoteAccessApi.postJobEnable(namejenkinsCrumb)
```



Enable a job

### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | `String`| Name of the job | |
| **jenkinsCrumb** | `String`| CSRF protection token | [optional parameter] |




### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="postJobLastBuildStop"></a>
# **postJobLastBuildStop**
```java
Mono<Void> RemoteAccessApi.postJobLastBuildStop(namejenkinsCrumb)
```



Stop a job

### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | `String`| Name of the job | |
| **jenkinsCrumb** | `String`| CSRF protection token | [optional parameter] |




### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="postViewConfig"></a>
# **postViewConfig**
```java
Mono<Void> RemoteAccessApi.postViewConfig(name_bodyjenkinsCrumb)
```



Update view configuration

### Parameters
| Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **name** | `String`| Name of the view | |
| **_body** | `String`| View configuration in config.xml format | |
| **jenkinsCrumb** | `String`| CSRF protection token | [optional parameter] |




### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: `application/json`
 - **Accept**: Not defined

