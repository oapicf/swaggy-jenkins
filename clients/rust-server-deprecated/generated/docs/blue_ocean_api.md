# blue_ocean_api

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
**getJsonWebToken**](blue_ocean_api.md#getJsonWebToken) | **GET** /jwt-auth/token | 
**getOrganisations**](blue_ocean_api.md#getOrganisations) | **GET** /blue/rest/organizations/ | 
**search**](blue_ocean_api.md#search) | **GET** /blue/rest/search/ | 
**searchClasses**](blue_ocean_api.md#searchClasses) | **GET** /blue/rest/classes/ | 
**getAuthenticatedUser**](blue_ocean_api.md#getAuthenticatedUser) | **GET** /blue/rest/organizations/{organization}/user/ | 
**getClasses**](blue_ocean_api.md#getClasses) | **GET** /blue/rest/classes/{class} | 
**getJsonWebKey**](blue_ocean_api.md#getJsonWebKey) | **GET** /jwt-auth/jwks/{key} | 
**getOrganisation**](blue_ocean_api.md#getOrganisation) | **GET** /blue/rest/organizations/{organization} | 
**getPipelines**](blue_ocean_api.md#getPipelines) | **GET** /blue/rest/organizations/{organization}/pipelines/ | 
**getUserFavorites**](blue_ocean_api.md#getUserFavorites) | **GET** /blue/rest/users/{user}/favorites | 
**getUsers**](blue_ocean_api.md#getUsers) | **GET** /blue/rest/organizations/{organization}/users/ | 
**getPipeline**](blue_ocean_api.md#getPipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline} | 
**getPipelineActivities**](blue_ocean_api.md#getPipelineActivities) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities | 
**getPipelineBranches**](blue_ocean_api.md#getPipelineBranches) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches | 
**getPipelineFolder**](blue_ocean_api.md#getPipelineFolder) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/ | 
**getPipelineQueue**](blue_ocean_api.md#getPipelineQueue) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue | 
**getPipelineRuns**](blue_ocean_api.md#getPipelineRuns) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
**getSCM**](blue_ocean_api.md#getSCM) | **GET** /blue/rest/organizations/{organization}/scm/{scm} | 
**getSCMOrganisations**](blue_ocean_api.md#getSCMOrganisations) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations | 
**getUser**](blue_ocean_api.md#getUser) | **GET** /blue/rest/organizations/{organization}/users/{user} | 
**postPipelineRuns**](blue_ocean_api.md#postPipelineRuns) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
**putPipelineFavorite**](blue_ocean_api.md#putPipelineFavorite) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite | 
**deletePipelineQueueItem**](blue_ocean_api.md#deletePipelineQueueItem) | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | 
**getPipelineBranch**](blue_ocean_api.md#getPipelineBranch) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ | 
**getPipelineFolderPipeline**](blue_ocean_api.md#getPipelineFolderPipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} | 
**getPipelineRun**](blue_ocean_api.md#getPipelineRun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} | 
**getPipelineRunLog**](blue_ocean_api.md#getPipelineRunLog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log | 
**getPipelineRunNodes**](blue_ocean_api.md#getPipelineRunNodes) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes | 
**getSCMOrganisationRepositories**](blue_ocean_api.md#getSCMOrganisationRepositories) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories | 
**postPipelineRun**](blue_ocean_api.md#postPipelineRun) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay | 
**putPipelineRun**](blue_ocean_api.md#putPipelineRun) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop | 
**getPipelineBranchRun**](blue_ocean_api.md#getPipelineBranchRun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} | 
**getPipelineRunNode**](blue_ocean_api.md#getPipelineRunNode) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} | 
**getPipelineRunNodeSteps**](blue_ocean_api.md#getPipelineRunNodeSteps) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps | 
**getSCMOrganisationRepository**](blue_ocean_api.md#getSCMOrganisationRepository) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} | 
**getPipelineRunNodeStep**](blue_ocean_api.md#getPipelineRunNodeStep) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} | 
**getPipelineRunNodeStepLog**](blue_ocean_api.md#getPipelineRunNodeStepLog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log | 


# **getJsonWebToken**
> String getJsonWebToken(optional)


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

[**String**](string.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganisations**
> Vec<models::Organisation> getOrganisations(ctx, )


Retrieve all organizations details

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**Vec<models::Organisation>**](Organisation.md)

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

[**String**](string.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchClasses**
> String searchClasses(ctx, q)


Get classes details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **q** | **String**| Query string containing an array of class names | 

### Return type

[**String**](string.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAuthenticatedUser**
> models::User getAuthenticatedUser(ctx, organization)


Retrieve authenticated user details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 

### Return type

[**models::User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClasses**
> String getClasses(ctx, class)


Get a list of class names supported by a given class

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **class** | **String**| Name of the class | 

### Return type

[**String**](string.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJsonWebKey**
> String getJsonWebKey(key)


Retrieve JSON Web Key

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
  **key** | **i32**| Key ID received as part of JWT header field kid | 

### Return type

[**String**](string.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganisation**
> models::Organisation getOrganisation(ctx, organization)


Retrieve organization details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 

### Return type

[**models::Organisation**](Organisation.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelines**
> Vec<models::Pipeline> getPipelines(ctx, organization)


Retrieve all pipelines details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 

### Return type

[**Vec<models::Pipeline>**](Pipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserFavorites**
> Vec<models::FavoriteImpl> getUserFavorites(ctx, user)


Retrieve user favorites details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **user** | **String**| Name of the user | 

### Return type

[**Vec<models::FavoriteImpl>**](FavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsers**
> models::User getUsers(ctx, organization)


Retrieve users details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 

### Return type

[**models::User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipeline**
> models::Pipeline getPipeline(ctx, organization, pipeline)


Retrieve pipeline details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **pipeline** | **String**| Name of the pipeline | 

### Return type

[**models::Pipeline**](Pipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineActivities**
> Vec<models::PipelineActivity> getPipelineActivities(ctx, organization, pipeline)


Retrieve all activities details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **pipeline** | **String**| Name of the pipeline | 

### Return type

[**Vec<models::PipelineActivity>**](PipelineActivity.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineBranches**
> models::MultibranchPipeline getPipelineBranches(ctx, organization, pipeline)


Retrieve all branches details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **pipeline** | **String**| Name of the pipeline | 

### Return type

[**models::MultibranchPipeline**](MultibranchPipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineFolder**
> models::PipelineFolderImpl getPipelineFolder(ctx, organization, folder)


Retrieve pipeline folder for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **folder** | **String**| Name of the folder | 

### Return type

[**models::PipelineFolderImpl**](PipelineFolderImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineQueue**
> Vec<models::QueueItemImpl> getPipelineQueue(ctx, organization, pipeline)


Retrieve queue details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **pipeline** | **String**| Name of the pipeline | 

### Return type

[**Vec<models::QueueItemImpl>**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRuns**
> Vec<models::PipelineRun> getPipelineRuns(ctx, organization, pipeline)


Retrieve all runs details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **pipeline** | **String**| Name of the pipeline | 

### Return type

[**Vec<models::PipelineRun>**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSCM**
> models::GithubScm getSCM(ctx, organization, scm)


Retrieve SCM details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **scm** | **String**| Name of SCM | 

### Return type

[**models::GithubScm**](GithubScm.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSCMOrganisations**
> Vec<models::GithubOrganization> getSCMOrganisations(ctx, organization, scm, optional)


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

[**Vec<models::GithubOrganization>**](GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUser**
> models::User getUser(ctx, organization, user)


Retrieve user details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **user** | **String**| Name of the user | 

### Return type

[**models::User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postPipelineRuns**
> models::QueueItemImpl postPipelineRuns(ctx, organization, pipeline)


Start a build for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **pipeline** | **String**| Name of the pipeline | 

### Return type

[**models::QueueItemImpl**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putPipelineFavorite**
> models::FavoriteImpl putPipelineFavorite(ctx, organization, pipeline, body)


Favorite/unfavorite a pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **pipeline** | **String**| Name of the pipeline | 
  **body** | **bool**| Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite | 

### Return type

[**models::FavoriteImpl**](FavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePipelineQueueItem**
> deletePipelineQueueItem(ctx, organization, pipeline, queue)


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

# **getPipelineBranch**
> models::BranchImpl getPipelineBranch(ctx, organization, pipeline, branch)


Retrieve branch details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **pipeline** | **String**| Name of the pipeline | 
  **branch** | **String**| Name of the branch | 

### Return type

[**models::BranchImpl**](BranchImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineFolderPipeline**
> models::PipelineImpl getPipelineFolderPipeline(ctx, organization, pipeline, folder)


Retrieve pipeline details for an organization folder

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **pipeline** | **String**| Name of the pipeline | 
  **folder** | **String**| Name of the folder | 

### Return type

[**models::PipelineImpl**](PipelineImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRun**
> models::PipelineRun getPipelineRun(ctx, organization, pipeline, run)


Retrieve run details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **pipeline** | **String**| Name of the pipeline | 
  **run** | **String**| Name of the run | 

### Return type

[**models::PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRunLog**
> String getPipelineRunLog(ctx, organization, pipeline, run, optional)


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
 **download** | **bool**| Set to true in order to download the file, otherwise it's passed as a response body | 

### Return type

[**String**](string.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRunNodes**
> Vec<models::PipelineRunNode> getPipelineRunNodes(ctx, organization, pipeline, run)


Retrieve run nodes details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **pipeline** | **String**| Name of the pipeline | 
  **run** | **String**| Name of the run | 

### Return type

[**Vec<models::PipelineRunNode>**](PipelineRunNode.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSCMOrganisationRepositories**
> Vec<models::GithubOrganization> getSCMOrganisationRepositories(ctx, organization, scm, scm_organisation, optional)


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

[**Vec<models::GithubOrganization>**](GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postPipelineRun**
> models::QueueItemImpl postPipelineRun(ctx, organization, pipeline, run)


Replay an organization pipeline run

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **String**| Name of the organization | 
  **pipeline** | **String**| Name of the pipeline | 
  **run** | **String**| Name of the run | 

### Return type

[**models::QueueItemImpl**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putPipelineRun**
> models::PipelineRun putPipelineRun(ctx, organization, pipeline, run, optional)


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

[**models::PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineBranchRun**
> models::PipelineRun getPipelineBranchRun(ctx, organization, pipeline, branch, run)


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

[**models::PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRunNode**
> models::PipelineRunNode getPipelineRunNode(ctx, organization, pipeline, run, node)


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

[**models::PipelineRunNode**](PipelineRunNode.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRunNodeSteps**
> Vec<models::PipelineStepImpl> getPipelineRunNodeSteps(ctx, organization, pipeline, run, node)


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

[**Vec<models::PipelineStepImpl>**](PipelineStepImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSCMOrganisationRepository**
> Vec<models::GithubOrganization> getSCMOrganisationRepository(ctx, organization, scm, scm_organisation, repository, optional)


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

[**Vec<models::GithubOrganization>**](GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRunNodeStep**
> models::PipelineStepImpl getPipelineRunNodeStep(ctx, organization, pipeline, run, node, step)


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

[**models::PipelineStepImpl**](PipelineStepImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRunNodeStepLog**
> String getPipelineRunNodeStepLog(ctx, organization, pipeline, run, node, step)


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

[**String**](string.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

