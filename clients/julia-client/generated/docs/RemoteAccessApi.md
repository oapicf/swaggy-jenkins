# RemoteAccessApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_computer**](RemoteAccessApi.md#get_computer) | **GET** /computer/api/json | 
[**get_jenkins**](RemoteAccessApi.md#get_jenkins) | **GET** /api/json | 
[**get_job**](RemoteAccessApi.md#get_job) | **GET** /job/{name}/api/json | 
[**get_job_config**](RemoteAccessApi.md#get_job_config) | **GET** /job/{name}/config.xml | 
[**get_job_last_build**](RemoteAccessApi.md#get_job_last_build) | **GET** /job/{name}/lastBuild/api/json | 
[**get_job_progressive_text**](RemoteAccessApi.md#get_job_progressive_text) | **GET** /job/{name}/{number}/logText/progressiveText | 
[**get_queue**](RemoteAccessApi.md#get_queue) | **GET** /queue/api/json | 
[**get_queue_item**](RemoteAccessApi.md#get_queue_item) | **GET** /queue/item/{number}/api/json | 
[**get_view**](RemoteAccessApi.md#get_view) | **GET** /view/{name}/api/json | 
[**get_view_config**](RemoteAccessApi.md#get_view_config) | **GET** /view/{name}/config.xml | 
[**head_jenkins**](RemoteAccessApi.md#head_jenkins) | **HEAD** /api/json | 
[**post_create_item**](RemoteAccessApi.md#post_create_item) | **POST** /createItem | 
[**post_create_view**](RemoteAccessApi.md#post_create_view) | **POST** /createView | 
[**post_job_build**](RemoteAccessApi.md#post_job_build) | **POST** /job/{name}/build | 
[**post_job_config**](RemoteAccessApi.md#post_job_config) | **POST** /job/{name}/config.xml | 
[**post_job_delete**](RemoteAccessApi.md#post_job_delete) | **POST** /job/{name}/doDelete | 
[**post_job_disable**](RemoteAccessApi.md#post_job_disable) | **POST** /job/{name}/disable | 
[**post_job_enable**](RemoteAccessApi.md#post_job_enable) | **POST** /job/{name}/enable | 
[**post_job_last_build_stop**](RemoteAccessApi.md#post_job_last_build_stop) | **POST** /job/{name}/lastBuild/stop | 
[**post_view_config**](RemoteAccessApi.md#post_view_config) | **POST** /view/{name}/config.xml | 


# **get_computer**
> `get_computer`(_api::`RemoteAccessApi`, `depth`::`Int64`; _mediaType=nothing) -> `ComputerSet`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_computer`(_api::`RemoteAccessApi`, response_stream::`Channel`, `depth`::`Int64`; _mediaType=nothing) -> `Channel`{ `ComputerSet` }, `OpenAPI.Clients.ApiResponse`



Retrieve computer details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`RemoteAccessApi`** | API context | 
**`depth`** | **`Int64`** | Recursion depth in response model |

### Return type

[**`ComputerSet`**](ComputerSet.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_jenkins**
> `get_jenkins`(_api::`RemoteAccessApi`; _mediaType=nothing) -> `Hudson`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_jenkins`(_api::`RemoteAccessApi`, response_stream::`Channel`; _mediaType=nothing) -> `Channel`{ `Hudson` }, `OpenAPI.Clients.ApiResponse`



Retrieve Jenkins details

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**`Hudson`**](Hudson.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_job**
> `get_job`(_api::`RemoteAccessApi`, `name`::`String`; _mediaType=nothing) -> `FreeStyleProject`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_job`(_api::`RemoteAccessApi`, response_stream::`Channel`, `name`::`String`; _mediaType=nothing) -> `Channel`{ `FreeStyleProject` }, `OpenAPI.Clients.ApiResponse`



Retrieve job details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`RemoteAccessApi`** | API context | 
**`name`** | **`String`** | Name of the job |

### Return type

[**`FreeStyleProject`**](FreeStyleProject.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_job_config**
> `get_job_config`(_api::`RemoteAccessApi`, `name`::`String`; _mediaType=nothing) -> `String`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_job_config`(_api::`RemoteAccessApi`, response_stream::`Channel`, `name`::`String`; _mediaType=nothing) -> `Channel`{ `String` }, `OpenAPI.Clients.ApiResponse`



Retrieve job configuration

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`RemoteAccessApi`** | API context | 
**`name`** | **`String`** | Name of the job |

### Return type

**`String`**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_job_last_build**
> `get_job_last_build`(_api::`RemoteAccessApi`, `name`::`String`; _mediaType=nothing) -> `FreeStyleBuild`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_job_last_build`(_api::`RemoteAccessApi`, response_stream::`Channel`, `name`::`String`; _mediaType=nothing) -> `Channel`{ `FreeStyleBuild` }, `OpenAPI.Clients.ApiResponse`



Retrieve job's last build details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`RemoteAccessApi`** | API context | 
**`name`** | **`String`** | Name of the job |

### Return type

[**`FreeStyleBuild`**](FreeStyleBuild.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_job_progressive_text**
> `get_job_progressive_text`(_api::`RemoteAccessApi`, `name`::`String`, `number`::`String`, `start`::`String`; _mediaType=nothing) -> `Nothing`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_job_progressive_text`(_api::`RemoteAccessApi`, response_stream::`Channel`, `name`::`String`, `number`::`String`, `start`::`String`; _mediaType=nothing) -> `Channel`{ `Nothing` }, `OpenAPI.Clients.ApiResponse`



Retrieve job's build progressive text output

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`RemoteAccessApi`** | API context | 
**`name`** | **`String`** | Name of the job |
**`number`** | **`String`** | Build number |
**`start`** | **`String`** | Starting point of progressive text output |

### Return type

`Nothing`

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_queue**
> `get_queue`(_api::`RemoteAccessApi`; _mediaType=nothing) -> `Queue`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_queue`(_api::`RemoteAccessApi`, response_stream::`Channel`; _mediaType=nothing) -> `Channel`{ `Queue` }, `OpenAPI.Clients.ApiResponse`



Retrieve queue details

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**`Queue`**](Queue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_queue_item**
> `get_queue_item`(_api::`RemoteAccessApi`, `number`::`String`; _mediaType=nothing) -> `Queue`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_queue_item`(_api::`RemoteAccessApi`, response_stream::`Channel`, `number`::`String`; _mediaType=nothing) -> `Channel`{ `Queue` }, `OpenAPI.Clients.ApiResponse`



Retrieve queued item details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`RemoteAccessApi`** | API context | 
**`number`** | **`String`** | Queue number |

### Return type

[**`Queue`**](Queue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_view**
> `get_view`(_api::`RemoteAccessApi`, `name`::`String`; _mediaType=nothing) -> `ListView`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_view`(_api::`RemoteAccessApi`, response_stream::`Channel`, `name`::`String`; _mediaType=nothing) -> `Channel`{ `ListView` }, `OpenAPI.Clients.ApiResponse`



Retrieve view details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`RemoteAccessApi`** | API context | 
**`name`** | **`String`** | Name of the view |

### Return type

[**`ListView`**](ListView.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_view_config**
> `get_view_config`(_api::`RemoteAccessApi`, `name`::`String`; _mediaType=nothing) -> `String`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_view_config`(_api::`RemoteAccessApi`, response_stream::`Channel`, `name`::`String`; _mediaType=nothing) -> `Channel`{ `String` }, `OpenAPI.Clients.ApiResponse`



Retrieve view configuration

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`RemoteAccessApi`** | API context | 
**`name`** | **`String`** | Name of the view |

### Return type

**`String`**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **head_jenkins**
> `head_jenkins`(_api::`RemoteAccessApi`; _mediaType=nothing) -> `Nothing`, `OpenAPI.Clients.ApiResponse` <br/>
> `head_jenkins`(_api::`RemoteAccessApi`, response_stream::`Channel`; _mediaType=nothing) -> `Channel`{ `Nothing` }, `OpenAPI.Clients.ApiResponse`



Retrieve Jenkins headers

### Required Parameters
This endpoint does not need any parameter.

### Return type

`Nothing`

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **post_create_item**
> `post_create_item`(_api::`RemoteAccessApi`, `name`::`String`; `from`=nothing, `mode`=nothing, `jenkins_crumb`=nothing, `content_type`=nothing, `body`=nothing, _mediaType=nothing) -> `Nothing`, `OpenAPI.Clients.ApiResponse` <br/>
> `post_create_item`(_api::`RemoteAccessApi`, response_stream::`Channel`, `name`::`String`; `from`=nothing, `mode`=nothing, `jenkins_crumb`=nothing, `content_type`=nothing, `body`=nothing, _mediaType=nothing) -> `Channel`{ `Nothing` }, `OpenAPI.Clients.ApiResponse`



Create a new job using job configuration, or copied from an existing job

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`RemoteAccessApi`** | API context | 
**`name`** | **`String`** | Name of the new job |

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`from`** | **`String`** | Existing job to copy from | [default to nothing]
 **`mode`** | **`String`** | Set to &#39;copy&#39; for copying an existing job | [default to nothing]
 **`jenkins_crumb`** | **`String`** | CSRF protection token | [default to nothing]
 **`content_type`** | **`String`** | Content type header application/xml | [default to nothing]
 **`body`** | **`String`** | Job configuration in config.xml format | 

### Return type

`Nothing`

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **post_create_view**
> `post_create_view`(_api::`RemoteAccessApi`, `name`::`String`; `jenkins_crumb`=nothing, `content_type`=nothing, `body`=nothing, _mediaType=nothing) -> `Nothing`, `OpenAPI.Clients.ApiResponse` <br/>
> `post_create_view`(_api::`RemoteAccessApi`, response_stream::`Channel`, `name`::`String`; `jenkins_crumb`=nothing, `content_type`=nothing, `body`=nothing, _mediaType=nothing) -> `Channel`{ `Nothing` }, `OpenAPI.Clients.ApiResponse`



Create a new view using view configuration

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`RemoteAccessApi`** | API context | 
**`name`** | **`String`** | Name of the new view |

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`jenkins_crumb`** | **`String`** | CSRF protection token | [default to nothing]
 **`content_type`** | **`String`** | Content type header application/xml | [default to nothing]
 **`body`** | **`String`** | View configuration in config.xml format | 

### Return type

`Nothing`

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **post_job_build**
> `post_job_build`(_api::`RemoteAccessApi`, `name`::`String`, `json`::`String`; `token`=nothing, `jenkins_crumb`=nothing, _mediaType=nothing) -> `Nothing`, `OpenAPI.Clients.ApiResponse` <br/>
> `post_job_build`(_api::`RemoteAccessApi`, response_stream::`Channel`, `name`::`String`, `json`::`String`; `token`=nothing, `jenkins_crumb`=nothing, _mediaType=nothing) -> `Channel`{ `Nothing` }, `OpenAPI.Clients.ApiResponse`



Build a job

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`RemoteAccessApi`** | API context | 
**`name`** | **`String`** | Name of the job |
**`json`** | **`String`** |  |

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`token`** | **`String`** |  | [default to nothing]
 **`jenkins_crumb`** | **`String`** | CSRF protection token | [default to nothing]

### Return type

`Nothing`

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **post_job_config**
> `post_job_config`(_api::`RemoteAccessApi`, `name`::`String`, `body`::`String`; `jenkins_crumb`=nothing, _mediaType=nothing) -> `Nothing`, `OpenAPI.Clients.ApiResponse` <br/>
> `post_job_config`(_api::`RemoteAccessApi`, response_stream::`Channel`, `name`::`String`, `body`::`String`; `jenkins_crumb`=nothing, _mediaType=nothing) -> `Channel`{ `Nothing` }, `OpenAPI.Clients.ApiResponse`



Update job configuration

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`RemoteAccessApi`** | API context | 
**`name`** | **`String`** | Name of the job |
**`body`** | **`String`** | Job configuration in config.xml format |

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`jenkins_crumb`** | **`String`** | CSRF protection token | [default to nothing]

### Return type

`Nothing`

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **post_job_delete**
> `post_job_delete`(_api::`RemoteAccessApi`, `name`::`String`; `jenkins_crumb`=nothing, _mediaType=nothing) -> `Nothing`, `OpenAPI.Clients.ApiResponse` <br/>
> `post_job_delete`(_api::`RemoteAccessApi`, response_stream::`Channel`, `name`::`String`; `jenkins_crumb`=nothing, _mediaType=nothing) -> `Channel`{ `Nothing` }, `OpenAPI.Clients.ApiResponse`



Delete a job

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`RemoteAccessApi`** | API context | 
**`name`** | **`String`** | Name of the job |

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`jenkins_crumb`** | **`String`** | CSRF protection token | [default to nothing]

### Return type

`Nothing`

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **post_job_disable**
> `post_job_disable`(_api::`RemoteAccessApi`, `name`::`String`; `jenkins_crumb`=nothing, _mediaType=nothing) -> `Nothing`, `OpenAPI.Clients.ApiResponse` <br/>
> `post_job_disable`(_api::`RemoteAccessApi`, response_stream::`Channel`, `name`::`String`; `jenkins_crumb`=nothing, _mediaType=nothing) -> `Channel`{ `Nothing` }, `OpenAPI.Clients.ApiResponse`



Disable a job

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`RemoteAccessApi`** | API context | 
**`name`** | **`String`** | Name of the job |

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`jenkins_crumb`** | **`String`** | CSRF protection token | [default to nothing]

### Return type

`Nothing`

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **post_job_enable**
> `post_job_enable`(_api::`RemoteAccessApi`, `name`::`String`; `jenkins_crumb`=nothing, _mediaType=nothing) -> `Nothing`, `OpenAPI.Clients.ApiResponse` <br/>
> `post_job_enable`(_api::`RemoteAccessApi`, response_stream::`Channel`, `name`::`String`; `jenkins_crumb`=nothing, _mediaType=nothing) -> `Channel`{ `Nothing` }, `OpenAPI.Clients.ApiResponse`



Enable a job

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`RemoteAccessApi`** | API context | 
**`name`** | **`String`** | Name of the job |

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`jenkins_crumb`** | **`String`** | CSRF protection token | [default to nothing]

### Return type

`Nothing`

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **post_job_last_build_stop**
> `post_job_last_build_stop`(_api::`RemoteAccessApi`, `name`::`String`; `jenkins_crumb`=nothing, _mediaType=nothing) -> `Nothing`, `OpenAPI.Clients.ApiResponse` <br/>
> `post_job_last_build_stop`(_api::`RemoteAccessApi`, response_stream::`Channel`, `name`::`String`; `jenkins_crumb`=nothing, _mediaType=nothing) -> `Channel`{ `Nothing` }, `OpenAPI.Clients.ApiResponse`



Stop a job

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`RemoteAccessApi`** | API context | 
**`name`** | **`String`** | Name of the job |

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`jenkins_crumb`** | **`String`** | CSRF protection token | [default to nothing]

### Return type

`Nothing`

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **post_view_config**
> `post_view_config`(_api::`RemoteAccessApi`, `name`::`String`, `body`::`String`; `jenkins_crumb`=nothing, _mediaType=nothing) -> `Nothing`, `OpenAPI.Clients.ApiResponse` <br/>
> `post_view_config`(_api::`RemoteAccessApi`, response_stream::`Channel`, `name`::`String`, `body`::`String`; `jenkins_crumb`=nothing, _mediaType=nothing) -> `Channel`{ `Nothing` }, `OpenAPI.Clients.ApiResponse`



Update view configuration

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`RemoteAccessApi`** | API context | 
**`name`** | **`String`** | Name of the view |
**`body`** | **`String`** | View configuration in config.xml format |

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`jenkins_crumb`** | **`String`** | CSRF protection token | [default to nothing]

### Return type

`Nothing`

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

