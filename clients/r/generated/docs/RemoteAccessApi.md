# RemoteAccessApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**GetComputer**](RemoteAccessApi.md#GetComputer) | **GET** /computer/api/json | 
[**GetJenkins**](RemoteAccessApi.md#GetJenkins) | **GET** /api/json | 
[**GetJob**](RemoteAccessApi.md#GetJob) | **GET** /job/{name}/api/json | 
[**GetJobConfig**](RemoteAccessApi.md#GetJobConfig) | **GET** /job/{name}/config.xml | 
[**GetJobLastBuild**](RemoteAccessApi.md#GetJobLastBuild) | **GET** /job/{name}/lastBuild/api/json | 
[**GetJobProgressiveText**](RemoteAccessApi.md#GetJobProgressiveText) | **GET** /job/{name}/{number}/logText/progressiveText | 
[**GetQueue**](RemoteAccessApi.md#GetQueue) | **GET** /queue/api/json | 
[**GetQueueItem**](RemoteAccessApi.md#GetQueueItem) | **GET** /queue/item/{number}/api/json | 
[**GetView**](RemoteAccessApi.md#GetView) | **GET** /view/{name}/api/json | 
[**GetViewConfig**](RemoteAccessApi.md#GetViewConfig) | **GET** /view/{name}/config.xml | 
[**HeadJenkins**](RemoteAccessApi.md#HeadJenkins) | **HEAD** /api/json | 
[**PostCreateItem**](RemoteAccessApi.md#PostCreateItem) | **POST** /createItem | 
[**PostCreateView**](RemoteAccessApi.md#PostCreateView) | **POST** /createView | 
[**PostJobBuild**](RemoteAccessApi.md#PostJobBuild) | **POST** /job/{name}/build | 
[**PostJobConfig**](RemoteAccessApi.md#PostJobConfig) | **POST** /job/{name}/config.xml | 
[**PostJobDelete**](RemoteAccessApi.md#PostJobDelete) | **POST** /job/{name}/doDelete | 
[**PostJobDisable**](RemoteAccessApi.md#PostJobDisable) | **POST** /job/{name}/disable | 
[**PostJobEnable**](RemoteAccessApi.md#PostJobEnable) | **POST** /job/{name}/enable | 
[**PostJobLastBuildStop**](RemoteAccessApi.md#PostJobLastBuildStop) | **POST** /job/{name}/lastBuild/stop | 
[**PostViewConfig**](RemoteAccessApi.md#PostViewConfig) | **POST** /view/{name}/config.xml | 


# **GetComputer**
> ComputerSet GetComputer(depth)



Retrieve computer details

### Example
```R
library(openapi)

var.depth <- 56 # integer | Recursion depth in response model

api.instance <- RemoteAccessApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GetComputer(var.depth)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **depth** | **integer**| Recursion depth in response model | 

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

# **GetJenkins**
> Hudson GetJenkins()



Retrieve Jenkins details

### Example
```R
library(openapi)


api.instance <- RemoteAccessApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GetJenkins()
dput(result)
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved Jenkins details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

# **GetJob**
> FreeStyleProject GetJob(name)



Retrieve job details

### Example
```R
library(openapi)

var.name <- 'name_example' # character | Name of the job

api.instance <- RemoteAccessApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GetJob(var.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **character**| Name of the job | 

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

# **GetJobConfig**
> character GetJobConfig(name)



Retrieve job configuration

### Example
```R
library(openapi)

var.name <- 'name_example' # character | Name of the job

api.instance <- RemoteAccessApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GetJobConfig(var.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **character**| Name of the job | 

### Return type

**character**

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

# **GetJobLastBuild**
> FreeStyleBuild GetJobLastBuild(name)



Retrieve job's last build details

### Example
```R
library(openapi)

var.name <- 'name_example' # character | Name of the job

api.instance <- RemoteAccessApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GetJobLastBuild(var.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **character**| Name of the job | 

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

# **GetJobProgressiveText**
> GetJobProgressiveText(name, number, start)



Retrieve job's build progressive text output

### Example
```R
library(openapi)

var.name <- 'name_example' # character | Name of the job
var.number <- 'number_example' # character | Build number
var.start <- 'start_example' # character | Starting point of progressive text output

api.instance <- RemoteAccessApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
api.instance$GetJobProgressiveText(var.name, var.number, var.start)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **character**| Name of the job | 
 **number** | **character**| Build number | 
 **start** | **character**| Starting point of progressive text output | 

### Return type

void (empty response body)

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

# **GetQueue**
> Queue GetQueue()



Retrieve queue details

### Example
```R
library(openapi)


api.instance <- RemoteAccessApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GetQueue()
dput(result)
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

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved queue details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

# **GetQueueItem**
> Queue GetQueueItem(number)



Retrieve queued item details

### Example
```R
library(openapi)

var.number <- 'number_example' # character | Queue number

api.instance <- RemoteAccessApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GetQueueItem(var.number)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **character**| Queue number | 

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

# **GetView**
> ListView GetView(name)



Retrieve view details

### Example
```R
library(openapi)

var.name <- 'name_example' # character | Name of the view

api.instance <- RemoteAccessApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GetView(var.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **character**| Name of the view | 

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

# **GetViewConfig**
> character GetViewConfig(name)



Retrieve view configuration

### Example
```R
library(openapi)

var.name <- 'name_example' # character | Name of the view

api.instance <- RemoteAccessApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GetViewConfig(var.name)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **character**| Name of the view | 

### Return type

**character**

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

# **HeadJenkins**
> HeadJenkins()



Retrieve Jenkins headers

### Example
```R
library(openapi)


api.instance <- RemoteAccessApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
api.instance$HeadJenkins()
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

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

# **PostCreateItem**
> PostCreateItem(name, from=var.from, mode=var.mode, jenkins_crumb=var.jenkins_crumb, content_type=var.content_type, body=var.body)



Create a new job using job configuration, or copied from an existing job

### Example
```R
library(openapi)

var.name <- 'name_example' # character | Name of the new job
var.from <- 'from_example' # character | Existing job to copy from
var.mode <- 'mode_example' # character | Set to 'copy' for copying an existing job
var.jenkins_crumb <- 'jenkins_crumb_example' # character | CSRF protection token
var.content_type <- 'content_type_example' # character | Content type header application/xml
var.body <- 'body_example' # character | Job configuration in config.xml format

api.instance <- RemoteAccessApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
api.instance$PostCreateItem(var.name, from=var.from, mode=var.mode, jenkins_crumb=var.jenkins_crumb, content_type=var.content_type, body=var.body)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **character**| Name of the new job | 
 **from** | **character**| Existing job to copy from | [optional] 
 **mode** | **character**| Set to &#39;copy&#39; for copying an existing job | [optional] 
 **jenkins_crumb** | **character**| CSRF protection token | [optional] 
 **content_type** | **character**| Content type header application/xml | [optional] 
 **body** | **character**| Job configuration in config.xml format | [optional] 

### Return type

void (empty response body)

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

# **PostCreateView**
> PostCreateView(name, jenkins_crumb=var.jenkins_crumb, content_type=var.content_type, body=var.body)



Create a new view using view configuration

### Example
```R
library(openapi)

var.name <- 'name_example' # character | Name of the new view
var.jenkins_crumb <- 'jenkins_crumb_example' # character | CSRF protection token
var.content_type <- 'content_type_example' # character | Content type header application/xml
var.body <- 'body_example' # character | View configuration in config.xml format

api.instance <- RemoteAccessApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
api.instance$PostCreateView(var.name, jenkins_crumb=var.jenkins_crumb, content_type=var.content_type, body=var.body)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **character**| Name of the new view | 
 **jenkins_crumb** | **character**| CSRF protection token | [optional] 
 **content_type** | **character**| Content type header application/xml | [optional] 
 **body** | **character**| View configuration in config.xml format | [optional] 

### Return type

void (empty response body)

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

# **PostJobBuild**
> PostJobBuild(name, json, token=var.token, jenkins_crumb=var.jenkins_crumb)



Build a job

### Example
```R
library(openapi)

var.name <- 'name_example' # character | Name of the job
var.json <- 'json_example' # character | 
var.token <- 'token_example' # character | 
var.jenkins_crumb <- 'jenkins_crumb_example' # character | CSRF protection token

api.instance <- RemoteAccessApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
api.instance$PostJobBuild(var.name, var.json, token=var.token, jenkins_crumb=var.jenkins_crumb)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **character**| Name of the job | 
 **json** | **character**|  | 
 **token** | **character**|  | [optional] 
 **jenkins_crumb** | **character**| CSRF protection token | [optional] 

### Return type

void (empty response body)

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

# **PostJobConfig**
> PostJobConfig(name, body, jenkins_crumb=var.jenkins_crumb)



Update job configuration

### Example
```R
library(openapi)

var.name <- 'name_example' # character | Name of the job
var.body <- 'body_example' # character | Job configuration in config.xml format
var.jenkins_crumb <- 'jenkins_crumb_example' # character | CSRF protection token

api.instance <- RemoteAccessApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
api.instance$PostJobConfig(var.name, var.body, jenkins_crumb=var.jenkins_crumb)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **character**| Name of the job | 
 **body** | **character**| Job configuration in config.xml format | 
 **jenkins_crumb** | **character**| CSRF protection token | [optional] 

### Return type

void (empty response body)

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

# **PostJobDelete**
> PostJobDelete(name, jenkins_crumb=var.jenkins_crumb)



Delete a job

### Example
```R
library(openapi)

var.name <- 'name_example' # character | Name of the job
var.jenkins_crumb <- 'jenkins_crumb_example' # character | CSRF protection token

api.instance <- RemoteAccessApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
api.instance$PostJobDelete(var.name, jenkins_crumb=var.jenkins_crumb)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **character**| Name of the job | 
 **jenkins_crumb** | **character**| CSRF protection token | [optional] 

### Return type

void (empty response body)

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

# **PostJobDisable**
> PostJobDisable(name, jenkins_crumb=var.jenkins_crumb)



Disable a job

### Example
```R
library(openapi)

var.name <- 'name_example' # character | Name of the job
var.jenkins_crumb <- 'jenkins_crumb_example' # character | CSRF protection token

api.instance <- RemoteAccessApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
api.instance$PostJobDisable(var.name, jenkins_crumb=var.jenkins_crumb)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **character**| Name of the job | 
 **jenkins_crumb** | **character**| CSRF protection token | [optional] 

### Return type

void (empty response body)

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

# **PostJobEnable**
> PostJobEnable(name, jenkins_crumb=var.jenkins_crumb)



Enable a job

### Example
```R
library(openapi)

var.name <- 'name_example' # character | Name of the job
var.jenkins_crumb <- 'jenkins_crumb_example' # character | CSRF protection token

api.instance <- RemoteAccessApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
api.instance$PostJobEnable(var.name, jenkins_crumb=var.jenkins_crumb)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **character**| Name of the job | 
 **jenkins_crumb** | **character**| CSRF protection token | [optional] 

### Return type

void (empty response body)

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

# **PostJobLastBuildStop**
> PostJobLastBuildStop(name, jenkins_crumb=var.jenkins_crumb)



Stop a job

### Example
```R
library(openapi)

var.name <- 'name_example' # character | Name of the job
var.jenkins_crumb <- 'jenkins_crumb_example' # character | CSRF protection token

api.instance <- RemoteAccessApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
api.instance$PostJobLastBuildStop(var.name, jenkins_crumb=var.jenkins_crumb)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **character**| Name of the job | 
 **jenkins_crumb** | **character**| CSRF protection token | [optional] 

### Return type

void (empty response body)

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

# **PostViewConfig**
> PostViewConfig(name, body, jenkins_crumb=var.jenkins_crumb)



Update view configuration

### Example
```R
library(openapi)

var.name <- 'name_example' # character | Name of the view
var.body <- 'body_example' # character | View configuration in config.xml format
var.jenkins_crumb <- 'jenkins_crumb_example' # character | CSRF protection token

api.instance <- RemoteAccessApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
api.instance$PostViewConfig(var.name, var.body, jenkins_crumb=var.jenkins_crumb)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **character**| Name of the view | 
 **body** | **character**| View configuration in config.xml format | 
 **jenkins_crumb** | **character**| CSRF protection token | [optional] 

### Return type

void (empty response body)

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

