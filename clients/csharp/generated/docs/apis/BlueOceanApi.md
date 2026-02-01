# Org.OpenAPITools.Api.BlueOceanApi

All URIs are relative to *http://localhost*

| Method | HTTP request | Description |
|--------|--------------|-------------|
| [**DeletePipelineQueueItem**](BlueOceanApi.md#deletepipelinequeueitem) | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} |  |
| [**GetAuthenticatedUser**](BlueOceanApi.md#getauthenticateduser) | **GET** /blue/rest/organizations/{organization}/user/ |  |
| [**GetClasses**](BlueOceanApi.md#getclasses) | **GET** /blue/rest/classes/{class} |  |
| [**GetJsonWebKey**](BlueOceanApi.md#getjsonwebkey) | **GET** /jwt-auth/jwks/{key} |  |
| [**GetJsonWebToken**](BlueOceanApi.md#getjsonwebtoken) | **GET** /jwt-auth/token |  |
| [**GetOrganisation**](BlueOceanApi.md#getorganisation) | **GET** /blue/rest/organizations/{organization} |  |
| [**GetOrganisations**](BlueOceanApi.md#getorganisations) | **GET** /blue/rest/organizations/ |  |
| [**GetPipeline**](BlueOceanApi.md#getpipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline} |  |
| [**GetPipelineActivities**](BlueOceanApi.md#getpipelineactivities) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities |  |
| [**GetPipelineBranch**](BlueOceanApi.md#getpipelinebranch) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ |  |
| [**GetPipelineBranchRun**](BlueOceanApi.md#getpipelinebranchrun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} |  |
| [**GetPipelineBranches**](BlueOceanApi.md#getpipelinebranches) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches |  |
| [**GetPipelineFolder**](BlueOceanApi.md#getpipelinefolder) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/ |  |
| [**GetPipelineFolderPipeline**](BlueOceanApi.md#getpipelinefolderpipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} |  |
| [**GetPipelineQueue**](BlueOceanApi.md#getpipelinequeue) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue |  |
| [**GetPipelineRun**](BlueOceanApi.md#getpipelinerun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} |  |
| [**GetPipelineRunLog**](BlueOceanApi.md#getpipelinerunlog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log |  |
| [**GetPipelineRunNode**](BlueOceanApi.md#getpipelinerunnode) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} |  |
| [**GetPipelineRunNodeStep**](BlueOceanApi.md#getpipelinerunnodestep) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} |  |
| [**GetPipelineRunNodeStepLog**](BlueOceanApi.md#getpipelinerunnodesteplog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log |  |
| [**GetPipelineRunNodeSteps**](BlueOceanApi.md#getpipelinerunnodesteps) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps |  |
| [**GetPipelineRunNodes**](BlueOceanApi.md#getpipelinerunnodes) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes |  |
| [**GetPipelineRuns**](BlueOceanApi.md#getpipelineruns) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs |  |
| [**GetPipelines**](BlueOceanApi.md#getpipelines) | **GET** /blue/rest/organizations/{organization}/pipelines/ |  |
| [**GetSCM**](BlueOceanApi.md#getscm) | **GET** /blue/rest/organizations/{organization}/scm/{scm} |  |
| [**GetSCMOrganisationRepositories**](BlueOceanApi.md#getscmorganisationrepositories) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories |  |
| [**GetSCMOrganisationRepository**](BlueOceanApi.md#getscmorganisationrepository) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} |  |
| [**GetSCMOrganisations**](BlueOceanApi.md#getscmorganisations) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations |  |
| [**GetUser**](BlueOceanApi.md#getuser) | **GET** /blue/rest/organizations/{organization}/users/{user} |  |
| [**GetUserFavorites**](BlueOceanApi.md#getuserfavorites) | **GET** /blue/rest/users/{user}/favorites |  |
| [**GetUsers**](BlueOceanApi.md#getusers) | **GET** /blue/rest/organizations/{organization}/users/ |  |
| [**PostPipelineRun**](BlueOceanApi.md#postpipelinerun) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay |  |
| [**PostPipelineRuns**](BlueOceanApi.md#postpipelineruns) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs |  |
| [**PutPipelineFavorite**](BlueOceanApi.md#putpipelinefavorite) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite |  |
| [**PutPipelineRun**](BlueOceanApi.md#putpipelinerun) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop |  |
| [**Search**](BlueOceanApi.md#search) | **GET** /blue/rest/search/ |  |
| [**SearchClasses**](BlueOceanApi.md#searchclasses) | **GET** /blue/rest/classes/ |  |

<a id="deletepipelinequeueitem"></a>
# **DeletePipelineQueueItem**
> void DeletePipelineQueueItem (string organization, string pipeline, string queue)



Delete queue item from an organization pipeline queue


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **organization** | **string** | Name of the organization |  |
| **pipeline** | **string** | Name of the pipeline |  |
| **queue** | **string** | Name of the queue item |  |

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
| **200** | Successfully deleted queue item |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getauthenticateduser"></a>
# **GetAuthenticatedUser**
> User GetAuthenticatedUser (string organization)



Retrieve authenticated user details for an organization


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **organization** | **string** | Name of the organization |  |

### Return type

[**User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved authenticated user details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getclasses"></a>
# **GetClasses**
> string GetClasses (string varClass)



Get a list of class names supported by a given class


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **varClass** | **string** | Name of the class |  |

### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved class names |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getjsonwebkey"></a>
# **GetJsonWebKey**
> string GetJsonWebKey (int key)



Retrieve JSON Web Key


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **key** | **int** | Key ID received as part of JWT header field kid |  |

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved JWT token |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getjsonwebtoken"></a>
# **GetJsonWebToken**
> string GetJsonWebToken (int expiryTimeInMins = null, int maxExpiryTimeInMins = null)



Retrieve JSON Web Token


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **expiryTimeInMins** | **int** | Token expiry time in minutes, default: 30 minutes | [optional]  |
| **maxExpiryTimeInMins** | **int** | Maximum token expiry time in minutes, default: 480 minutes | [optional]  |

### Return type

**string**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved JWT token |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getorganisation"></a>
# **GetOrganisation**
> Organisation GetOrganisation (string organization)



Retrieve organization details


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **organization** | **string** | Name of the organization |  |

### Return type

[**Organisation**](Organisation.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved pipeline details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Pipeline cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getorganisations"></a>
# **GetOrganisations**
> List&lt;Organisation&gt; GetOrganisations ()



Retrieve all organizations details


### Parameters
This endpoint does not need any parameter.
### Return type

[**List&lt;Organisation&gt;**](Organisation.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved pipelines details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getpipeline"></a>
# **GetPipeline**
> Pipeline GetPipeline (string organization, string pipeline)



Retrieve pipeline details for an organization


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **organization** | **string** | Name of the organization |  |
| **pipeline** | **string** | Name of the pipeline |  |

### Return type

[**Pipeline**](Pipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved pipeline details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Pipeline cannot be found on Jenkins instance |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getpipelineactivities"></a>
# **GetPipelineActivities**
> List&lt;PipelineActivity&gt; GetPipelineActivities (string organization, string pipeline)



Retrieve all activities details for an organization pipeline


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **organization** | **string** | Name of the organization |  |
| **pipeline** | **string** | Name of the pipeline |  |

### Return type

[**List&lt;PipelineActivity&gt;**](PipelineActivity.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved all activities details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getpipelinebranch"></a>
# **GetPipelineBranch**
> BranchImpl GetPipelineBranch (string organization, string pipeline, string branch)



Retrieve branch details for an organization pipeline


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **organization** | **string** | Name of the organization |  |
| **pipeline** | **string** | Name of the pipeline |  |
| **branch** | **string** | Name of the branch |  |

### Return type

[**BranchImpl**](BranchImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved branch details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getpipelinebranchrun"></a>
# **GetPipelineBranchRun**
> PipelineRun GetPipelineBranchRun (string organization, string pipeline, string branch, string run)



Retrieve branch run details for an organization pipeline


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **organization** | **string** | Name of the organization |  |
| **pipeline** | **string** | Name of the pipeline |  |
| **branch** | **string** | Name of the branch |  |
| **run** | **string** | Name of the run |  |

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved run details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getpipelinebranches"></a>
# **GetPipelineBranches**
> MultibranchPipeline GetPipelineBranches (string organization, string pipeline)



Retrieve all branches details for an organization pipeline


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **organization** | **string** | Name of the organization |  |
| **pipeline** | **string** | Name of the pipeline |  |

### Return type

[**MultibranchPipeline**](MultibranchPipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved all branches details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getpipelinefolder"></a>
# **GetPipelineFolder**
> PipelineFolderImpl GetPipelineFolder (string organization, string folder)



Retrieve pipeline folder for an organization


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **organization** | **string** | Name of the organization |  |
| **folder** | **string** | Name of the folder |  |

### Return type

[**PipelineFolderImpl**](PipelineFolderImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved folder details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getpipelinefolderpipeline"></a>
# **GetPipelineFolderPipeline**
> PipelineImpl GetPipelineFolderPipeline (string organization, string pipeline, string folder)



Retrieve pipeline details for an organization folder


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **organization** | **string** | Name of the organization |  |
| **pipeline** | **string** | Name of the pipeline |  |
| **folder** | **string** | Name of the folder |  |

### Return type

[**PipelineImpl**](PipelineImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved pipeline details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getpipelinequeue"></a>
# **GetPipelineQueue**
> List&lt;QueueItemImpl&gt; GetPipelineQueue (string organization, string pipeline)



Retrieve queue details for an organization pipeline


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **organization** | **string** | Name of the organization |  |
| **pipeline** | **string** | Name of the pipeline |  |

### Return type

[**List&lt;QueueItemImpl&gt;**](QueueItemImpl.md)

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

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getpipelinerun"></a>
# **GetPipelineRun**
> PipelineRun GetPipelineRun (string organization, string pipeline, string run)



Retrieve run details for an organization pipeline


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **organization** | **string** | Name of the organization |  |
| **pipeline** | **string** | Name of the pipeline |  |
| **run** | **string** | Name of the run |  |

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved run details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getpipelinerunlog"></a>
# **GetPipelineRunLog**
> string GetPipelineRunLog (string organization, string pipeline, string run, int start = null, bool download = null)



Get log for a pipeline run


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **organization** | **string** | Name of the organization |  |
| **pipeline** | **string** | Name of the pipeline |  |
| **run** | **string** | Name of the run |  |
| **start** | **int** | Start position of the log | [optional]  |
| **download** | **bool** | Set to true in order to download the file, otherwise it&#39;s passed as a response body | [optional]  |

### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved pipeline run log |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getpipelinerunnode"></a>
# **GetPipelineRunNode**
> PipelineRunNode GetPipelineRunNode (string organization, string pipeline, string run, string node)



Retrieve run node details for an organization pipeline


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **organization** | **string** | Name of the organization |  |
| **pipeline** | **string** | Name of the pipeline |  |
| **run** | **string** | Name of the run |  |
| **node** | **string** | Name of the node |  |

### Return type

[**PipelineRunNode**](PipelineRunNode.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved run node details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getpipelinerunnodestep"></a>
# **GetPipelineRunNodeStep**
> PipelineStepImpl GetPipelineRunNodeStep (string organization, string pipeline, string run, string node, string step)



Retrieve run node details for an organization pipeline


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **organization** | **string** | Name of the organization |  |
| **pipeline** | **string** | Name of the pipeline |  |
| **run** | **string** | Name of the run |  |
| **node** | **string** | Name of the node |  |
| **step** | **string** | Name of the step |  |

### Return type

[**PipelineStepImpl**](PipelineStepImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved run node step details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getpipelinerunnodesteplog"></a>
# **GetPipelineRunNodeStepLog**
> string GetPipelineRunNodeStepLog (string organization, string pipeline, string run, string node, string step)



Get log for a pipeline run node step


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **organization** | **string** | Name of the organization |  |
| **pipeline** | **string** | Name of the pipeline |  |
| **run** | **string** | Name of the run |  |
| **node** | **string** | Name of the node |  |
| **step** | **string** | Name of the step |  |

### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved pipeline run node step log |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getpipelinerunnodesteps"></a>
# **GetPipelineRunNodeSteps**
> List&lt;PipelineStepImpl&gt; GetPipelineRunNodeSteps (string organization, string pipeline, string run, string node)



Retrieve run node steps details for an organization pipeline


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **organization** | **string** | Name of the organization |  |
| **pipeline** | **string** | Name of the pipeline |  |
| **run** | **string** | Name of the run |  |
| **node** | **string** | Name of the node |  |

### Return type

[**List&lt;PipelineStepImpl&gt;**](PipelineStepImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved run node steps details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getpipelinerunnodes"></a>
# **GetPipelineRunNodes**
> List&lt;PipelineRunNode&gt; GetPipelineRunNodes (string organization, string pipeline, string run)



Retrieve run nodes details for an organization pipeline


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **organization** | **string** | Name of the organization |  |
| **pipeline** | **string** | Name of the pipeline |  |
| **run** | **string** | Name of the run |  |

### Return type

[**List&lt;PipelineRunNode&gt;**](PipelineRunNode.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved run nodes details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getpipelineruns"></a>
# **GetPipelineRuns**
> List&lt;PipelineRun&gt; GetPipelineRuns (string organization, string pipeline)



Retrieve all runs details for an organization pipeline


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **organization** | **string** | Name of the organization |  |
| **pipeline** | **string** | Name of the pipeline |  |

### Return type

[**List&lt;PipelineRun&gt;**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved runs details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getpipelines"></a>
# **GetPipelines**
> List&lt;Pipeline&gt; GetPipelines (string organization)



Retrieve all pipelines details for an organization


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **organization** | **string** | Name of the organization |  |

### Return type

[**List&lt;Pipeline&gt;**](Pipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved pipelines details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getscm"></a>
# **GetSCM**
> GithubScm GetSCM (string organization, string scm)



Retrieve SCM details for an organization


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **organization** | **string** | Name of the organization |  |
| **scm** | **string** | Name of SCM |  |

### Return type

[**GithubScm**](GithubScm.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved SCM details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getscmorganisationrepositories"></a>
# **GetSCMOrganisationRepositories**
> List&lt;GithubOrganization&gt; GetSCMOrganisationRepositories (string organization, string scm, string scmOrganisation, string credentialId = null, int pageSize = null, int pageNumber = null)



Retrieve SCM organization repositories details for an organization


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **organization** | **string** | Name of the organization |  |
| **scm** | **string** | Name of SCM |  |
| **scmOrganisation** | **string** | Name of the SCM organization |  |
| **credentialId** | **string** | Credential ID | [optional]  |
| **pageSize** | **int** | Number of items in a page | [optional]  |
| **pageNumber** | **int** | Page number | [optional]  |

### Return type

[**List&lt;GithubOrganization&gt;**](GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved SCM organization repositories details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getscmorganisationrepository"></a>
# **GetSCMOrganisationRepository**
> List&lt;GithubOrganization&gt; GetSCMOrganisationRepository (string organization, string scm, string scmOrganisation, string repository, string credentialId = null)



Retrieve SCM organization repository details for an organization


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **organization** | **string** | Name of the organization |  |
| **scm** | **string** | Name of SCM |  |
| **scmOrganisation** | **string** | Name of the SCM organization |  |
| **repository** | **string** | Name of the SCM repository |  |
| **credentialId** | **string** | Credential ID | [optional]  |

### Return type

[**List&lt;GithubOrganization&gt;**](GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved SCM organizations details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getscmorganisations"></a>
# **GetSCMOrganisations**
> List&lt;GithubOrganization&gt; GetSCMOrganisations (string organization, string scm, string credentialId = null)



Retrieve SCM organizations details for an organization


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **organization** | **string** | Name of the organization |  |
| **scm** | **string** | Name of SCM |  |
| **credentialId** | **string** | Credential ID | [optional]  |

### Return type

[**List&lt;GithubOrganization&gt;**](GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved SCM organizations details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getuser"></a>
# **GetUser**
> User GetUser (string organization, string user)



Retrieve user details for an organization


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **organization** | **string** | Name of the organization |  |
| **user** | **string** | Name of the user |  |

### Return type

[**User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved users details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getuserfavorites"></a>
# **GetUserFavorites**
> List&lt;FavoriteImpl&gt; GetUserFavorites (string user)



Retrieve user favorites details for an organization


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **user** | **string** | Name of the user |  |

### Return type

[**List&lt;FavoriteImpl&gt;**](FavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved users favorites details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="getusers"></a>
# **GetUsers**
> User GetUsers (string organization)



Retrieve users details for an organization


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **organization** | **string** | Name of the organization |  |

### Return type

[**User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved users details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="postpipelinerun"></a>
# **PostPipelineRun**
> QueueItemImpl PostPipelineRun (string organization, string pipeline, string run)



Replay an organization pipeline run


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **organization** | **string** | Name of the organization |  |
| **pipeline** | **string** | Name of the pipeline |  |
| **run** | **string** | Name of the run |  |

### Return type

[**QueueItemImpl**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully replayed a pipeline run |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="postpipelineruns"></a>
# **PostPipelineRuns**
> QueueItemImpl PostPipelineRuns (string organization, string pipeline)



Start a build for an organization pipeline


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **organization** | **string** | Name of the organization |  |
| **pipeline** | **string** | Name of the pipeline |  |

### Return type

[**QueueItemImpl**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully started a build |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="putpipelinefavorite"></a>
# **PutPipelineFavorite**
> FavoriteImpl PutPipelineFavorite (string organization, string pipeline, bool body)



Favorite/unfavorite a pipeline


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **organization** | **string** | Name of the organization |  |
| **pipeline** | **string** | Name of the pipeline |  |
| **body** | **bool** | Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite |  |

### Return type

[**FavoriteImpl**](FavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully favorited/unfavorited a pipeline |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="putpipelinerun"></a>
# **PutPipelineRun**
> PipelineRun PutPipelineRun (string organization, string pipeline, string run, string blocking = null, int timeOutInSecs = null)



Stop a build of an organization pipeline


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **organization** | **string** | Name of the organization |  |
| **pipeline** | **string** | Name of the pipeline |  |
| **run** | **string** | Name of the run |  |
| **blocking** | **string** | Set to true to make blocking stop, default: false | [optional]  |
| **timeOutInSecs** | **int** | Timeout in seconds, default: 10 seconds | [optional]  |

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully stopped a build |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="search"></a>
# **Search**
> string Search (string q)



Search for any resource details


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **q** | **string** | Query string |  |

### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved search result |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

<a id="searchclasses"></a>
# **SearchClasses**
> string SearchClasses (string q)



Get classes details


### Parameters

| Name | Type | Description | Notes |
|------|------|-------------|-------|
| **q** | **string** | Query string containing an array of class names |  |

### Return type

**string**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved search result |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

