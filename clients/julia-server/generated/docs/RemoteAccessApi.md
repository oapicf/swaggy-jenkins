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
> `get_computer`(req::`HTTP.Request`, `depth`::`Int64`;) -> `ComputerSet`



Retrieve computer details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`depth`** | **`Int64`**| Recursion depth in response model |

### Return type

[**`ComputerSet`**](ComputerSet.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_jenkins**
> `get_jenkins`(req::`HTTP.Request`;) -> `Hudson`



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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_job**
> `get_job`(req::`HTTP.Request`, `name`::`String`;) -> `FreeStyleProject`



Retrieve job details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`name`** | **`String`**| Name of the job |

### Return type

[**`FreeStyleProject`**](FreeStyleProject.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_job_config**
> `get_job_config`(req::`HTTP.Request`, `name`::`String`;) -> `String`



Retrieve job configuration

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`name`** | **`String`**| Name of the job |

### Return type

**`String`**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_job_last_build**
> `get_job_last_build`(req::`HTTP.Request`, `name`::`String`;) -> `FreeStyleBuild`



Retrieve job's last build details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`name`** | **`String`**| Name of the job |

### Return type

[**`FreeStyleBuild`**](FreeStyleBuild.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_job_progressive_text**
> `get_job_progressive_text`(req::`HTTP.Request`, `name`::`String`, `number`::`String`, `start`::`String`;) -> `Nothing`



Retrieve job's build progressive text output

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`name`** | **`String`**| Name of the job |
**`number`** | **`String`**| Build number |
**`start`** | **`String`**| Starting point of progressive text output |

### Return type

`Nothing`

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_queue**
> `get_queue`(req::`HTTP.Request`;) -> `Queue`



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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_queue_item**
> `get_queue_item`(req::`HTTP.Request`, `number`::`String`;) -> `Queue`



Retrieve queued item details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`number`** | **`String`**| Queue number |

### Return type

[**`Queue`**](Queue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_view**
> `get_view`(req::`HTTP.Request`, `name`::`String`;) -> `ListView`



Retrieve view details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`name`** | **`String`**| Name of the view |

### Return type

[**`ListView`**](ListView.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_view_config**
> `get_view_config`(req::`HTTP.Request`, `name`::`String`;) -> `String`



Retrieve view configuration

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`name`** | **`String`**| Name of the view |

### Return type

**`String`**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **head_jenkins**
> `head_jenkins`(req::`HTTP.Request`;) -> `Nothing`



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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_create_item**
> `post_create_item`(req::`HTTP.Request`, `name`::`String`; `from`=nothing, `mode`=nothing, `jenkins_crumb`=nothing, `content_type`=nothing, `body`=nothing,) -> `Nothing`



Create a new job using job configuration, or copied from an existing job

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`name`** | **`String`**| Name of the new job |

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`from`** | **`String`**| Existing job to copy from | [default to nothing]
 **`mode`** | **`String`**| Set to &#39;copy&#39; for copying an existing job | [default to nothing]
 **`jenkins_crumb`** | **`String`**| CSRF protection token | [default to nothing]
 **`content_type`** | **`String`**| Content type header application/xml | [default to nothing]
 **`body`** | **`String`**| Job configuration in config.xml format | 

### Return type

`Nothing`

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_create_view**
> `post_create_view`(req::`HTTP.Request`, `name`::`String`; `jenkins_crumb`=nothing, `content_type`=nothing, `body`=nothing,) -> `Nothing`



Create a new view using view configuration

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`name`** | **`String`**| Name of the new view |

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`jenkins_crumb`** | **`String`**| CSRF protection token | [default to nothing]
 **`content_type`** | **`String`**| Content type header application/xml | [default to nothing]
 **`body`** | **`String`**| View configuration in config.xml format | 

### Return type

`Nothing`

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_job_build**
> `post_job_build`(req::`HTTP.Request`, `name`::`String`, `json`::`String`; `token`=nothing, `jenkins_crumb`=nothing,) -> `Nothing`



Build a job

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`name`** | **`String`**| Name of the job |
**`json`** | **`String`**|  |

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`token`** | **`String`**|  | [default to nothing]
 **`jenkins_crumb`** | **`String`**| CSRF protection token | [default to nothing]

### Return type

`Nothing`

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_job_config**
> `post_job_config`(req::`HTTP.Request`, `name`::`String`, `body`::`String`; `jenkins_crumb`=nothing,) -> `Nothing`



Update job configuration

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`name`** | **`String`**| Name of the job |
**`body`** | **`String`**| Job configuration in config.xml format |

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`jenkins_crumb`** | **`String`**| CSRF protection token | [default to nothing]

### Return type

`Nothing`

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_job_delete**
> `post_job_delete`(req::`HTTP.Request`, `name`::`String`; `jenkins_crumb`=nothing,) -> `Nothing`



Delete a job

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`name`** | **`String`**| Name of the job |

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`jenkins_crumb`** | **`String`**| CSRF protection token | [default to nothing]

### Return type

`Nothing`

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_job_disable**
> `post_job_disable`(req::`HTTP.Request`, `name`::`String`; `jenkins_crumb`=nothing,) -> `Nothing`



Disable a job

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`name`** | **`String`**| Name of the job |

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`jenkins_crumb`** | **`String`**| CSRF protection token | [default to nothing]

### Return type

`Nothing`

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_job_enable**
> `post_job_enable`(req::`HTTP.Request`, `name`::`String`; `jenkins_crumb`=nothing,) -> `Nothing`



Enable a job

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`name`** | **`String`**| Name of the job |

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`jenkins_crumb`** | **`String`**| CSRF protection token | [default to nothing]

### Return type

`Nothing`

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_job_last_build_stop**
> `post_job_last_build_stop`(req::`HTTP.Request`, `name`::`String`; `jenkins_crumb`=nothing,) -> `Nothing`



Stop a job

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`name`** | **`String`**| Name of the job |

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`jenkins_crumb`** | **`String`**| CSRF protection token | [default to nothing]

### Return type

`Nothing`

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_view_config**
> `post_view_config`(req::`HTTP.Request`, `name`::`String`, `body`::`String`; `jenkins_crumb`=nothing,) -> `Nothing`



Update view configuration

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`name`** | **`String`**| Name of the view |
**`body`** | **`String`**| View configuration in config.xml format |

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`jenkins_crumb`** | **`String`**| CSRF protection token | [default to nothing]

### Return type

`Nothing`

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

