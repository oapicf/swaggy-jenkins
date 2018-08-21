# \BlueOceanApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_pipeline_queue_item**](BlueOceanApi.md#delete_pipeline_queue_item) | **Delete** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | 
[**get_authenticated_user**](BlueOceanApi.md#get_authenticated_user) | **Get** /blue/rest/organizations/{organization}/user/ | 
[**get_classes**](BlueOceanApi.md#get_classes) | **Get** /blue/rest/classes/{class} | 
[**get_json_web_key**](BlueOceanApi.md#get_json_web_key) | **Get** /jwt-auth/jwks/{key} | 
[**get_json_web_token**](BlueOceanApi.md#get_json_web_token) | **Get** /jwt-auth/token | 
[**get_organisation**](BlueOceanApi.md#get_organisation) | **Get** /blue/rest/organizations/{organization} | 
[**get_organisations**](BlueOceanApi.md#get_organisations) | **Get** /blue/rest/organizations/ | 
[**get_pipeline**](BlueOceanApi.md#get_pipeline) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline} | 
[**get_pipeline_activities**](BlueOceanApi.md#get_pipeline_activities) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities | 
[**get_pipeline_branch**](BlueOceanApi.md#get_pipeline_branch) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ | 
[**get_pipeline_branch_run**](BlueOceanApi.md#get_pipeline_branch_run) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} | 
[**get_pipeline_branches**](BlueOceanApi.md#get_pipeline_branches) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches | 
[**get_pipeline_folder**](BlueOceanApi.md#get_pipeline_folder) | **Get** /blue/rest/organizations/{organization}/pipelines/{folder}/ | 
[**get_pipeline_folder_pipeline**](BlueOceanApi.md#get_pipeline_folder_pipeline) | **Get** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} | 
[**get_pipeline_queue**](BlueOceanApi.md#get_pipeline_queue) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue | 
[**get_pipeline_run**](BlueOceanApi.md#get_pipeline_run) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} | 
[**get_pipeline_run_log**](BlueOceanApi.md#get_pipeline_run_log) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log | 
[**get_pipeline_run_node**](BlueOceanApi.md#get_pipeline_run_node) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} | 
[**get_pipeline_run_node_step**](BlueOceanApi.md#get_pipeline_run_node_step) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} | 
[**get_pipeline_run_node_step_log**](BlueOceanApi.md#get_pipeline_run_node_step_log) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log | 
[**get_pipeline_run_node_steps**](BlueOceanApi.md#get_pipeline_run_node_steps) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps | 
[**get_pipeline_run_nodes**](BlueOceanApi.md#get_pipeline_run_nodes) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes | 
[**get_pipeline_runs**](BlueOceanApi.md#get_pipeline_runs) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**get_pipelines**](BlueOceanApi.md#get_pipelines) | **Get** /blue/rest/organizations/{organization}/pipelines/ | 
[**get_scm**](BlueOceanApi.md#get_scm) | **Get** /blue/rest/organizations/{organization}/scm/{scm} | 
[**get_scm_organisation_repositories**](BlueOceanApi.md#get_scm_organisation_repositories) | **Get** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories | 
[**get_scm_organisation_repository**](BlueOceanApi.md#get_scm_organisation_repository) | **Get** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} | 
[**get_scm_organisations**](BlueOceanApi.md#get_scm_organisations) | **Get** /blue/rest/organizations/{organization}/scm/{scm}/organizations | 
[**get_user**](BlueOceanApi.md#get_user) | **Get** /blue/rest/organizations/{organization}/users/{user} | 
[**get_user_favorites**](BlueOceanApi.md#get_user_favorites) | **Get** /blue/rest/users/{user}/favorites | 
[**get_users**](BlueOceanApi.md#get_users) | **Get** /blue/rest/organizations/{organization}/users/ | 
[**post_pipeline_run**](BlueOceanApi.md#post_pipeline_run) | **Post** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay | 
[**post_pipeline_runs**](BlueOceanApi.md#post_pipeline_runs) | **Post** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**put_pipeline_favorite**](BlueOceanApi.md#put_pipeline_favorite) | **Put** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite | 
[**put_pipeline_run**](BlueOceanApi.md#put_pipeline_run) | **Put** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop | 
[**search**](BlueOceanApi.md#search) | **Get** /blue/rest/search/ | 
[**search_classes**](BlueOceanApi.md#search_classes) | **Get** /blue/rest/classes/ | 


# **delete_pipeline_queue_item**
> delete_pipeline_queue_item(ctx, organization, pipeline, queue)


Delete queue item from an organization pipeline queue

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **pipeline** | **String**| Name of the pipeline | 
  **queue** | **String**| Name of the queue item | 

### Return type

 (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_authenticated_user**
> ::models::User get_authenticated_user(ctx, organization)


Retrieve authenticated user details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 

### Return type

[**::models::User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_classes**
> String get_classes(ctx, class)


Get a list of class names supported by a given class

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **class** | **String**| Name of the class | 

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_json_web_key**
> String get_json_web_key(key)


Retrieve JSON Web Key

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **key** | **i32**| Key ID received as part of JWT header field kid | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_json_web_token**
> String get_json_web_token(optional)


Retrieve JSON Web Token

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expiry_time_in_mins** | **i32**| Token expiry time in minutes, default: 30 minutes | 
 **max_expiry_time_in_mins** | **i32**| Maximum token expiry time in minutes, default: 480 minutes | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_organisation**
> ::models::Organisation get_organisation(ctx, organization)


Retrieve organization details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 

### Return type

[**::models::Organisation**](Organisation.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_organisations**
> ::models::Organisations get_organisations(ctx, )


Retrieve all organizations details

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**::models::Organisations**](Organisations.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline**
> ::models::Pipeline get_pipeline(ctx, organization, pipeline)


Retrieve pipeline details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **pipeline** | **String**| Name of the pipeline | 

### Return type

[**::models::Pipeline**](Pipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_activities**
> ::models::PipelineActivities get_pipeline_activities(ctx, organization, pipeline)


Retrieve all activities details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **pipeline** | **String**| Name of the pipeline | 

### Return type

[**::models::PipelineActivities**](PipelineActivities.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_branch**
> ::models::BranchImpl get_pipeline_branch(ctx, organization, pipeline, branch)


Retrieve branch details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **pipeline** | **String**| Name of the pipeline | 
  **branch** | **String**| Name of the branch | 

### Return type

[**::models::BranchImpl**](BranchImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_branch_run**
> ::models::PipelineRun get_pipeline_branch_run(ctx, organization, pipeline, branch, run)


Retrieve branch run details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **pipeline** | **String**| Name of the pipeline | 
  **branch** | **String**| Name of the branch | 
  **run** | **String**| Name of the run | 

### Return type

[**::models::PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_branches**
> ::models::MultibranchPipeline get_pipeline_branches(ctx, organization, pipeline)


Retrieve all branches details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **pipeline** | **String**| Name of the pipeline | 

### Return type

[**::models::MultibranchPipeline**](MultibranchPipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_folder**
> ::models::PipelineFolderImpl get_pipeline_folder(ctx, organization, folder)


Retrieve pipeline folder for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **folder** | **String**| Name of the folder | 

### Return type

[**::models::PipelineFolderImpl**](PipelineFolderImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_folder_pipeline**
> ::models::PipelineImpl get_pipeline_folder_pipeline(ctx, organization, pipeline, folder)


Retrieve pipeline details for an organization folder

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **pipeline** | **String**| Name of the pipeline | 
  **folder** | **String**| Name of the folder | 

### Return type

[**::models::PipelineImpl**](PipelineImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_queue**
> ::models::PipelineQueue get_pipeline_queue(ctx, organization, pipeline)


Retrieve queue details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **pipeline** | **String**| Name of the pipeline | 

### Return type

[**::models::PipelineQueue**](PipelineQueue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_run**
> ::models::PipelineRun get_pipeline_run(ctx, organization, pipeline, run)


Retrieve run details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **pipeline** | **String**| Name of the pipeline | 
  **run** | **String**| Name of the run | 

### Return type

[**::models::PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_run_log**
> String get_pipeline_run_log(ctx, organization, pipeline, run, optional)


Get log for a pipeline run

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **pipeline** | **String**| Name of the pipeline | 
  **run** | **String**| Name of the run | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **pipeline** | **String**| Name of the pipeline | 
 **run** | **String**| Name of the run | 
 **start** | **i32**| Start position of the log | 
 **download** | **bool**| Set to true in order to download the file, otherwise it&#39;s passed as a response body | 

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_run_node**
> ::models::PipelineRunNode get_pipeline_run_node(ctx, organization, pipeline, run, node)


Retrieve run node details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **pipeline** | **String**| Name of the pipeline | 
  **run** | **String**| Name of the run | 
  **node** | **String**| Name of the node | 

### Return type

[**::models::PipelineRunNode**](PipelineRunNode.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_run_node_step**
> ::models::PipelineStepImpl get_pipeline_run_node_step(ctx, organization, pipeline, run, node, step)


Retrieve run node details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **pipeline** | **String**| Name of the pipeline | 
  **run** | **String**| Name of the run | 
  **node** | **String**| Name of the node | 
  **step** | **String**| Name of the step | 

### Return type

[**::models::PipelineStepImpl**](PipelineStepImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_run_node_step_log**
> String get_pipeline_run_node_step_log(ctx, organization, pipeline, run, node, step)


Get log for a pipeline run node step

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **pipeline** | **String**| Name of the pipeline | 
  **run** | **String**| Name of the run | 
  **node** | **String**| Name of the node | 
  **step** | **String**| Name of the step | 

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_run_node_steps**
> ::models::PipelineRunNodeSteps get_pipeline_run_node_steps(ctx, organization, pipeline, run, node)


Retrieve run node steps details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **pipeline** | **String**| Name of the pipeline | 
  **run** | **String**| Name of the run | 
  **node** | **String**| Name of the node | 

### Return type

[**::models::PipelineRunNodeSteps**](PipelineRunNodeSteps.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_run_nodes**
> ::models::PipelineRunNodes get_pipeline_run_nodes(ctx, organization, pipeline, run)


Retrieve run nodes details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **pipeline** | **String**| Name of the pipeline | 
  **run** | **String**| Name of the run | 

### Return type

[**::models::PipelineRunNodes**](PipelineRunNodes.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipeline_runs**
> ::models::PipelineRuns get_pipeline_runs(ctx, organization, pipeline)


Retrieve all runs details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **pipeline** | **String**| Name of the pipeline | 

### Return type

[**::models::PipelineRuns**](PipelineRuns.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_pipelines**
> ::models::Pipelines get_pipelines(ctx, organization)


Retrieve all pipelines details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 

### Return type

[**::models::Pipelines**](Pipelines.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_scm**
> ::models::GithubScm get_scm(ctx, organization, scm)


Retrieve SCM details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **scm** | **String**| Name of SCM | 

### Return type

[**::models::GithubScm**](GithubScm.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_scm_organisation_repositories**
> ::models::ScmOrganisations get_scm_organisation_repositories(ctx, organization, scm, scm_organisation, optional)


Retrieve SCM organization repositories details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **scm** | **String**| Name of SCM | 
  **scm_organisation** | **String**| Name of the SCM organization | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **scm** | **String**| Name of SCM | 
 **scm_organisation** | **String**| Name of the SCM organization | 
 **credential_id** | **String**| Credential ID | 
 **page_size** | **i32**| Number of items in a page | 
 **page_number** | **i32**| Page number | 

### Return type

[**::models::ScmOrganisations**](ScmOrganisations.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_scm_organisation_repository**
> ::models::ScmOrganisations get_scm_organisation_repository(ctx, organization, scm, scm_organisation, repository, optional)


Retrieve SCM organization repository details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **scm** | **String**| Name of SCM | 
  **scm_organisation** | **String**| Name of the SCM organization | 
  **repository** | **String**| Name of the SCM repository | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **scm** | **String**| Name of SCM | 
 **scm_organisation** | **String**| Name of the SCM organization | 
 **repository** | **String**| Name of the SCM repository | 
 **credential_id** | **String**| Credential ID | 

### Return type

[**::models::ScmOrganisations**](ScmOrganisations.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_scm_organisations**
> ::models::ScmOrganisations get_scm_organisations(ctx, organization, scm, optional)


Retrieve SCM organizations details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **scm** | **String**| Name of SCM | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **scm** | **String**| Name of SCM | 
 **credential_id** | **String**| Credential ID | 

### Return type

[**::models::ScmOrganisations**](ScmOrganisations.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user**
> ::models::User get_user(ctx, organization, user)


Retrieve user details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **user** | **String**| Name of the user | 

### Return type

[**::models::User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_user_favorites**
> ::models::UserFavorites get_user_favorites(ctx, user)


Retrieve user favorites details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **user** | **String**| Name of the user | 

### Return type

[**::models::UserFavorites**](UserFavorites.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_users**
> ::models::User get_users(ctx, organization)


Retrieve users details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 

### Return type

[**::models::User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_pipeline_run**
> ::models::QueueItemImpl post_pipeline_run(ctx, organization, pipeline, run)


Replay an organization pipeline run

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **pipeline** | **String**| Name of the pipeline | 
  **run** | **String**| Name of the run | 

### Return type

[**::models::QueueItemImpl**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **post_pipeline_runs**
> ::models::QueueItemImpl post_pipeline_runs(ctx, organization, pipeline)


Start a build for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **pipeline** | **String**| Name of the pipeline | 

### Return type

[**::models::QueueItemImpl**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_pipeline_favorite**
> ::models::FavoriteImpl put_pipeline_favorite(ctx, organization, pipeline, body)


Favorite/unfavorite a pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **pipeline** | **String**| Name of the pipeline | 
  **body** | [**Body**](Body.md)| Set JSON string body to {&quot;favorite&quot;: true} to favorite, set value to false to unfavorite | 

### Return type

[**::models::FavoriteImpl**](FavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **put_pipeline_run**
> ::models::PipelineRun put_pipeline_run(ctx, organization, pipeline, run, optional)


Stop a build of an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **pipeline** | **String**| Name of the pipeline | 
  **run** | **String**| Name of the run | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **pipeline** | **String**| Name of the pipeline | 
 **run** | **String**| Name of the run | 
 **blocking** | **String**| Set to true to make blocking stop, default: false | 
 **time_out_in_secs** | **i32**| Timeout in seconds, default: 10 seconds | 

### Return type

[**::models::PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search**
> String search(ctx, q)


Search for any resource details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **q** | **String**| Query string | 

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search_classes**
> String search_classes(ctx, q)


Get classes details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **q** | **String**| Query string containing an array of class names | 

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

