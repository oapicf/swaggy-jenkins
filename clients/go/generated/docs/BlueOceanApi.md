# \BlueOceanApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DeletePipelineQueueItem**](BlueOceanApi.md#DeletePipelineQueueItem) | **Delete** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | 
[**GetAuthenticatedUser**](BlueOceanApi.md#GetAuthenticatedUser) | **Get** /blue/rest/organizations/{organization}/user/ | 
[**GetClasses**](BlueOceanApi.md#GetClasses) | **Get** /blue/rest/classes/{class} | 
[**GetOrganisation**](BlueOceanApi.md#GetOrganisation) | **Get** /blue/rest/organizations/{organization} | 
[**GetOrganisations**](BlueOceanApi.md#GetOrganisations) | **Get** /blue/rest/organizations/ | 
[**GetPipeline**](BlueOceanApi.md#GetPipeline) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline} | 
[**GetPipelineActivities**](BlueOceanApi.md#GetPipelineActivities) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities | 
[**GetPipelineBranch**](BlueOceanApi.md#GetPipelineBranch) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ | 
[**GetPipelineBranchRun**](BlueOceanApi.md#GetPipelineBranchRun) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} | 
[**GetPipelineBranches**](BlueOceanApi.md#GetPipelineBranches) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches | 
[**GetPipelineFolder**](BlueOceanApi.md#GetPipelineFolder) | **Get** /blue/rest/organizations/{organization}/pipelines/{folder}/ | 
[**GetPipelineFolderPipeline**](BlueOceanApi.md#GetPipelineFolderPipeline) | **Get** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} | 
[**GetPipelineQueue**](BlueOceanApi.md#GetPipelineQueue) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue | 
[**GetPipelineRun**](BlueOceanApi.md#GetPipelineRun) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} | 
[**GetPipelineRunLog**](BlueOceanApi.md#GetPipelineRunLog) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log | 
[**GetPipelineRunNode**](BlueOceanApi.md#GetPipelineRunNode) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} | 
[**GetPipelineRunNodeStep**](BlueOceanApi.md#GetPipelineRunNodeStep) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} | 
[**GetPipelineRunNodeStepLog**](BlueOceanApi.md#GetPipelineRunNodeStepLog) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log | 
[**GetPipelineRunNodeSteps**](BlueOceanApi.md#GetPipelineRunNodeSteps) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps | 
[**GetPipelineRunNodes**](BlueOceanApi.md#GetPipelineRunNodes) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes | 
[**GetPipelineRuns**](BlueOceanApi.md#GetPipelineRuns) | **Get** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**GetPipelines**](BlueOceanApi.md#GetPipelines) | **Get** /blue/rest/organizations/{organization}/pipelines/ | 
[**GetSCM**](BlueOceanApi.md#GetSCM) | **Get** /blue/rest/organizations/{organization}/scm/{scm} | 
[**GetSCMOrganisationRepositories**](BlueOceanApi.md#GetSCMOrganisationRepositories) | **Get** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories | 
[**GetSCMOrganisationRepository**](BlueOceanApi.md#GetSCMOrganisationRepository) | **Get** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} | 
[**GetSCMOrganisations**](BlueOceanApi.md#GetSCMOrganisations) | **Get** /blue/rest/organizations/{organization}/scm/{scm}/organizations | 
[**GetUser**](BlueOceanApi.md#GetUser) | **Get** /blue/rest/organizations/{organization}/users/{user} | 
[**GetUserFavorites**](BlueOceanApi.md#GetUserFavorites) | **Get** /blue/rest/users/{user}/favorites | 
[**GetUsers**](BlueOceanApi.md#GetUsers) | **Get** /blue/rest/organizations/{organization}/users/ | 
[**PostPipelineRun**](BlueOceanApi.md#PostPipelineRun) | **Post** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay | 
[**PostPipelineRuns**](BlueOceanApi.md#PostPipelineRuns) | **Post** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**PutPipelineFavorite**](BlueOceanApi.md#PutPipelineFavorite) | **Put** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite | 
[**PutPipelineRun**](BlueOceanApi.md#PutPipelineRun) | **Put** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop | 
[**Search**](BlueOceanApi.md#Search) | **Get** /blue/rest/search/ | 
[**SearchClasses**](BlueOceanApi.md#SearchClasses) | **Get** /blue/rest/classes/ | 


# **DeletePipelineQueueItem**
> DeletePipelineQueueItem(ctx, organization, pipeline, queue)


Delete queue item from an organization pipeline queue

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **string**| Name of the organization | 
  **pipeline** | **string**| Name of the pipeline | 
  **queue** | **string**| Name of the queue item | 

### Return type

 (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetAuthenticatedUser**
> User GetAuthenticatedUser(ctx, organization)


Retrieve authenticated user details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **string**| Name of the organization | 

### Return type

[**User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetClasses**
> string GetClasses(ctx, class)


Get a list of class names supported by a given class

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **class** | **string**| Name of the class | 

### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetOrganisation**
> Organisation GetOrganisation(ctx, organization)


Retrieve organization details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **string**| Name of the organization | 

### Return type

[**Organisation**](Organisation.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetOrganisations**
> Organisations GetOrganisations(ctx, )


Retrieve all organizations details

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**Organisations**](Organisations.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetPipeline**
> Pipeline GetPipeline(ctx, organization, pipeline)


Retrieve pipeline details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **string**| Name of the organization | 
  **pipeline** | **string**| Name of the pipeline | 

### Return type

[**Pipeline**](Pipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetPipelineActivities**
> PipelineActivities GetPipelineActivities(ctx, organization, pipeline)


Retrieve all activities details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **string**| Name of the organization | 
  **pipeline** | **string**| Name of the pipeline | 

### Return type

[**PipelineActivities**](PipelineActivities.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetPipelineBranch**
> BranchImpl GetPipelineBranch(ctx, organization, pipeline, branch)


Retrieve branch details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **string**| Name of the organization | 
  **pipeline** | **string**| Name of the pipeline | 
  **branch** | **string**| Name of the branch | 

### Return type

[**BranchImpl**](BranchImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetPipelineBranchRun**
> PipelineRun GetPipelineBranchRun(ctx, organization, pipeline, branch, run)


Retrieve branch run details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **string**| Name of the organization | 
  **pipeline** | **string**| Name of the pipeline | 
  **branch** | **string**| Name of the branch | 
  **run** | **string**| Name of the run | 

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetPipelineBranches**
> MultibranchPipeline GetPipelineBranches(ctx, organization, pipeline)


Retrieve all branches details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **string**| Name of the organization | 
  **pipeline** | **string**| Name of the pipeline | 

### Return type

[**MultibranchPipeline**](MultibranchPipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetPipelineFolder**
> PipelineFolderImpl GetPipelineFolder(ctx, organization, folder)


Retrieve pipeline folder for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **string**| Name of the organization | 
  **folder** | **string**| Name of the folder | 

### Return type

[**PipelineFolderImpl**](PipelineFolderImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetPipelineFolderPipeline**
> PipelineImpl GetPipelineFolderPipeline(ctx, organization, pipeline, folder)


Retrieve pipeline details for an organization folder

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **string**| Name of the organization | 
  **pipeline** | **string**| Name of the pipeline | 
  **folder** | **string**| Name of the folder | 

### Return type

[**PipelineImpl**](PipelineImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetPipelineQueue**
> PipelineQueue GetPipelineQueue(ctx, organization, pipeline)


Retrieve queue details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **string**| Name of the organization | 
  **pipeline** | **string**| Name of the pipeline | 

### Return type

[**PipelineQueue**](PipelineQueue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetPipelineRun**
> PipelineRun GetPipelineRun(ctx, organization, pipeline, run)


Retrieve run details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **string**| Name of the organization | 
  **pipeline** | **string**| Name of the pipeline | 
  **run** | **string**| Name of the run | 

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetPipelineRunLog**
> string GetPipelineRunLog(ctx, organization, pipeline, run, optional)


Get log for a pipeline run

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **string**| Name of the organization | 
  **pipeline** | **string**| Name of the pipeline | 
  **run** | **string**| Name of the run | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 
 **run** | **string**| Name of the run | 
 **start** | **int32**| Start position of the log | 
 **download** | **bool**| Set to true in order to download the file, otherwise it&#39;s passed as a response body | 

### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetPipelineRunNode**
> PipelineRunNode GetPipelineRunNode(ctx, organization, pipeline, run, node)


Retrieve run node details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **string**| Name of the organization | 
  **pipeline** | **string**| Name of the pipeline | 
  **run** | **string**| Name of the run | 
  **node** | **string**| Name of the node | 

### Return type

[**PipelineRunNode**](PipelineRunNode.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetPipelineRunNodeStep**
> PipelineStepImpl GetPipelineRunNodeStep(ctx, organization, pipeline, run, node, step)


Retrieve run node details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **string**| Name of the organization | 
  **pipeline** | **string**| Name of the pipeline | 
  **run** | **string**| Name of the run | 
  **node** | **string**| Name of the node | 
  **step** | **string**| Name of the step | 

### Return type

[**PipelineStepImpl**](PipelineStepImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetPipelineRunNodeStepLog**
> string GetPipelineRunNodeStepLog(ctx, organization, pipeline, run, node, step)


Get log for a pipeline run node step

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **string**| Name of the organization | 
  **pipeline** | **string**| Name of the pipeline | 
  **run** | **string**| Name of the run | 
  **node** | **string**| Name of the node | 
  **step** | **string**| Name of the step | 

### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetPipelineRunNodeSteps**
> PipelineRunNodeSteps GetPipelineRunNodeSteps(ctx, organization, pipeline, run, node)


Retrieve run node steps details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **string**| Name of the organization | 
  **pipeline** | **string**| Name of the pipeline | 
  **run** | **string**| Name of the run | 
  **node** | **string**| Name of the node | 

### Return type

[**PipelineRunNodeSteps**](PipelineRunNodeSteps.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetPipelineRunNodes**
> PipelineRunNodes GetPipelineRunNodes(ctx, organization, pipeline, run)


Retrieve run nodes details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **string**| Name of the organization | 
  **pipeline** | **string**| Name of the pipeline | 
  **run** | **string**| Name of the run | 

### Return type

[**PipelineRunNodes**](PipelineRunNodes.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetPipelineRuns**
> PipelineRuns GetPipelineRuns(ctx, organization, pipeline)


Retrieve all runs details for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **string**| Name of the organization | 
  **pipeline** | **string**| Name of the pipeline | 

### Return type

[**PipelineRuns**](PipelineRuns.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetPipelines**
> Pipelines GetPipelines(ctx, organization)


Retrieve all pipelines details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **string**| Name of the organization | 

### Return type

[**Pipelines**](Pipelines.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetSCM**
> GithubScm GetSCM(ctx, organization, scm)


Retrieve SCM details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **string**| Name of the organization | 
  **scm** | **string**| Name of SCM | 

### Return type

[**GithubScm**](GithubScm.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetSCMOrganisationRepositories**
> ScmOrganisations GetSCMOrganisationRepositories(ctx, organization, scm, scmOrganisation, optional)


Retrieve SCM organization repositories details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **string**| Name of the organization | 
  **scm** | **string**| Name of SCM | 
  **scmOrganisation** | **string**| Name of the SCM organization | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **scm** | **string**| Name of SCM | 
 **scmOrganisation** | **string**| Name of the SCM organization | 
 **credentialId** | **string**| Credential ID | 
 **pageSize** | **int32**| Number of items in a page | 
 **pageNumber** | **int32**| Page number | 

### Return type

[**ScmOrganisations**](ScmOrganisations.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetSCMOrganisationRepository**
> ScmOrganisations GetSCMOrganisationRepository(ctx, organization, scm, scmOrganisation, repository, optional)


Retrieve SCM organization repository details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **string**| Name of the organization | 
  **scm** | **string**| Name of SCM | 
  **scmOrganisation** | **string**| Name of the SCM organization | 
  **repository** | **string**| Name of the SCM repository | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **scm** | **string**| Name of SCM | 
 **scmOrganisation** | **string**| Name of the SCM organization | 
 **repository** | **string**| Name of the SCM repository | 
 **credentialId** | **string**| Credential ID | 

### Return type

[**ScmOrganisations**](ScmOrganisations.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetSCMOrganisations**
> ScmOrganisations GetSCMOrganisations(ctx, organization, scm, optional)


Retrieve SCM organizations details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **string**| Name of the organization | 
  **scm** | **string**| Name of SCM | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **scm** | **string**| Name of SCM | 
 **credentialId** | **string**| Credential ID | 

### Return type

[**ScmOrganisations**](ScmOrganisations.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetUser**
> User GetUser(ctx, organization, user)


Retrieve user details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **string**| Name of the organization | 
  **user** | **string**| Name of the user | 

### Return type

[**User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetUserFavorites**
> UserFavorites GetUserFavorites(ctx, user)


Retrieve user favorites details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **user** | **string**| Name of the user | 

### Return type

[**UserFavorites**](UserFavorites.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **GetUsers**
> User GetUsers(ctx, organization)


Retrieve users details for an organization

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **string**| Name of the organization | 

### Return type

[**User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PostPipelineRun**
> QueueItemImpl PostPipelineRun(ctx, organization, pipeline, run)


Replay an organization pipeline run

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **string**| Name of the organization | 
  **pipeline** | **string**| Name of the pipeline | 
  **run** | **string**| Name of the run | 

### Return type

[**QueueItemImpl**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PostPipelineRuns**
> QueueItemImpl PostPipelineRuns(ctx, organization, pipeline)


Start a build for an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **string**| Name of the organization | 
  **pipeline** | **string**| Name of the pipeline | 

### Return type

[**QueueItemImpl**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PutPipelineFavorite**
> FavoriteImpl PutPipelineFavorite(ctx, organization, pipeline, body)


Favorite/unfavorite a pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **string**| Name of the organization | 
  **pipeline** | **string**| Name of the pipeline | 
  **body** | [**Body**](Body.md)| Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite | 

### Return type

[**FavoriteImpl**](FavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **PutPipelineRun**
> PipelineRun PutPipelineRun(ctx, organization, pipeline, run, optional)


Stop a build of an organization pipeline

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **organization** | **string**| Name of the organization | 
  **pipeline** | **string**| Name of the pipeline | 
  **run** | **string**| Name of the run | 
 **optional** | **map[string]interface{}** | optional parameters | nil if no parameters

### Optional Parameters
Optional parameters are passed through a map[string]interface{}.

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **string**| Name of the organization | 
 **pipeline** | **string**| Name of the pipeline | 
 **run** | **string**| Name of the run | 
 **blocking** | **string**| Set to true to make blocking stop, default: false | 
 **timeOutInSecs** | **int32**| Timeout in seconds, default: 10 seconds | 

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **Search**
> string Search(ctx, q)


Search for any resource details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **q** | **string**| Query string | 

### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **SearchClasses**
> string SearchClasses(ctx, q)


Get classes details

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ctx** | **context.Context** | context containing the authentication | nil if no authentication
  **q** | **string**| Query string containing an array of class names | 

### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

