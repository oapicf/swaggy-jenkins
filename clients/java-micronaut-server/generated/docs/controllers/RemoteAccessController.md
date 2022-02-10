# RemoteAccessController

All URIs are relative to `""`

The controller class is defined in **[RemoteAccessController.java](../../src/main/java/org/openapitools/controller/RemoteAccessController.java)**

Method | HTTP request | Description
------------- | ------------- | -------------
[**getComputer**](#getComputer) | **GET** /computer/api/json | 
[**getJenkins**](#getJenkins) | **GET** /api/json | 
[**getJob**](#getJob) | **GET** /job/{name}/api/json | 
[**getJobConfig**](#getJobConfig) | **GET** /job/{name}/config.xml | 
[**getJobLastBuild**](#getJobLastBuild) | **GET** /job/{name}/lastBuild/api/json | 
[**getJobProgressiveText**](#getJobProgressiveText) | **GET** /job/{name}/{number}/logText/progressiveText | 
[**getQueue**](#getQueue) | **GET** /queue/api/json | 
[**getQueueItem**](#getQueueItem) | **GET** /queue/item/{number}/api/json | 
[**getView**](#getView) | **GET** /view/{name}/api/json | 
[**getViewConfig**](#getViewConfig) | **GET** /view/{name}/config.xml | 
[**headJenkins**](#headJenkins) | **HEAD** /api/json | 
[**postCreateItem**](#postCreateItem) | **POST** /createItem | 
[**postCreateView**](#postCreateView) | **POST** /createView | 
[**postJobBuild**](#postJobBuild) | **POST** /job/{name}/build | 
[**postJobConfig**](#postJobConfig) | **POST** /job/{name}/config.xml | 
[**postJobDelete**](#postJobDelete) | **POST** /job/{name}/doDelete | 
[**postJobDisable**](#postJobDisable) | **POST** /job/{name}/disable | 
[**postJobEnable**](#postJobEnable) | **POST** /job/{name}/enable | 
[**postJobLastBuildStop**](#postJobLastBuildStop) | **POST** /job/{name}/lastBuild/stop | 
[**postViewConfig**](#postViewConfig) | **POST** /view/{name}/config.xml | 

<a name="getComputer"></a>
# **getComputer**
```java
Mono<ComputerSet> RemoteAccessController.getComputer(depth)
```



Retrieve computer details

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**depth** | `Integer` | Recursion depth in response model |

### Return type
[**ComputerSet**](../../docs/models/ComputerSet.md)

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="getJenkins"></a>
# **getJenkins**
```java
Mono<Hudson> RemoteAccessController.getJenkins()
```



Retrieve Jenkins details


### Return type
[**Hudson**](../../docs/models/Hudson.md)

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="getJob"></a>
# **getJob**
```java
Mono<FreeStyleProject> RemoteAccessController.getJob(name)
```



Retrieve job details

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | `String` | Name of the job |

### Return type
[**FreeStyleProject**](../../docs/models/FreeStyleProject.md)

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="getJobConfig"></a>
# **getJobConfig**
```java
Mono<String> RemoteAccessController.getJobConfig(name)
```



Retrieve job configuration

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | `String` | Name of the job |

### Return type
`String`

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `text/xml`

<a name="getJobLastBuild"></a>
# **getJobLastBuild**
```java
Mono<FreeStyleBuild> RemoteAccessController.getJobLastBuild(name)
```



Retrieve job&#39;s last build details

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | `String` | Name of the job |

### Return type
[**FreeStyleBuild**](../../docs/models/FreeStyleBuild.md)

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="getJobProgressiveText"></a>
# **getJobProgressiveText**
```java
Mono<Object> RemoteAccessController.getJobProgressiveText(namenumberstart)
```



Retrieve job&#39;s build progressive text output

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | `String` | Name of the job |
**number** | `String` | Build number |
**start** | `String` | Starting point of progressive text output |


### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: Not defined

<a name="getQueue"></a>
# **getQueue**
```java
Mono<Queue> RemoteAccessController.getQueue()
```



Retrieve queue details


### Return type
[**Queue**](../../docs/models/Queue.md)

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="getQueueItem"></a>
# **getQueueItem**
```java
Mono<Queue> RemoteAccessController.getQueueItem(number)
```



Retrieve queued item details

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**number** | `String` | Queue number |

### Return type
[**Queue**](../../docs/models/Queue.md)

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="getView"></a>
# **getView**
```java
Mono<ListView> RemoteAccessController.getView(name)
```



Retrieve view details

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | `String` | Name of the view |

### Return type
[**ListView**](../../docs/models/ListView.md)

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="getViewConfig"></a>
# **getViewConfig**
```java
Mono<String> RemoteAccessController.getViewConfig(name)
```



Retrieve view configuration

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | `String` | Name of the view |

### Return type
`String`

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `text/xml`

<a name="headJenkins"></a>
# **headJenkins**
```java
Mono<Object> RemoteAccessController.headJenkins()
```



Retrieve Jenkins headers



### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: Not defined

<a name="postCreateItem"></a>
# **postCreateItem**
```java
Mono<Object> RemoteAccessController.postCreateItem(namefrommodejenkinsCrumbcontentType_body)
```



Create a new job using job configuration, or copied from an existing job

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | `String` | Name of the new job |
**from** | `String` | Existing job to copy from | [optional parameter]
**mode** | `String` | Set to &#39;copy&#39; for copying an existing job | [optional parameter]
**jenkinsCrumb** | `String` | CSRF protection token | [optional parameter]
**contentType** | `String` | Content type header application/xml | [optional parameter]
**_body** | `String` | Job configuration in config.xml format | [optional parameter]


### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: `application/json`
 - **Produces Content-Type**: Not defined

<a name="postCreateView"></a>
# **postCreateView**
```java
Mono<Object> RemoteAccessController.postCreateView(namejenkinsCrumbcontentType_body)
```



Create a new view using view configuration

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | `String` | Name of the new view |
**jenkinsCrumb** | `String` | CSRF protection token | [optional parameter]
**contentType** | `String` | Content type header application/xml | [optional parameter]
**_body** | `String` | View configuration in config.xml format | [optional parameter]


### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: `application/json`
 - **Produces Content-Type**: Not defined

<a name="postJobBuild"></a>
# **postJobBuild**
```java
Mono<Object> RemoteAccessController.postJobBuild(namejsontokenjenkinsCrumb)
```



Build a job

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | `String` | Name of the job |
**json** | `String` |  |
**token** | `String` |  | [optional parameter]
**jenkinsCrumb** | `String` | CSRF protection token | [optional parameter]


### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: Not defined

<a name="postJobConfig"></a>
# **postJobConfig**
```java
Mono<Object> RemoteAccessController.postJobConfig(name_bodyjenkinsCrumb)
```



Update job configuration

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | `String` | Name of the job |
**_body** | `String` | Job configuration in config.xml format |
**jenkinsCrumb** | `String` | CSRF protection token | [optional parameter]


### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: `application/json`
 - **Produces Content-Type**: Not defined

<a name="postJobDelete"></a>
# **postJobDelete**
```java
Mono<Object> RemoteAccessController.postJobDelete(namejenkinsCrumb)
```



Delete a job

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | `String` | Name of the job |
**jenkinsCrumb** | `String` | CSRF protection token | [optional parameter]


### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: Not defined

<a name="postJobDisable"></a>
# **postJobDisable**
```java
Mono<Object> RemoteAccessController.postJobDisable(namejenkinsCrumb)
```



Disable a job

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | `String` | Name of the job |
**jenkinsCrumb** | `String` | CSRF protection token | [optional parameter]


### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: Not defined

<a name="postJobEnable"></a>
# **postJobEnable**
```java
Mono<Object> RemoteAccessController.postJobEnable(namejenkinsCrumb)
```



Enable a job

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | `String` | Name of the job |
**jenkinsCrumb** | `String` | CSRF protection token | [optional parameter]


### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: Not defined

<a name="postJobLastBuildStop"></a>
# **postJobLastBuildStop**
```java
Mono<Object> RemoteAccessController.postJobLastBuildStop(namejenkinsCrumb)
```



Stop a job

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | `String` | Name of the job |
**jenkinsCrumb** | `String` | CSRF protection token | [optional parameter]


### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: Not defined

<a name="postViewConfig"></a>
# **postViewConfig**
```java
Mono<Object> RemoteAccessController.postViewConfig(name_bodyjenkinsCrumb)
```



Update view configuration

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**name** | `String` | Name of the view |
**_body** | `String` | View configuration in config.xml format |
**jenkinsCrumb** | `String` | CSRF protection token | [optional parameter]


### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: `application/json`
 - **Produces Content-Type**: Not defined

