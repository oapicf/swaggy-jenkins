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
> `delete_pipeline_queue_item`(req::`HTTP.Request`, `organization`::`String`, `pipeline`::`String`, `queue`::`String`;) -> `Nothing`



Delete queue item from an organization pipeline queue

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`organization`** | **`String`**| Name of the organization |
**`pipeline`** | **`String`**| Name of the pipeline |
**`queue`** | **`String`**| Name of the queue item |

### Return type

`Nothing`

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_authenticated_user**
> `get_authenticated_user`(req::`HTTP.Request`, `organization`::`String`;) -> `User`



Retrieve authenticated user details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`organization`** | **`String`**| Name of the organization |

### Return type

[**`User`**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_classes**
> `get_classes`(req::`HTTP.Request`, `class`::`String`;) -> `String`



Get a list of class names supported by a given class

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`class`** | **`String`**| Name of the class |

### Return type

**`String`**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_json_web_key**
> `get_json_web_key`(req::`HTTP.Request`, `key`::`Int64`;) -> `String`



Retrieve JSON Web Key

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`key`** | **`Int64`**| Key ID received as part of JWT header field kid |

### Return type

**`String`**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_json_web_token**
> `get_json_web_token`(req::`HTTP.Request`; `expiry_time_in_mins`=nothing, `max_expiry_time_in_mins`=nothing,) -> `String`



Retrieve JSON Web Token

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`expiry_time_in_mins`** | **`Int64`**| Token expiry time in minutes, default: 30 minutes | [default to nothing]
 **`max_expiry_time_in_mins`** | **`Int64`**| Maximum token expiry time in minutes, default: 480 minutes | [default to nothing]

### Return type

**`String`**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_organisation**
> `get_organisation`(req::`HTTP.Request`, `organization`::`String`;) -> `Organisation`



Retrieve organization details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`organization`** | **`String`**| Name of the organization |

### Return type

[**`Organisation`**](Organisation.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_organisations**
> `get_organisations`(req::`HTTP.Request`;) -> `Vector{Organisation}`



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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline**
> `get_pipeline`(req::`HTTP.Request`, `organization`::`String`, `pipeline`::`String`;) -> `Pipeline`



Retrieve pipeline details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`organization`** | **`String`**| Name of the organization |
**`pipeline`** | **`String`**| Name of the pipeline |

### Return type

[**`Pipeline`**](Pipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_activities**
> `get_pipeline_activities`(req::`HTTP.Request`, `organization`::`String`, `pipeline`::`String`;) -> `Vector{PipelineActivity}`



Retrieve all activities details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`organization`** | **`String`**| Name of the organization |
**`pipeline`** | **`String`**| Name of the pipeline |

### Return type

[**`Vector{PipelineActivity}`**](PipelineActivity.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_branch**
> `get_pipeline_branch`(req::`HTTP.Request`, `organization`::`String`, `pipeline`::`String`, `branch`::`String`;) -> `BranchImpl`



Retrieve branch details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`organization`** | **`String`**| Name of the organization |
**`pipeline`** | **`String`**| Name of the pipeline |
**`branch`** | **`String`**| Name of the branch |

### Return type

[**`BranchImpl`**](BranchImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_branch_run**
> `get_pipeline_branch_run`(req::`HTTP.Request`, `organization`::`String`, `pipeline`::`String`, `branch`::`String`, `run`::`String`;) -> `PipelineRun`



Retrieve branch run details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`organization`** | **`String`**| Name of the organization |
**`pipeline`** | **`String`**| Name of the pipeline |
**`branch`** | **`String`**| Name of the branch |
**`run`** | **`String`**| Name of the run |

### Return type

[**`PipelineRun`**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_branches**
> `get_pipeline_branches`(req::`HTTP.Request`, `organization`::`String`, `pipeline`::`String`;) -> `MultibranchPipeline`



Retrieve all branches details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`organization`** | **`String`**| Name of the organization |
**`pipeline`** | **`String`**| Name of the pipeline |

### Return type

[**`MultibranchPipeline`**](MultibranchPipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_folder**
> `get_pipeline_folder`(req::`HTTP.Request`, `organization`::`String`, `folder`::`String`;) -> `PipelineFolderImpl`



Retrieve pipeline folder for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`organization`** | **`String`**| Name of the organization |
**`folder`** | **`String`**| Name of the folder |

### Return type

[**`PipelineFolderImpl`**](PipelineFolderImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_folder_pipeline**
> `get_pipeline_folder_pipeline`(req::`HTTP.Request`, `organization`::`String`, `pipeline`::`String`, `folder`::`String`;) -> `PipelineImpl`



Retrieve pipeline details for an organization folder

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`organization`** | **`String`**| Name of the organization |
**`pipeline`** | **`String`**| Name of the pipeline |
**`folder`** | **`String`**| Name of the folder |

### Return type

[**`PipelineImpl`**](PipelineImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_queue**
> `get_pipeline_queue`(req::`HTTP.Request`, `organization`::`String`, `pipeline`::`String`;) -> `Vector{QueueItemImpl}`



Retrieve queue details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`organization`** | **`String`**| Name of the organization |
**`pipeline`** | **`String`**| Name of the pipeline |

### Return type

[**`Vector{QueueItemImpl}`**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_run**
> `get_pipeline_run`(req::`HTTP.Request`, `organization`::`String`, `pipeline`::`String`, `run`::`String`;) -> `PipelineRun`



Retrieve run details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`organization`** | **`String`**| Name of the organization |
**`pipeline`** | **`String`**| Name of the pipeline |
**`run`** | **`String`**| Name of the run |

### Return type

[**`PipelineRun`**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_run_log**
> `get_pipeline_run_log`(req::`HTTP.Request`, `organization`::`String`, `pipeline`::`String`, `run`::`String`; `start`=nothing, `download`=nothing,) -> `String`



Get log for a pipeline run

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`organization`** | **`String`**| Name of the organization |
**`pipeline`** | **`String`**| Name of the pipeline |
**`run`** | **`String`**| Name of the run |

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`start`** | **`Int64`**| Start position of the log | [default to nothing]
 **`download`** | **`Bool`**| Set to true in order to download the file, otherwise it&#39;s passed as a response body | [default to nothing]

### Return type

**`String`**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_run_node**
> `get_pipeline_run_node`(req::`HTTP.Request`, `organization`::`String`, `pipeline`::`String`, `run`::`String`, `node`::`String`;) -> `PipelineRunNode`



Retrieve run node details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`organization`** | **`String`**| Name of the organization |
**`pipeline`** | **`String`**| Name of the pipeline |
**`run`** | **`String`**| Name of the run |
**`node`** | **`String`**| Name of the node |

### Return type

[**`PipelineRunNode`**](PipelineRunNode.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_run_node_step**
> `get_pipeline_run_node_step`(req::`HTTP.Request`, `organization`::`String`, `pipeline`::`String`, `run`::`String`, `node`::`String`, `step`::`String`;) -> `PipelineStepImpl`



Retrieve run node details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`organization`** | **`String`**| Name of the organization |
**`pipeline`** | **`String`**| Name of the pipeline |
**`run`** | **`String`**| Name of the run |
**`node`** | **`String`**| Name of the node |
**`step`** | **`String`**| Name of the step |

### Return type

[**`PipelineStepImpl`**](PipelineStepImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_run_node_step_log**
> `get_pipeline_run_node_step_log`(req::`HTTP.Request`, `organization`::`String`, `pipeline`::`String`, `run`::`String`, `node`::`String`, `step`::`String`;) -> `String`



Get log for a pipeline run node step

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`organization`** | **`String`**| Name of the organization |
**`pipeline`** | **`String`**| Name of the pipeline |
**`run`** | **`String`**| Name of the run |
**`node`** | **`String`**| Name of the node |
**`step`** | **`String`**| Name of the step |

### Return type

**`String`**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_run_node_steps**
> `get_pipeline_run_node_steps`(req::`HTTP.Request`, `organization`::`String`, `pipeline`::`String`, `run`::`String`, `node`::`String`;) -> `Vector{PipelineStepImpl}`



Retrieve run node steps details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`organization`** | **`String`**| Name of the organization |
**`pipeline`** | **`String`**| Name of the pipeline |
**`run`** | **`String`**| Name of the run |
**`node`** | **`String`**| Name of the node |

### Return type

[**`Vector{PipelineStepImpl}`**](PipelineStepImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_run_nodes**
> `get_pipeline_run_nodes`(req::`HTTP.Request`, `organization`::`String`, `pipeline`::`String`, `run`::`String`;) -> `Vector{PipelineRunNode}`



Retrieve run nodes details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`organization`** | **`String`**| Name of the organization |
**`pipeline`** | **`String`**| Name of the pipeline |
**`run`** | **`String`**| Name of the run |

### Return type

[**`Vector{PipelineRunNode}`**](PipelineRunNode.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_runs**
> `get_pipeline_runs`(req::`HTTP.Request`, `organization`::`String`, `pipeline`::`String`;) -> `Vector{PipelineRun}`



Retrieve all runs details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`organization`** | **`String`**| Name of the organization |
**`pipeline`** | **`String`**| Name of the pipeline |

### Return type

[**`Vector{PipelineRun}`**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipelines**
> `get_pipelines`(req::`HTTP.Request`, `organization`::`String`;) -> `Vector{Pipeline}`



Retrieve all pipelines details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`organization`** | **`String`**| Name of the organization |

### Return type

[**`Vector{Pipeline}`**](Pipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_s_c_m**
> `get_s_c_m`(req::`HTTP.Request`, `organization`::`String`, `scm`::`String`;) -> `GithubScm`



Retrieve SCM details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`organization`** | **`String`**| Name of the organization |
**`scm`** | **`String`**| Name of SCM |

### Return type

[**`GithubScm`**](GithubScm.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_s_c_m_organisation_repositories**
> `get_s_c_m_organisation_repositories`(req::`HTTP.Request`, `organization`::`String`, `scm`::`String`, `scm_organisation`::`String`; `credential_id`=nothing, `page_size`=nothing, `page_number`=nothing,) -> `Vector{GithubOrganization}`



Retrieve SCM organization repositories details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`organization`** | **`String`**| Name of the organization |
**`scm`** | **`String`**| Name of SCM |
**`scm_organisation`** | **`String`**| Name of the SCM organization |

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`credential_id`** | **`String`**| Credential ID | [default to nothing]
 **`page_size`** | **`Int64`**| Number of items in a page | [default to nothing]
 **`page_number`** | **`Int64`**| Page number | [default to nothing]

### Return type

[**`Vector{GithubOrganization}`**](GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_s_c_m_organisation_repository**
> `get_s_c_m_organisation_repository`(req::`HTTP.Request`, `organization`::`String`, `scm`::`String`, `scm_organisation`::`String`, `repository`::`String`; `credential_id`=nothing,) -> `Vector{GithubOrganization}`



Retrieve SCM organization repository details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`organization`** | **`String`**| Name of the organization |
**`scm`** | **`String`**| Name of SCM |
**`scm_organisation`** | **`String`**| Name of the SCM organization |
**`repository`** | **`String`**| Name of the SCM repository |

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`credential_id`** | **`String`**| Credential ID | [default to nothing]

### Return type

[**`Vector{GithubOrganization}`**](GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_s_c_m_organisations**
> `get_s_c_m_organisations`(req::`HTTP.Request`, `organization`::`String`, `scm`::`String`; `credential_id`=nothing,) -> `Vector{GithubOrganization}`



Retrieve SCM organizations details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`organization`** | **`String`**| Name of the organization |
**`scm`** | **`String`**| Name of SCM |

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`credential_id`** | **`String`**| Credential ID | [default to nothing]

### Return type

[**`Vector{GithubOrganization}`**](GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user**
> `get_user`(req::`HTTP.Request`, `organization`::`String`, `user`::`String`;) -> `User`



Retrieve user details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`organization`** | **`String`**| Name of the organization |
**`user`** | **`String`**| Name of the user |

### Return type

[**`User`**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_favorites**
> `get_user_favorites`(req::`HTTP.Request`, `user`::`String`;) -> `Vector{FavoriteImpl}`



Retrieve user favorites details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`user`** | **`String`**| Name of the user |

### Return type

[**`Vector{FavoriteImpl}`**](FavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_users**
> `get_users`(req::`HTTP.Request`, `organization`::`String`;) -> `User`



Retrieve users details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`organization`** | **`String`**| Name of the organization |

### Return type

[**`User`**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_pipeline_run**
> `post_pipeline_run`(req::`HTTP.Request`, `organization`::`String`, `pipeline`::`String`, `run`::`String`;) -> `QueueItemImpl`



Replay an organization pipeline run

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`organization`** | **`String`**| Name of the organization |
**`pipeline`** | **`String`**| Name of the pipeline |
**`run`** | **`String`**| Name of the run |

### Return type

[**`QueueItemImpl`**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_pipeline_runs**
> `post_pipeline_runs`(req::`HTTP.Request`, `organization`::`String`, `pipeline`::`String`;) -> `QueueItemImpl`



Start a build for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`organization`** | **`String`**| Name of the organization |
**`pipeline`** | **`String`**| Name of the pipeline |

### Return type

[**`QueueItemImpl`**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_pipeline_favorite**
> `put_pipeline_favorite`(req::`HTTP.Request`, `organization`::`String`, `pipeline`::`String`, `body`::`Bool`;) -> `FavoriteImpl`



Favorite/unfavorite a pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`organization`** | **`String`**| Name of the organization |
**`pipeline`** | **`String`**| Name of the pipeline |
**`body`** | **`Bool`**| Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite |

### Return type

[**`FavoriteImpl`**](FavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_pipeline_run**
> `put_pipeline_run`(req::`HTTP.Request`, `organization`::`String`, `pipeline`::`String`, `run`::`String`; `blocking`=nothing, `time_out_in_secs`=nothing,) -> `PipelineRun`



Stop a build of an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`organization`** | **`String`**| Name of the organization |
**`pipeline`** | **`String`**| Name of the pipeline |
**`run`** | **`String`**| Name of the run |

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`blocking`** | **`String`**| Set to true to make blocking stop, default: false | [default to nothing]
 **`time_out_in_secs`** | **`Int64`**| Timeout in seconds, default: 10 seconds | [default to nothing]

### Return type

[**`PipelineRun`**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search**
> `search`(req::`HTTP.Request`, `q`::`String`;) -> `String`



Search for any resource details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`q`** | **`String`**| Query string |

### Return type

**`String`**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_classes**
> `search_classes`(req::`HTTP.Request`, `q`::`String`;) -> `String`



Get classes details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **req** | **`HTTP.Request`** | The HTTP Request object | 
**`q`** | **`String`**| Query string containing an array of class names |

### Return type

**`String`**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

