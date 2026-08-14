# BlueOceanApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_pipeline_queue_item**](BlueOceanApi.md#delete_pipeline_queue_item) | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | 
[**get_authenticated_user**](BlueOceanApi.md#get_authenticated_user) | **GET** /blue/rest/organizations/{organization}/user/ | 
[**get_classes**](BlueOceanApi.md#get_classes) | **GET** /blue/rest/classes/{class} | 
[**get_json_web_key**](BlueOceanApi.md#get_json_web_key) | **GET** /jwt-auth/jwks/{key} | 
[**get_json_web_token**](BlueOceanApi.md#get_json_web_token) | **GET** /jwt-auth/token | 
[**get_organisation**](BlueOceanApi.md#get_organisation) | **GET** /blue/rest/organizations/{organization} | 
[**get_organisations**](BlueOceanApi.md#get_organisations) | **GET** /blue/rest/organizations/ | 
[**get_pipeline**](BlueOceanApi.md#get_pipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline} | 
[**get_pipeline_activities**](BlueOceanApi.md#get_pipeline_activities) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities | 
[**get_pipeline_branch**](BlueOceanApi.md#get_pipeline_branch) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ | 
[**get_pipeline_branch_run**](BlueOceanApi.md#get_pipeline_branch_run) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} | 
[**get_pipeline_branches**](BlueOceanApi.md#get_pipeline_branches) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches | 
[**get_pipeline_folder**](BlueOceanApi.md#get_pipeline_folder) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/ | 
[**get_pipeline_folder_pipeline**](BlueOceanApi.md#get_pipeline_folder_pipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} | 
[**get_pipeline_queue**](BlueOceanApi.md#get_pipeline_queue) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue | 
[**get_pipeline_run**](BlueOceanApi.md#get_pipeline_run) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} | 
[**get_pipeline_run_log**](BlueOceanApi.md#get_pipeline_run_log) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log | 
[**get_pipeline_run_node**](BlueOceanApi.md#get_pipeline_run_node) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} | 
[**get_pipeline_run_node_step**](BlueOceanApi.md#get_pipeline_run_node_step) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} | 
[**get_pipeline_run_node_step_log**](BlueOceanApi.md#get_pipeline_run_node_step_log) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log | 
[**get_pipeline_run_node_steps**](BlueOceanApi.md#get_pipeline_run_node_steps) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps | 
[**get_pipeline_run_nodes**](BlueOceanApi.md#get_pipeline_run_nodes) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes | 
[**get_pipeline_runs**](BlueOceanApi.md#get_pipeline_runs) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**get_pipelines**](BlueOceanApi.md#get_pipelines) | **GET** /blue/rest/organizations/{organization}/pipelines/ | 
[**get_s_c_m**](BlueOceanApi.md#get_s_c_m) | **GET** /blue/rest/organizations/{organization}/scm/{scm} | 
[**get_s_c_m_organisation_repositories**](BlueOceanApi.md#get_s_c_m_organisation_repositories) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories | 
[**get_s_c_m_organisation_repository**](BlueOceanApi.md#get_s_c_m_organisation_repository) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} | 
[**get_s_c_m_organisations**](BlueOceanApi.md#get_s_c_m_organisations) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations | 
[**get_user**](BlueOceanApi.md#get_user) | **GET** /blue/rest/organizations/{organization}/users/{user} | 
[**get_user_favorites**](BlueOceanApi.md#get_user_favorites) | **GET** /blue/rest/users/{user}/favorites | 
[**get_users**](BlueOceanApi.md#get_users) | **GET** /blue/rest/organizations/{organization}/users/ | 
[**post_pipeline_run**](BlueOceanApi.md#post_pipeline_run) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay | 
[**post_pipeline_runs**](BlueOceanApi.md#post_pipeline_runs) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**put_pipeline_favorite**](BlueOceanApi.md#put_pipeline_favorite) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite | 
[**put_pipeline_run**](BlueOceanApi.md#put_pipeline_run) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop | 
[**search**](BlueOceanApi.md#search) | **GET** /blue/rest/search/ | 
[**search_classes**](BlueOceanApi.md#search_classes) | **GET** /blue/rest/classes/ | 


# **delete_pipeline_queue_item**
> `delete_pipeline_queue_item`(_api::`BlueOceanApi`, `organization`::`String`, `pipeline`::`String`, `queue`::`String`; _mediaType=nothing) -> `Nothing`, `OpenAPI.Clients.ApiResponse` <br/>
> `delete_pipeline_queue_item`(_api::`BlueOceanApi`, response_stream::`Channel`, `organization`::`String`, `pipeline`::`String`, `queue`::`String`; _mediaType=nothing) -> `Channel`{ `Nothing` }, `OpenAPI.Clients.ApiResponse`



Delete queue item from an organization pipeline queue

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BlueOceanApi`** | API context | 
**`organization`** | **`String`** | Name of the organization |
**`pipeline`** | **`String`** | Name of the pipeline |
**`queue`** | **`String`** | Name of the queue item |

### Return type

`Nothing`

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_authenticated_user**
> `get_authenticated_user`(_api::`BlueOceanApi`, `organization`::`String`; _mediaType=nothing) -> `User`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_authenticated_user`(_api::`BlueOceanApi`, response_stream::`Channel`, `organization`::`String`; _mediaType=nothing) -> `Channel`{ `User` }, `OpenAPI.Clients.ApiResponse`



Retrieve authenticated user details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BlueOceanApi`** | API context | 
**`organization`** | **`String`** | Name of the organization |

### Return type

[**`User`**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_classes**
> `get_classes`(_api::`BlueOceanApi`, `class`::`String`; _mediaType=nothing) -> `String`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_classes`(_api::`BlueOceanApi`, response_stream::`Channel`, `class`::`String`; _mediaType=nothing) -> `Channel`{ `String` }, `OpenAPI.Clients.ApiResponse`



Get a list of class names supported by a given class

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BlueOceanApi`** | API context | 
**`class`** | **`String`** | Name of the class |

### Return type

**`String`**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_json_web_key**
> `get_json_web_key`(_api::`BlueOceanApi`, `key`::`Int64`; _mediaType=nothing) -> `String`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_json_web_key`(_api::`BlueOceanApi`, response_stream::`Channel`, `key`::`Int64`; _mediaType=nothing) -> `Channel`{ `String` }, `OpenAPI.Clients.ApiResponse`



Retrieve JSON Web Key

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BlueOceanApi`** | API context | 
**`key`** | **`Int64`** | Key ID received as part of JWT header field kid |

### Return type

**`String`**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_json_web_token**
> `get_json_web_token`(_api::`BlueOceanApi`; `expiry_time_in_mins`=nothing, `max_expiry_time_in_mins`=nothing, _mediaType=nothing) -> `String`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_json_web_token`(_api::`BlueOceanApi`, response_stream::`Channel`; `expiry_time_in_mins`=nothing, `max_expiry_time_in_mins`=nothing, _mediaType=nothing) -> `Channel`{ `String` }, `OpenAPI.Clients.ApiResponse`



Retrieve JSON Web Token

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BlueOceanApi`** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`expiry_time_in_mins`** | **`Int64`** | Token expiry time in minutes, default: 30 minutes | [default to nothing]
 **`max_expiry_time_in_mins`** | **`Int64`** | Maximum token expiry time in minutes, default: 480 minutes | [default to nothing]

### Return type

**`String`**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_organisation**
> `get_organisation`(_api::`BlueOceanApi`, `organization`::`String`; _mediaType=nothing) -> `Organisation`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_organisation`(_api::`BlueOceanApi`, response_stream::`Channel`, `organization`::`String`; _mediaType=nothing) -> `Channel`{ `Organisation` }, `OpenAPI.Clients.ApiResponse`



Retrieve organization details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BlueOceanApi`** | API context | 
**`organization`** | **`String`** | Name of the organization |

### Return type

[**`Organisation`**](Organisation.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_organisations**
> `get_organisations`(_api::`BlueOceanApi`; _mediaType=nothing) -> `Vector{Organisation}`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_organisations`(_api::`BlueOceanApi`, response_stream::`Channel`; _mediaType=nothing) -> `Channel`{ `Vector{Organisation}` }, `OpenAPI.Clients.ApiResponse`



Retrieve all organizations details

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**`Vector{Organisation}`**](Organisation.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_pipeline**
> `get_pipeline`(_api::`BlueOceanApi`, `organization`::`String`, `pipeline`::`String`; _mediaType=nothing) -> `Pipeline`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_pipeline`(_api::`BlueOceanApi`, response_stream::`Channel`, `organization`::`String`, `pipeline`::`String`; _mediaType=nothing) -> `Channel`{ `Pipeline` }, `OpenAPI.Clients.ApiResponse`



Retrieve pipeline details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BlueOceanApi`** | API context | 
**`organization`** | **`String`** | Name of the organization |
**`pipeline`** | **`String`** | Name of the pipeline |

### Return type

[**`Pipeline`**](Pipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_pipeline_activities**
> `get_pipeline_activities`(_api::`BlueOceanApi`, `organization`::`String`, `pipeline`::`String`; _mediaType=nothing) -> `Vector{PipelineActivity}`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_pipeline_activities`(_api::`BlueOceanApi`, response_stream::`Channel`, `organization`::`String`, `pipeline`::`String`; _mediaType=nothing) -> `Channel`{ `Vector{PipelineActivity}` }, `OpenAPI.Clients.ApiResponse`



Retrieve all activities details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BlueOceanApi`** | API context | 
**`organization`** | **`String`** | Name of the organization |
**`pipeline`** | **`String`** | Name of the pipeline |

### Return type

[**`Vector{PipelineActivity}`**](PipelineActivity.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_pipeline_branch**
> `get_pipeline_branch`(_api::`BlueOceanApi`, `organization`::`String`, `pipeline`::`String`, `branch`::`String`; _mediaType=nothing) -> `BranchImpl`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_pipeline_branch`(_api::`BlueOceanApi`, response_stream::`Channel`, `organization`::`String`, `pipeline`::`String`, `branch`::`String`; _mediaType=nothing) -> `Channel`{ `BranchImpl` }, `OpenAPI.Clients.ApiResponse`



Retrieve branch details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BlueOceanApi`** | API context | 
**`organization`** | **`String`** | Name of the organization |
**`pipeline`** | **`String`** | Name of the pipeline |
**`branch`** | **`String`** | Name of the branch |

### Return type

[**`BranchImpl`**](BranchImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_pipeline_branch_run**
> `get_pipeline_branch_run`(_api::`BlueOceanApi`, `organization`::`String`, `pipeline`::`String`, `branch`::`String`, `run`::`String`; _mediaType=nothing) -> `PipelineRun`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_pipeline_branch_run`(_api::`BlueOceanApi`, response_stream::`Channel`, `organization`::`String`, `pipeline`::`String`, `branch`::`String`, `run`::`String`; _mediaType=nothing) -> `Channel`{ `PipelineRun` }, `OpenAPI.Clients.ApiResponse`



Retrieve branch run details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BlueOceanApi`** | API context | 
**`organization`** | **`String`** | Name of the organization |
**`pipeline`** | **`String`** | Name of the pipeline |
**`branch`** | **`String`** | Name of the branch |
**`run`** | **`String`** | Name of the run |

### Return type

[**`PipelineRun`**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_pipeline_branches**
> `get_pipeline_branches`(_api::`BlueOceanApi`, `organization`::`String`, `pipeline`::`String`; _mediaType=nothing) -> `MultibranchPipeline`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_pipeline_branches`(_api::`BlueOceanApi`, response_stream::`Channel`, `organization`::`String`, `pipeline`::`String`; _mediaType=nothing) -> `Channel`{ `MultibranchPipeline` }, `OpenAPI.Clients.ApiResponse`



Retrieve all branches details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BlueOceanApi`** | API context | 
**`organization`** | **`String`** | Name of the organization |
**`pipeline`** | **`String`** | Name of the pipeline |

### Return type

[**`MultibranchPipeline`**](MultibranchPipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_pipeline_folder**
> `get_pipeline_folder`(_api::`BlueOceanApi`, `organization`::`String`, `folder`::`String`; _mediaType=nothing) -> `PipelineFolderImpl`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_pipeline_folder`(_api::`BlueOceanApi`, response_stream::`Channel`, `organization`::`String`, `folder`::`String`; _mediaType=nothing) -> `Channel`{ `PipelineFolderImpl` }, `OpenAPI.Clients.ApiResponse`



Retrieve pipeline folder for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BlueOceanApi`** | API context | 
**`organization`** | **`String`** | Name of the organization |
**`folder`** | **`String`** | Name of the folder |

### Return type

[**`PipelineFolderImpl`**](PipelineFolderImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_pipeline_folder_pipeline**
> `get_pipeline_folder_pipeline`(_api::`BlueOceanApi`, `organization`::`String`, `pipeline`::`String`, `folder`::`String`; _mediaType=nothing) -> `PipelineImpl`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_pipeline_folder_pipeline`(_api::`BlueOceanApi`, response_stream::`Channel`, `organization`::`String`, `pipeline`::`String`, `folder`::`String`; _mediaType=nothing) -> `Channel`{ `PipelineImpl` }, `OpenAPI.Clients.ApiResponse`



Retrieve pipeline details for an organization folder

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BlueOceanApi`** | API context | 
**`organization`** | **`String`** | Name of the organization |
**`pipeline`** | **`String`** | Name of the pipeline |
**`folder`** | **`String`** | Name of the folder |

### Return type

[**`PipelineImpl`**](PipelineImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_pipeline_queue**
> `get_pipeline_queue`(_api::`BlueOceanApi`, `organization`::`String`, `pipeline`::`String`; _mediaType=nothing) -> `Vector{QueueItemImpl}`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_pipeline_queue`(_api::`BlueOceanApi`, response_stream::`Channel`, `organization`::`String`, `pipeline`::`String`; _mediaType=nothing) -> `Channel`{ `Vector{QueueItemImpl}` }, `OpenAPI.Clients.ApiResponse`



Retrieve queue details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BlueOceanApi`** | API context | 
**`organization`** | **`String`** | Name of the organization |
**`pipeline`** | **`String`** | Name of the pipeline |

### Return type

[**`Vector{QueueItemImpl}`**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_pipeline_run**
> `get_pipeline_run`(_api::`BlueOceanApi`, `organization`::`String`, `pipeline`::`String`, `run`::`String`; _mediaType=nothing) -> `PipelineRun`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_pipeline_run`(_api::`BlueOceanApi`, response_stream::`Channel`, `organization`::`String`, `pipeline`::`String`, `run`::`String`; _mediaType=nothing) -> `Channel`{ `PipelineRun` }, `OpenAPI.Clients.ApiResponse`



Retrieve run details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BlueOceanApi`** | API context | 
**`organization`** | **`String`** | Name of the organization |
**`pipeline`** | **`String`** | Name of the pipeline |
**`run`** | **`String`** | Name of the run |

### Return type

[**`PipelineRun`**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_pipeline_run_log**
> `get_pipeline_run_log`(_api::`BlueOceanApi`, `organization`::`String`, `pipeline`::`String`, `run`::`String`; `start`=nothing, `download`=nothing, _mediaType=nothing) -> `String`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_pipeline_run_log`(_api::`BlueOceanApi`, response_stream::`Channel`, `organization`::`String`, `pipeline`::`String`, `run`::`String`; `start`=nothing, `download`=nothing, _mediaType=nothing) -> `Channel`{ `String` }, `OpenAPI.Clients.ApiResponse`



Get log for a pipeline run

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BlueOceanApi`** | API context | 
**`organization`** | **`String`** | Name of the organization |
**`pipeline`** | **`String`** | Name of the pipeline |
**`run`** | **`String`** | Name of the run |

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`start`** | **`Int64`** | Start position of the log | [default to nothing]
 **`download`** | **`Bool`** | Set to true in order to download the file, otherwise it&#39;s passed as a response body | [default to nothing]

### Return type

**`String`**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_pipeline_run_node**
> `get_pipeline_run_node`(_api::`BlueOceanApi`, `organization`::`String`, `pipeline`::`String`, `run`::`String`, `node`::`String`; _mediaType=nothing) -> `PipelineRunNode`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_pipeline_run_node`(_api::`BlueOceanApi`, response_stream::`Channel`, `organization`::`String`, `pipeline`::`String`, `run`::`String`, `node`::`String`; _mediaType=nothing) -> `Channel`{ `PipelineRunNode` }, `OpenAPI.Clients.ApiResponse`



Retrieve run node details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BlueOceanApi`** | API context | 
**`organization`** | **`String`** | Name of the organization |
**`pipeline`** | **`String`** | Name of the pipeline |
**`run`** | **`String`** | Name of the run |
**`node`** | **`String`** | Name of the node |

### Return type

[**`PipelineRunNode`**](PipelineRunNode.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_pipeline_run_node_step**
> `get_pipeline_run_node_step`(_api::`BlueOceanApi`, `organization`::`String`, `pipeline`::`String`, `run`::`String`, `node`::`String`, `step`::`String`; _mediaType=nothing) -> `PipelineStepImpl`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_pipeline_run_node_step`(_api::`BlueOceanApi`, response_stream::`Channel`, `organization`::`String`, `pipeline`::`String`, `run`::`String`, `node`::`String`, `step`::`String`; _mediaType=nothing) -> `Channel`{ `PipelineStepImpl` }, `OpenAPI.Clients.ApiResponse`



Retrieve run node details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BlueOceanApi`** | API context | 
**`organization`** | **`String`** | Name of the organization |
**`pipeline`** | **`String`** | Name of the pipeline |
**`run`** | **`String`** | Name of the run |
**`node`** | **`String`** | Name of the node |
**`step`** | **`String`** | Name of the step |

### Return type

[**`PipelineStepImpl`**](PipelineStepImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_pipeline_run_node_step_log**
> `get_pipeline_run_node_step_log`(_api::`BlueOceanApi`, `organization`::`String`, `pipeline`::`String`, `run`::`String`, `node`::`String`, `step`::`String`; _mediaType=nothing) -> `String`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_pipeline_run_node_step_log`(_api::`BlueOceanApi`, response_stream::`Channel`, `organization`::`String`, `pipeline`::`String`, `run`::`String`, `node`::`String`, `step`::`String`; _mediaType=nothing) -> `Channel`{ `String` }, `OpenAPI.Clients.ApiResponse`



Get log for a pipeline run node step

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BlueOceanApi`** | API context | 
**`organization`** | **`String`** | Name of the organization |
**`pipeline`** | **`String`** | Name of the pipeline |
**`run`** | **`String`** | Name of the run |
**`node`** | **`String`** | Name of the node |
**`step`** | **`String`** | Name of the step |

### Return type

**`String`**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_pipeline_run_node_steps**
> `get_pipeline_run_node_steps`(_api::`BlueOceanApi`, `organization`::`String`, `pipeline`::`String`, `run`::`String`, `node`::`String`; _mediaType=nothing) -> `Vector{PipelineStepImpl}`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_pipeline_run_node_steps`(_api::`BlueOceanApi`, response_stream::`Channel`, `organization`::`String`, `pipeline`::`String`, `run`::`String`, `node`::`String`; _mediaType=nothing) -> `Channel`{ `Vector{PipelineStepImpl}` }, `OpenAPI.Clients.ApiResponse`



Retrieve run node steps details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BlueOceanApi`** | API context | 
**`organization`** | **`String`** | Name of the organization |
**`pipeline`** | **`String`** | Name of the pipeline |
**`run`** | **`String`** | Name of the run |
**`node`** | **`String`** | Name of the node |

### Return type

[**`Vector{PipelineStepImpl}`**](PipelineStepImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_pipeline_run_nodes**
> `get_pipeline_run_nodes`(_api::`BlueOceanApi`, `organization`::`String`, `pipeline`::`String`, `run`::`String`; _mediaType=nothing) -> `Vector{PipelineRunNode}`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_pipeline_run_nodes`(_api::`BlueOceanApi`, response_stream::`Channel`, `organization`::`String`, `pipeline`::`String`, `run`::`String`; _mediaType=nothing) -> `Channel`{ `Vector{PipelineRunNode}` }, `OpenAPI.Clients.ApiResponse`



Retrieve run nodes details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BlueOceanApi`** | API context | 
**`organization`** | **`String`** | Name of the organization |
**`pipeline`** | **`String`** | Name of the pipeline |
**`run`** | **`String`** | Name of the run |

### Return type

[**`Vector{PipelineRunNode}`**](PipelineRunNode.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_pipeline_runs**
> `get_pipeline_runs`(_api::`BlueOceanApi`, `organization`::`String`, `pipeline`::`String`; _mediaType=nothing) -> `Vector{PipelineRun}`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_pipeline_runs`(_api::`BlueOceanApi`, response_stream::`Channel`, `organization`::`String`, `pipeline`::`String`; _mediaType=nothing) -> `Channel`{ `Vector{PipelineRun}` }, `OpenAPI.Clients.ApiResponse`



Retrieve all runs details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BlueOceanApi`** | API context | 
**`organization`** | **`String`** | Name of the organization |
**`pipeline`** | **`String`** | Name of the pipeline |

### Return type

[**`Vector{PipelineRun}`**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_pipelines**
> `get_pipelines`(_api::`BlueOceanApi`, `organization`::`String`; _mediaType=nothing) -> `Vector{Pipeline}`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_pipelines`(_api::`BlueOceanApi`, response_stream::`Channel`, `organization`::`String`; _mediaType=nothing) -> `Channel`{ `Vector{Pipeline}` }, `OpenAPI.Clients.ApiResponse`



Retrieve all pipelines details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BlueOceanApi`** | API context | 
**`organization`** | **`String`** | Name of the organization |

### Return type

[**`Vector{Pipeline}`**](Pipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_s_c_m**
> `get_s_c_m`(_api::`BlueOceanApi`, `organization`::`String`, `scm`::`String`; _mediaType=nothing) -> `GithubScm`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_s_c_m`(_api::`BlueOceanApi`, response_stream::`Channel`, `organization`::`String`, `scm`::`String`; _mediaType=nothing) -> `Channel`{ `GithubScm` }, `OpenAPI.Clients.ApiResponse`



Retrieve SCM details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BlueOceanApi`** | API context | 
**`organization`** | **`String`** | Name of the organization |
**`scm`** | **`String`** | Name of SCM |

### Return type

[**`GithubScm`**](GithubScm.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_s_c_m_organisation_repositories**
> `get_s_c_m_organisation_repositories`(_api::`BlueOceanApi`, `organization`::`String`, `scm`::`String`, `scm_organisation`::`String`; `credential_id`=nothing, `page_size`=nothing, `page_number`=nothing, _mediaType=nothing) -> `Vector{GithubOrganization}`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_s_c_m_organisation_repositories`(_api::`BlueOceanApi`, response_stream::`Channel`, `organization`::`String`, `scm`::`String`, `scm_organisation`::`String`; `credential_id`=nothing, `page_size`=nothing, `page_number`=nothing, _mediaType=nothing) -> `Channel`{ `Vector{GithubOrganization}` }, `OpenAPI.Clients.ApiResponse`



Retrieve SCM organization repositories details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BlueOceanApi`** | API context | 
**`organization`** | **`String`** | Name of the organization |
**`scm`** | **`String`** | Name of SCM |
**`scm_organisation`** | **`String`** | Name of the SCM organization |

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`credential_id`** | **`String`** | Credential ID | [default to nothing]
 **`page_size`** | **`Int64`** | Number of items in a page | [default to nothing]
 **`page_number`** | **`Int64`** | Page number | [default to nothing]

### Return type

[**`Vector{GithubOrganization}`**](GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_s_c_m_organisation_repository**
> `get_s_c_m_organisation_repository`(_api::`BlueOceanApi`, `organization`::`String`, `scm`::`String`, `scm_organisation`::`String`, `repository`::`String`; `credential_id`=nothing, _mediaType=nothing) -> `Vector{GithubOrganization}`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_s_c_m_organisation_repository`(_api::`BlueOceanApi`, response_stream::`Channel`, `organization`::`String`, `scm`::`String`, `scm_organisation`::`String`, `repository`::`String`; `credential_id`=nothing, _mediaType=nothing) -> `Channel`{ `Vector{GithubOrganization}` }, `OpenAPI.Clients.ApiResponse`



Retrieve SCM organization repository details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BlueOceanApi`** | API context | 
**`organization`** | **`String`** | Name of the organization |
**`scm`** | **`String`** | Name of SCM |
**`scm_organisation`** | **`String`** | Name of the SCM organization |
**`repository`** | **`String`** | Name of the SCM repository |

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`credential_id`** | **`String`** | Credential ID | [default to nothing]

### Return type

[**`Vector{GithubOrganization}`**](GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_s_c_m_organisations**
> `get_s_c_m_organisations`(_api::`BlueOceanApi`, `organization`::`String`, `scm`::`String`; `credential_id`=nothing, _mediaType=nothing) -> `Vector{GithubOrganization}`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_s_c_m_organisations`(_api::`BlueOceanApi`, response_stream::`Channel`, `organization`::`String`, `scm`::`String`; `credential_id`=nothing, _mediaType=nothing) -> `Channel`{ `Vector{GithubOrganization}` }, `OpenAPI.Clients.ApiResponse`



Retrieve SCM organizations details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BlueOceanApi`** | API context | 
**`organization`** | **`String`** | Name of the organization |
**`scm`** | **`String`** | Name of SCM |

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`credential_id`** | **`String`** | Credential ID | [default to nothing]

### Return type

[**`Vector{GithubOrganization}`**](GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_user**
> `get_user`(_api::`BlueOceanApi`, `organization`::`String`, `user`::`String`; _mediaType=nothing) -> `User`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_user`(_api::`BlueOceanApi`, response_stream::`Channel`, `organization`::`String`, `user`::`String`; _mediaType=nothing) -> `Channel`{ `User` }, `OpenAPI.Clients.ApiResponse`



Retrieve user details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BlueOceanApi`** | API context | 
**`organization`** | **`String`** | Name of the organization |
**`user`** | **`String`** | Name of the user |

### Return type

[**`User`**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_user_favorites**
> `get_user_favorites`(_api::`BlueOceanApi`, `user`::`String`; _mediaType=nothing) -> `Vector{FavoriteImpl}`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_user_favorites`(_api::`BlueOceanApi`, response_stream::`Channel`, `user`::`String`; _mediaType=nothing) -> `Channel`{ `Vector{FavoriteImpl}` }, `OpenAPI.Clients.ApiResponse`



Retrieve user favorites details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BlueOceanApi`** | API context | 
**`user`** | **`String`** | Name of the user |

### Return type

[**`Vector{FavoriteImpl}`**](FavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_users**
> `get_users`(_api::`BlueOceanApi`, `organization`::`String`; _mediaType=nothing) -> `User`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_users`(_api::`BlueOceanApi`, response_stream::`Channel`, `organization`::`String`; _mediaType=nothing) -> `Channel`{ `User` }, `OpenAPI.Clients.ApiResponse`



Retrieve users details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BlueOceanApi`** | API context | 
**`organization`** | **`String`** | Name of the organization |

### Return type

[**`User`**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **post_pipeline_run**
> `post_pipeline_run`(_api::`BlueOceanApi`, `organization`::`String`, `pipeline`::`String`, `run`::`String`; _mediaType=nothing) -> `QueueItemImpl`, `OpenAPI.Clients.ApiResponse` <br/>
> `post_pipeline_run`(_api::`BlueOceanApi`, response_stream::`Channel`, `organization`::`String`, `pipeline`::`String`, `run`::`String`; _mediaType=nothing) -> `Channel`{ `QueueItemImpl` }, `OpenAPI.Clients.ApiResponse`



Replay an organization pipeline run

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BlueOceanApi`** | API context | 
**`organization`** | **`String`** | Name of the organization |
**`pipeline`** | **`String`** | Name of the pipeline |
**`run`** | **`String`** | Name of the run |

### Return type

[**`QueueItemImpl`**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **post_pipeline_runs**
> `post_pipeline_runs`(_api::`BlueOceanApi`, `organization`::`String`, `pipeline`::`String`; _mediaType=nothing) -> `QueueItemImpl`, `OpenAPI.Clients.ApiResponse` <br/>
> `post_pipeline_runs`(_api::`BlueOceanApi`, response_stream::`Channel`, `organization`::`String`, `pipeline`::`String`; _mediaType=nothing) -> `Channel`{ `QueueItemImpl` }, `OpenAPI.Clients.ApiResponse`



Start a build for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BlueOceanApi`** | API context | 
**`organization`** | **`String`** | Name of the organization |
**`pipeline`** | **`String`** | Name of the pipeline |

### Return type

[**`QueueItemImpl`**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **put_pipeline_favorite**
> `put_pipeline_favorite`(_api::`BlueOceanApi`, `organization`::`String`, `pipeline`::`String`, `body`::`Bool`; _mediaType=nothing) -> `FavoriteImpl`, `OpenAPI.Clients.ApiResponse` <br/>
> `put_pipeline_favorite`(_api::`BlueOceanApi`, response_stream::`Channel`, `organization`::`String`, `pipeline`::`String`, `body`::`Bool`; _mediaType=nothing) -> `Channel`{ `FavoriteImpl` }, `OpenAPI.Clients.ApiResponse`



Favorite/unfavorite a pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BlueOceanApi`** | API context | 
**`organization`** | **`String`** | Name of the organization |
**`pipeline`** | **`String`** | Name of the pipeline |
**`body`** | **`Bool`** | Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite |

### Return type

[**`FavoriteImpl`**](FavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **put_pipeline_run**
> `put_pipeline_run`(_api::`BlueOceanApi`, `organization`::`String`, `pipeline`::`String`, `run`::`String`; `blocking`=nothing, `time_out_in_secs`=nothing, _mediaType=nothing) -> `PipelineRun`, `OpenAPI.Clients.ApiResponse` <br/>
> `put_pipeline_run`(_api::`BlueOceanApi`, response_stream::`Channel`, `organization`::`String`, `pipeline`::`String`, `run`::`String`; `blocking`=nothing, `time_out_in_secs`=nothing, _mediaType=nothing) -> `Channel`{ `PipelineRun` }, `OpenAPI.Clients.ApiResponse`



Stop a build of an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BlueOceanApi`** | API context | 
**`organization`** | **`String`** | Name of the organization |
**`pipeline`** | **`String`** | Name of the pipeline |
**`run`** | **`String`** | Name of the run |

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`blocking`** | **`String`** | Set to true to make blocking stop, default: false | [default to nothing]
 **`time_out_in_secs`** | **`Int64`** | Timeout in seconds, default: 10 seconds | [default to nothing]

### Return type

[**`PipelineRun`**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **search**
> `search`(_api::`BlueOceanApi`, `q`::`String`; _mediaType=nothing) -> `String`, `OpenAPI.Clients.ApiResponse` <br/>
> `search`(_api::`BlueOceanApi`, response_stream::`Channel`, `q`::`String`; _mediaType=nothing) -> `Channel`{ `String` }, `OpenAPI.Clients.ApiResponse`



Search for any resource details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BlueOceanApi`** | API context | 
**`q`** | **`String`** | Query string |

### Return type

**`String`**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **search_classes**
> `search_classes`(_api::`BlueOceanApi`, `q`::`String`; _mediaType=nothing) -> `String`, `OpenAPI.Clients.ApiResponse` <br/>
> `search_classes`(_api::`BlueOceanApi`, response_stream::`Channel`, `q`::`String`; _mediaType=nothing) -> `Channel`{ `String` }, `OpenAPI.Clients.ApiResponse`



Get classes details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`BlueOceanApi`** | API context | 
**`q`** | **`String`** | Query string containing an array of class names |

### Return type

**`String`**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

