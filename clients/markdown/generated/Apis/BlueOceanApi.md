# BlueOceanApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
|------------- | ------------- | -------------|
| [**deletePipelineQueueItem**](BlueOceanApi.md#deletePipelineQueueItem) | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} |  |
| [**getAuthenticatedUser**](BlueOceanApi.md#getAuthenticatedUser) | **GET** /blue/rest/organizations/{organization}/user/ |  |
| [**getClasses**](BlueOceanApi.md#getClasses) | **GET** /blue/rest/classes/{class} |  |
| [**getJsonWebKey**](BlueOceanApi.md#getJsonWebKey) | **GET** /jwt-auth/jwks/{key} |  |
| [**getJsonWebToken**](BlueOceanApi.md#getJsonWebToken) | **GET** /jwt-auth/token |  |
| [**getOrganisation**](BlueOceanApi.md#getOrganisation) | **GET** /blue/rest/organizations/{organization} |  |
| [**getOrganisations**](BlueOceanApi.md#getOrganisations) | **GET** /blue/rest/organizations/ |  |
| [**getPipeline**](BlueOceanApi.md#getPipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline} |  |
| [**getPipelineActivities**](BlueOceanApi.md#getPipelineActivities) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities |  |
| [**getPipelineBranch**](BlueOceanApi.md#getPipelineBranch) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ |  |
| [**getPipelineBranchRun**](BlueOceanApi.md#getPipelineBranchRun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} |  |
| [**getPipelineBranches**](BlueOceanApi.md#getPipelineBranches) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches |  |
| [**getPipelineFolder**](BlueOceanApi.md#getPipelineFolder) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/ |  |
| [**getPipelineFolderPipeline**](BlueOceanApi.md#getPipelineFolderPipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} |  |
| [**getPipelineQueue**](BlueOceanApi.md#getPipelineQueue) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue |  |
| [**getPipelineRun**](BlueOceanApi.md#getPipelineRun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} |  |
| [**getPipelineRunLog**](BlueOceanApi.md#getPipelineRunLog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log |  |
| [**getPipelineRunNode**](BlueOceanApi.md#getPipelineRunNode) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} |  |
| [**getPipelineRunNodeStep**](BlueOceanApi.md#getPipelineRunNodeStep) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} |  |
| [**getPipelineRunNodeStepLog**](BlueOceanApi.md#getPipelineRunNodeStepLog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log |  |
| [**getPipelineRunNodeSteps**](BlueOceanApi.md#getPipelineRunNodeSteps) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps |  |
| [**getPipelineRunNodes**](BlueOceanApi.md#getPipelineRunNodes) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes |  |
| [**getPipelineRuns**](BlueOceanApi.md#getPipelineRuns) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs |  |
| [**getPipelines**](BlueOceanApi.md#getPipelines) | **GET** /blue/rest/organizations/{organization}/pipelines/ |  |
| [**getSCM**](BlueOceanApi.md#getSCM) | **GET** /blue/rest/organizations/{organization}/scm/{scm} |  |
| [**getSCMOrganisationRepositories**](BlueOceanApi.md#getSCMOrganisationRepositories) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories |  |
| [**getSCMOrganisationRepository**](BlueOceanApi.md#getSCMOrganisationRepository) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} |  |
| [**getSCMOrganisations**](BlueOceanApi.md#getSCMOrganisations) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations |  |
| [**getUser**](BlueOceanApi.md#getUser) | **GET** /blue/rest/organizations/{organization}/users/{user} |  |
| [**getUserFavorites**](BlueOceanApi.md#getUserFavorites) | **GET** /blue/rest/users/{user}/favorites |  |
| [**getUsers**](BlueOceanApi.md#getUsers) | **GET** /blue/rest/organizations/{organization}/users/ |  |
| [**postPipelineRun**](BlueOceanApi.md#postPipelineRun) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay |  |
| [**postPipelineRuns**](BlueOceanApi.md#postPipelineRuns) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs |  |
| [**putPipelineFavorite**](BlueOceanApi.md#putPipelineFavorite) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite |  |
| [**putPipelineRun**](BlueOceanApi.md#putPipelineRun) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop |  |
| [**search**](BlueOceanApi.md#search) | **GET** /blue/rest/search/ |  |
| [**searchClasses**](BlueOceanApi.md#searchClasses) | **GET** /blue/rest/classes/ |  |


<a name="deletePipelineQueueItem"></a>
# **deletePipelineQueueItem**
> deletePipelineQueueItem(organization, pipeline, queue)



    Delete queue item from an organization pipeline queue

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | [default to null] |
| **pipeline** | **String**| Name of the pipeline | [default to null] |
| **queue** | **String**| Name of the queue item | [default to null] |

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

<a name="getAuthenticatedUser"></a>
# **getAuthenticatedUser**
> User getAuthenticatedUser(organization)



    Retrieve authenticated user details for an organization

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | [default to null] |

### Return type

[**User**](../Models/User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getClasses"></a>
# **getClasses**
> String getClasses(class)



    Get a list of class names supported by a given class

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **class** | **String**| Name of the class | [default to null] |

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getJsonWebKey"></a>
# **getJsonWebKey**
> String getJsonWebKey(key)



    Retrieve JSON Web Key

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **key** | **Integer**| Key ID received as part of JWT header field kid | [default to null] |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getJsonWebToken"></a>
# **getJsonWebToken**
> String getJsonWebToken(expiryTimeInMins, maxExpiryTimeInMins)



    Retrieve JSON Web Token

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **expiryTimeInMins** | **Integer**| Token expiry time in minutes, default: 30 minutes | [optional] [default to null] |
| **maxExpiryTimeInMins** | **Integer**| Maximum token expiry time in minutes, default: 480 minutes | [optional] [default to null] |

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getOrganisation"></a>
# **getOrganisation**
> Organisation getOrganisation(organization)



    Retrieve organization details

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | [default to null] |

### Return type

[**Organisation**](../Models/Organisation.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getOrganisations"></a>
# **getOrganisations**
> List getOrganisations()



    Retrieve all organizations details

### Parameters
This endpoint does not need any parameter.

### Return type

[**List**](../Models/Organisation.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getPipeline"></a>
# **getPipeline**
> Pipeline getPipeline(organization, pipeline)



    Retrieve pipeline details for an organization

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | [default to null] |
| **pipeline** | **String**| Name of the pipeline | [default to null] |

### Return type

[**Pipeline**](../Models/Pipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getPipelineActivities"></a>
# **getPipelineActivities**
> List getPipelineActivities(organization, pipeline)



    Retrieve all activities details for an organization pipeline

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | [default to null] |
| **pipeline** | **String**| Name of the pipeline | [default to null] |

### Return type

[**List**](../Models/PipelineActivity.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getPipelineBranch"></a>
# **getPipelineBranch**
> BranchImpl getPipelineBranch(organization, pipeline, branch)



    Retrieve branch details for an organization pipeline

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | [default to null] |
| **pipeline** | **String**| Name of the pipeline | [default to null] |
| **branch** | **String**| Name of the branch | [default to null] |

### Return type

[**BranchImpl**](../Models/BranchImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getPipelineBranchRun"></a>
# **getPipelineBranchRun**
> PipelineRun getPipelineBranchRun(organization, pipeline, branch, run)



    Retrieve branch run details for an organization pipeline

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | [default to null] |
| **pipeline** | **String**| Name of the pipeline | [default to null] |
| **branch** | **String**| Name of the branch | [default to null] |
| **run** | **String**| Name of the run | [default to null] |

### Return type

[**PipelineRun**](../Models/PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getPipelineBranches"></a>
# **getPipelineBranches**
> MultibranchPipeline getPipelineBranches(organization, pipeline)



    Retrieve all branches details for an organization pipeline

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | [default to null] |
| **pipeline** | **String**| Name of the pipeline | [default to null] |

### Return type

[**MultibranchPipeline**](../Models/MultibranchPipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getPipelineFolder"></a>
# **getPipelineFolder**
> PipelineFolderImpl getPipelineFolder(organization, folder)



    Retrieve pipeline folder for an organization

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | [default to null] |
| **folder** | **String**| Name of the folder | [default to null] |

### Return type

[**PipelineFolderImpl**](../Models/PipelineFolderImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getPipelineFolderPipeline"></a>
# **getPipelineFolderPipeline**
> PipelineImpl getPipelineFolderPipeline(organization, pipeline, folder)



    Retrieve pipeline details for an organization folder

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | [default to null] |
| **pipeline** | **String**| Name of the pipeline | [default to null] |
| **folder** | **String**| Name of the folder | [default to null] |

### Return type

[**PipelineImpl**](../Models/PipelineImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getPipelineQueue"></a>
# **getPipelineQueue**
> List getPipelineQueue(organization, pipeline)



    Retrieve queue details for an organization pipeline

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | [default to null] |
| **pipeline** | **String**| Name of the pipeline | [default to null] |

### Return type

[**List**](../Models/QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getPipelineRun"></a>
# **getPipelineRun**
> PipelineRun getPipelineRun(organization, pipeline, run)



    Retrieve run details for an organization pipeline

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | [default to null] |
| **pipeline** | **String**| Name of the pipeline | [default to null] |
| **run** | **String**| Name of the run | [default to null] |

### Return type

[**PipelineRun**](../Models/PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getPipelineRunLog"></a>
# **getPipelineRunLog**
> String getPipelineRunLog(organization, pipeline, run, start, download)



    Get log for a pipeline run

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | [default to null] |
| **pipeline** | **String**| Name of the pipeline | [default to null] |
| **run** | **String**| Name of the run | [default to null] |
| **start** | **Integer**| Start position of the log | [optional] [default to null] |
| **download** | **Boolean**| Set to true in order to download the file, otherwise it&#39;s passed as a response body | [optional] [default to null] |

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getPipelineRunNode"></a>
# **getPipelineRunNode**
> PipelineRunNode getPipelineRunNode(organization, pipeline, run, node)



    Retrieve run node details for an organization pipeline

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | [default to null] |
| **pipeline** | **String**| Name of the pipeline | [default to null] |
| **run** | **String**| Name of the run | [default to null] |
| **node** | **String**| Name of the node | [default to null] |

### Return type

[**PipelineRunNode**](../Models/PipelineRunNode.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getPipelineRunNodeStep"></a>
# **getPipelineRunNodeStep**
> PipelineStepImpl getPipelineRunNodeStep(organization, pipeline, run, node, step)



    Retrieve run node details for an organization pipeline

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | [default to null] |
| **pipeline** | **String**| Name of the pipeline | [default to null] |
| **run** | **String**| Name of the run | [default to null] |
| **node** | **String**| Name of the node | [default to null] |
| **step** | **String**| Name of the step | [default to null] |

### Return type

[**PipelineStepImpl**](../Models/PipelineStepImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getPipelineRunNodeStepLog"></a>
# **getPipelineRunNodeStepLog**
> String getPipelineRunNodeStepLog(organization, pipeline, run, node, step)



    Get log for a pipeline run node step

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | [default to null] |
| **pipeline** | **String**| Name of the pipeline | [default to null] |
| **run** | **String**| Name of the run | [default to null] |
| **node** | **String**| Name of the node | [default to null] |
| **step** | **String**| Name of the step | [default to null] |

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getPipelineRunNodeSteps"></a>
# **getPipelineRunNodeSteps**
> List getPipelineRunNodeSteps(organization, pipeline, run, node)



    Retrieve run node steps details for an organization pipeline

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | [default to null] |
| **pipeline** | **String**| Name of the pipeline | [default to null] |
| **run** | **String**| Name of the run | [default to null] |
| **node** | **String**| Name of the node | [default to null] |

### Return type

[**List**](../Models/PipelineStepImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getPipelineRunNodes"></a>
# **getPipelineRunNodes**
> List getPipelineRunNodes(organization, pipeline, run)



    Retrieve run nodes details for an organization pipeline

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | [default to null] |
| **pipeline** | **String**| Name of the pipeline | [default to null] |
| **run** | **String**| Name of the run | [default to null] |

### Return type

[**List**](../Models/PipelineRunNode.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getPipelineRuns"></a>
# **getPipelineRuns**
> List getPipelineRuns(organization, pipeline)



    Retrieve all runs details for an organization pipeline

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | [default to null] |
| **pipeline** | **String**| Name of the pipeline | [default to null] |

### Return type

[**List**](../Models/PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getPipelines"></a>
# **getPipelines**
> List getPipelines(organization)



    Retrieve all pipelines details for an organization

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | [default to null] |

### Return type

[**List**](../Models/Pipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getSCM"></a>
# **getSCM**
> GithubScm getSCM(organization, scm)



    Retrieve SCM details for an organization

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | [default to null] |
| **scm** | **String**| Name of SCM | [default to null] |

### Return type

[**GithubScm**](../Models/GithubScm.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getSCMOrganisationRepositories"></a>
# **getSCMOrganisationRepositories**
> List getSCMOrganisationRepositories(organization, scm, scmOrganisation, credentialId, pageSize, pageNumber)



    Retrieve SCM organization repositories details for an organization

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | [default to null] |
| **scm** | **String**| Name of SCM | [default to null] |
| **scmOrganisation** | **String**| Name of the SCM organization | [default to null] |
| **credentialId** | **String**| Credential ID | [optional] [default to null] |
| **pageSize** | **Integer**| Number of items in a page | [optional] [default to null] |
| **pageNumber** | **Integer**| Page number | [optional] [default to null] |

### Return type

[**List**](../Models/GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getSCMOrganisationRepository"></a>
# **getSCMOrganisationRepository**
> List getSCMOrganisationRepository(organization, scm, scmOrganisation, repository, credentialId)



    Retrieve SCM organization repository details for an organization

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | [default to null] |
| **scm** | **String**| Name of SCM | [default to null] |
| **scmOrganisation** | **String**| Name of the SCM organization | [default to null] |
| **repository** | **String**| Name of the SCM repository | [default to null] |
| **credentialId** | **String**| Credential ID | [optional] [default to null] |

### Return type

[**List**](../Models/GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getSCMOrganisations"></a>
# **getSCMOrganisations**
> List getSCMOrganisations(organization, scm, credentialId)



    Retrieve SCM organizations details for an organization

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | [default to null] |
| **scm** | **String**| Name of SCM | [default to null] |
| **credentialId** | **String**| Credential ID | [optional] [default to null] |

### Return type

[**List**](../Models/GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getUser"></a>
# **getUser**
> User getUser(organization, user)



    Retrieve user details for an organization

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | [default to null] |
| **user** | **String**| Name of the user | [default to null] |

### Return type

[**User**](../Models/User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getUserFavorites"></a>
# **getUserFavorites**
> List getUserFavorites(user)



    Retrieve user favorites details for an organization

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **user** | **String**| Name of the user | [default to null] |

### Return type

[**List**](../Models/FavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="getUsers"></a>
# **getUsers**
> User getUsers(organization)



    Retrieve users details for an organization

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | [default to null] |

### Return type

[**User**](../Models/User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="postPipelineRun"></a>
# **postPipelineRun**
> QueueItemImpl postPipelineRun(organization, pipeline, run)



    Replay an organization pipeline run

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | [default to null] |
| **pipeline** | **String**| Name of the pipeline | [default to null] |
| **run** | **String**| Name of the run | [default to null] |

### Return type

[**QueueItemImpl**](../Models/QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="postPipelineRuns"></a>
# **postPipelineRuns**
> QueueItemImpl postPipelineRuns(organization, pipeline)



    Start a build for an organization pipeline

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | [default to null] |
| **pipeline** | **String**| Name of the pipeline | [default to null] |

### Return type

[**QueueItemImpl**](../Models/QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="putPipelineFavorite"></a>
# **putPipelineFavorite**
> FavoriteImpl putPipelineFavorite(organization, pipeline, body)



    Favorite/unfavorite a pipeline

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | [default to null] |
| **pipeline** | **String**| Name of the pipeline | [default to null] |
| **body** | **Boolean**| Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite | |

### Return type

[**FavoriteImpl**](../Models/FavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="putPipelineRun"></a>
# **putPipelineRun**
> PipelineRun putPipelineRun(organization, pipeline, run, blocking, timeOutInSecs)



    Stop a build of an organization pipeline

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **organization** | **String**| Name of the organization | [default to null] |
| **pipeline** | **String**| Name of the pipeline | [default to null] |
| **run** | **String**| Name of the run | [default to null] |
| **blocking** | **String**| Set to true to make blocking stop, default: false | [optional] [default to null] |
| **timeOutInSecs** | **Integer**| Timeout in seconds, default: 10 seconds | [optional] [default to null] |

### Return type

[**PipelineRun**](../Models/PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="search"></a>
# **search**
> String search(q)



    Search for any resource details

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **q** | **String**| Query string | [default to null] |

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="searchClasses"></a>
# **searchClasses**
> String searchClasses(q)



    Get classes details

### Parameters

|Name | Type | Description  | Notes |
|------------- | ------------- | ------------- | -------------|
| **q** | **String**| Query string containing an array of class names | [default to null] |

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

