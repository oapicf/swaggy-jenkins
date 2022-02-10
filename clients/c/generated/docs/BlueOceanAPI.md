# BlueOceanAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**BlueOceanAPI_deletePipelineQueueItem**](BlueOceanAPI.md#BlueOceanAPI_deletePipelineQueueItem) | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | 
[**BlueOceanAPI_getAuthenticatedUser**](BlueOceanAPI.md#BlueOceanAPI_getAuthenticatedUser) | **GET** /blue/rest/organizations/{organization}/user/ | 
[**BlueOceanAPI_getClasses**](BlueOceanAPI.md#BlueOceanAPI_getClasses) | **GET** /blue/rest/classes/{class} | 
[**BlueOceanAPI_getJsonWebKey**](BlueOceanAPI.md#BlueOceanAPI_getJsonWebKey) | **GET** /jwt-auth/jwks/{key} | 
[**BlueOceanAPI_getJsonWebToken**](BlueOceanAPI.md#BlueOceanAPI_getJsonWebToken) | **GET** /jwt-auth/token | 
[**BlueOceanAPI_getOrganisation**](BlueOceanAPI.md#BlueOceanAPI_getOrganisation) | **GET** /blue/rest/organizations/{organization} | 
[**BlueOceanAPI_getOrganisations**](BlueOceanAPI.md#BlueOceanAPI_getOrganisations) | **GET** /blue/rest/organizations/ | 
[**BlueOceanAPI_getPipeline**](BlueOceanAPI.md#BlueOceanAPI_getPipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline} | 
[**BlueOceanAPI_getPipelineActivities**](BlueOceanAPI.md#BlueOceanAPI_getPipelineActivities) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities | 
[**BlueOceanAPI_getPipelineBranch**](BlueOceanAPI.md#BlueOceanAPI_getPipelineBranch) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ | 
[**BlueOceanAPI_getPipelineBranchRun**](BlueOceanAPI.md#BlueOceanAPI_getPipelineBranchRun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} | 
[**BlueOceanAPI_getPipelineBranches**](BlueOceanAPI.md#BlueOceanAPI_getPipelineBranches) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches | 
[**BlueOceanAPI_getPipelineFolder**](BlueOceanAPI.md#BlueOceanAPI_getPipelineFolder) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/ | 
[**BlueOceanAPI_getPipelineFolderPipeline**](BlueOceanAPI.md#BlueOceanAPI_getPipelineFolderPipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} | 
[**BlueOceanAPI_getPipelineQueue**](BlueOceanAPI.md#BlueOceanAPI_getPipelineQueue) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue | 
[**BlueOceanAPI_getPipelineRun**](BlueOceanAPI.md#BlueOceanAPI_getPipelineRun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} | 
[**BlueOceanAPI_getPipelineRunLog**](BlueOceanAPI.md#BlueOceanAPI_getPipelineRunLog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log | 
[**BlueOceanAPI_getPipelineRunNode**](BlueOceanAPI.md#BlueOceanAPI_getPipelineRunNode) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} | 
[**BlueOceanAPI_getPipelineRunNodeStep**](BlueOceanAPI.md#BlueOceanAPI_getPipelineRunNodeStep) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} | 
[**BlueOceanAPI_getPipelineRunNodeStepLog**](BlueOceanAPI.md#BlueOceanAPI_getPipelineRunNodeStepLog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log | 
[**BlueOceanAPI_getPipelineRunNodeSteps**](BlueOceanAPI.md#BlueOceanAPI_getPipelineRunNodeSteps) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps | 
[**BlueOceanAPI_getPipelineRunNodes**](BlueOceanAPI.md#BlueOceanAPI_getPipelineRunNodes) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes | 
[**BlueOceanAPI_getPipelineRuns**](BlueOceanAPI.md#BlueOceanAPI_getPipelineRuns) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**BlueOceanAPI_getPipelines**](BlueOceanAPI.md#BlueOceanAPI_getPipelines) | **GET** /blue/rest/organizations/{organization}/pipelines/ | 
[**BlueOceanAPI_getSCM**](BlueOceanAPI.md#BlueOceanAPI_getSCM) | **GET** /blue/rest/organizations/{organization}/scm/{scm} | 
[**BlueOceanAPI_getSCMOrganisationRepositories**](BlueOceanAPI.md#BlueOceanAPI_getSCMOrganisationRepositories) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories | 
[**BlueOceanAPI_getSCMOrganisationRepository**](BlueOceanAPI.md#BlueOceanAPI_getSCMOrganisationRepository) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} | 
[**BlueOceanAPI_getSCMOrganisations**](BlueOceanAPI.md#BlueOceanAPI_getSCMOrganisations) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations | 
[**BlueOceanAPI_getUser**](BlueOceanAPI.md#BlueOceanAPI_getUser) | **GET** /blue/rest/organizations/{organization}/users/{user} | 
[**BlueOceanAPI_getUserFavorites**](BlueOceanAPI.md#BlueOceanAPI_getUserFavorites) | **GET** /blue/rest/users/{user}/favorites | 
[**BlueOceanAPI_getUsers**](BlueOceanAPI.md#BlueOceanAPI_getUsers) | **GET** /blue/rest/organizations/{organization}/users/ | 
[**BlueOceanAPI_postPipelineRun**](BlueOceanAPI.md#BlueOceanAPI_postPipelineRun) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay | 
[**BlueOceanAPI_postPipelineRuns**](BlueOceanAPI.md#BlueOceanAPI_postPipelineRuns) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**BlueOceanAPI_putPipelineFavorite**](BlueOceanAPI.md#BlueOceanAPI_putPipelineFavorite) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite | 
[**BlueOceanAPI_putPipelineRun**](BlueOceanAPI.md#BlueOceanAPI_putPipelineRun) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop | 
[**BlueOceanAPI_search**](BlueOceanAPI.md#BlueOceanAPI_search) | **GET** /blue/rest/search/ | 
[**BlueOceanAPI_searchClasses**](BlueOceanAPI.md#BlueOceanAPI_searchClasses) | **GET** /blue/rest/classes/ | 


# **BlueOceanAPI_deletePipelineQueueItem**
```c
// Delete queue item from an organization pipeline queue
//
void BlueOceanAPI_deletePipelineQueueItem(apiClient_t *apiClient, char * organization, char * pipeline, char * queue);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**organization** | **char \*** | Name of the organization | 
**pipeline** | **char \*** | Name of the pipeline | 
**queue** | **char \*** | Name of the queue item | 

### Return type

void

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **BlueOceanAPI_getAuthenticatedUser**
```c
// Retrieve authenticated user details for an organization
//
user_t* BlueOceanAPI_getAuthenticatedUser(apiClient_t *apiClient, char * organization);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**organization** | **char \*** | Name of the organization | 

### Return type

[user_t](user.md) *


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **BlueOceanAPI_getClasses**
```c
// Get a list of class names supported by a given class
//
char* BlueOceanAPI_getClasses(apiClient_t *apiClient, char * _class);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**_class** | **char \*** | Name of the class | 

### Return type

char*



### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **BlueOceanAPI_getJsonWebKey**
```c
// Retrieve JSON Web Key
//
char* BlueOceanAPI_getJsonWebKey(apiClient_t *apiClient, int key);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**key** | **int** | Key ID received as part of JWT header field kid | 

### Return type

char*



### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **BlueOceanAPI_getJsonWebToken**
```c
// Retrieve JSON Web Token
//
char* BlueOceanAPI_getJsonWebToken(apiClient_t *apiClient, int expiryTimeInMins, int maxExpiryTimeInMins);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**expiryTimeInMins** | **int** | Token expiry time in minutes, default: 30 minutes | [optional] 
**maxExpiryTimeInMins** | **int** | Maximum token expiry time in minutes, default: 480 minutes | [optional] 

### Return type

char*



### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **BlueOceanAPI_getOrganisation**
```c
// Retrieve organization details
//
organisation_t* BlueOceanAPI_getOrganisation(apiClient_t *apiClient, char * organization);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**organization** | **char \*** | Name of the organization | 

### Return type

[organisation_t](organisation.md) *


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **BlueOceanAPI_getOrganisations**
```c
// Retrieve all organizations details
//
list_t* BlueOceanAPI_getOrganisations(apiClient_t *apiClient);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |

### Return type

[list_t](organisation.md) *


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **BlueOceanAPI_getPipeline**
```c
// Retrieve pipeline details for an organization
//
pipeline_t* BlueOceanAPI_getPipeline(apiClient_t *apiClient, char * organization, char * pipeline);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**organization** | **char \*** | Name of the organization | 
**pipeline** | **char \*** | Name of the pipeline | 

### Return type

[pipeline_t](pipeline.md) *


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **BlueOceanAPI_getPipelineActivities**
```c
// Retrieve all activities details for an organization pipeline
//
list_t* BlueOceanAPI_getPipelineActivities(apiClient_t *apiClient, char * organization, char * pipeline);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**organization** | **char \*** | Name of the organization | 
**pipeline** | **char \*** | Name of the pipeline | 

### Return type

[list_t](pipeline_activity.md) *


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **BlueOceanAPI_getPipelineBranch**
```c
// Retrieve branch details for an organization pipeline
//
branch_impl_t* BlueOceanAPI_getPipelineBranch(apiClient_t *apiClient, char * organization, char * pipeline, char * branch);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**organization** | **char \*** | Name of the organization | 
**pipeline** | **char \*** | Name of the pipeline | 
**branch** | **char \*** | Name of the branch | 

### Return type

[branch_impl_t](branch_impl.md) *


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **BlueOceanAPI_getPipelineBranchRun**
```c
// Retrieve branch run details for an organization pipeline
//
pipeline_run_t* BlueOceanAPI_getPipelineBranchRun(apiClient_t *apiClient, char * organization, char * pipeline, char * branch, char * run);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**organization** | **char \*** | Name of the organization | 
**pipeline** | **char \*** | Name of the pipeline | 
**branch** | **char \*** | Name of the branch | 
**run** | **char \*** | Name of the run | 

### Return type

[pipeline_run_t](pipeline_run.md) *


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **BlueOceanAPI_getPipelineBranches**
```c
// Retrieve all branches details for an organization pipeline
//
multibranch_pipeline_t* BlueOceanAPI_getPipelineBranches(apiClient_t *apiClient, char * organization, char * pipeline);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**organization** | **char \*** | Name of the organization | 
**pipeline** | **char \*** | Name of the pipeline | 

### Return type

[multibranch_pipeline_t](multibranch_pipeline.md) *


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **BlueOceanAPI_getPipelineFolder**
```c
// Retrieve pipeline folder for an organization
//
pipeline_folder_impl_t* BlueOceanAPI_getPipelineFolder(apiClient_t *apiClient, char * organization, char * folder);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**organization** | **char \*** | Name of the organization | 
**folder** | **char \*** | Name of the folder | 

### Return type

[pipeline_folder_impl_t](pipeline_folder_impl.md) *


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **BlueOceanAPI_getPipelineFolderPipeline**
```c
// Retrieve pipeline details for an organization folder
//
pipeline_impl_t* BlueOceanAPI_getPipelineFolderPipeline(apiClient_t *apiClient, char * organization, char * pipeline, char * folder);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**organization** | **char \*** | Name of the organization | 
**pipeline** | **char \*** | Name of the pipeline | 
**folder** | **char \*** | Name of the folder | 

### Return type

[pipeline_impl_t](pipeline_impl.md) *


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **BlueOceanAPI_getPipelineQueue**
```c
// Retrieve queue details for an organization pipeline
//
list_t* BlueOceanAPI_getPipelineQueue(apiClient_t *apiClient, char * organization, char * pipeline);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**organization** | **char \*** | Name of the organization | 
**pipeline** | **char \*** | Name of the pipeline | 

### Return type

[list_t](queue_item_impl.md) *


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **BlueOceanAPI_getPipelineRun**
```c
// Retrieve run details for an organization pipeline
//
pipeline_run_t* BlueOceanAPI_getPipelineRun(apiClient_t *apiClient, char * organization, char * pipeline, char * run);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**organization** | **char \*** | Name of the organization | 
**pipeline** | **char \*** | Name of the pipeline | 
**run** | **char \*** | Name of the run | 

### Return type

[pipeline_run_t](pipeline_run.md) *


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **BlueOceanAPI_getPipelineRunLog**
```c
// Get log for a pipeline run
//
char* BlueOceanAPI_getPipelineRunLog(apiClient_t *apiClient, char * organization, char * pipeline, char * run, int start, int download);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**organization** | **char \*** | Name of the organization | 
**pipeline** | **char \*** | Name of the pipeline | 
**run** | **char \*** | Name of the run | 
**start** | **int** | Start position of the log | [optional] 
**download** | **int** | Set to true in order to download the file, otherwise it&#39;s passed as a response body | [optional] 

### Return type

char*



### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **BlueOceanAPI_getPipelineRunNode**
```c
// Retrieve run node details for an organization pipeline
//
pipeline_run_node_t* BlueOceanAPI_getPipelineRunNode(apiClient_t *apiClient, char * organization, char * pipeline, char * run, char * node);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**organization** | **char \*** | Name of the organization | 
**pipeline** | **char \*** | Name of the pipeline | 
**run** | **char \*** | Name of the run | 
**node** | **char \*** | Name of the node | 

### Return type

[pipeline_run_node_t](pipeline_run_node.md) *


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **BlueOceanAPI_getPipelineRunNodeStep**
```c
// Retrieve run node details for an organization pipeline
//
pipeline_step_impl_t* BlueOceanAPI_getPipelineRunNodeStep(apiClient_t *apiClient, char * organization, char * pipeline, char * run, char * node, char * step);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**organization** | **char \*** | Name of the organization | 
**pipeline** | **char \*** | Name of the pipeline | 
**run** | **char \*** | Name of the run | 
**node** | **char \*** | Name of the node | 
**step** | **char \*** | Name of the step | 

### Return type

[pipeline_step_impl_t](pipeline_step_impl.md) *


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **BlueOceanAPI_getPipelineRunNodeStepLog**
```c
// Get log for a pipeline run node step
//
char* BlueOceanAPI_getPipelineRunNodeStepLog(apiClient_t *apiClient, char * organization, char * pipeline, char * run, char * node, char * step);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**organization** | **char \*** | Name of the organization | 
**pipeline** | **char \*** | Name of the pipeline | 
**run** | **char \*** | Name of the run | 
**node** | **char \*** | Name of the node | 
**step** | **char \*** | Name of the step | 

### Return type

char*



### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **BlueOceanAPI_getPipelineRunNodeSteps**
```c
// Retrieve run node steps details for an organization pipeline
//
list_t* BlueOceanAPI_getPipelineRunNodeSteps(apiClient_t *apiClient, char * organization, char * pipeline, char * run, char * node);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**organization** | **char \*** | Name of the organization | 
**pipeline** | **char \*** | Name of the pipeline | 
**run** | **char \*** | Name of the run | 
**node** | **char \*** | Name of the node | 

### Return type

[list_t](pipeline_step_impl.md) *


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **BlueOceanAPI_getPipelineRunNodes**
```c
// Retrieve run nodes details for an organization pipeline
//
list_t* BlueOceanAPI_getPipelineRunNodes(apiClient_t *apiClient, char * organization, char * pipeline, char * run);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**organization** | **char \*** | Name of the organization | 
**pipeline** | **char \*** | Name of the pipeline | 
**run** | **char \*** | Name of the run | 

### Return type

[list_t](pipeline_run_node.md) *


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **BlueOceanAPI_getPipelineRuns**
```c
// Retrieve all runs details for an organization pipeline
//
list_t* BlueOceanAPI_getPipelineRuns(apiClient_t *apiClient, char * organization, char * pipeline);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**organization** | **char \*** | Name of the organization | 
**pipeline** | **char \*** | Name of the pipeline | 

### Return type

[list_t](pipeline_run.md) *


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **BlueOceanAPI_getPipelines**
```c
// Retrieve all pipelines details for an organization
//
list_t* BlueOceanAPI_getPipelines(apiClient_t *apiClient, char * organization);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**organization** | **char \*** | Name of the organization | 

### Return type

[list_t](pipeline.md) *


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **BlueOceanAPI_getSCM**
```c
// Retrieve SCM details for an organization
//
github_scm_t* BlueOceanAPI_getSCM(apiClient_t *apiClient, char * organization, char * scm);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**organization** | **char \*** | Name of the organization | 
**scm** | **char \*** | Name of SCM | 

### Return type

[github_scm_t](github_scm.md) *


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **BlueOceanAPI_getSCMOrganisationRepositories**
```c
// Retrieve SCM organization repositories details for an organization
//
list_t* BlueOceanAPI_getSCMOrganisationRepositories(apiClient_t *apiClient, char * organization, char * scm, char * scmOrganisation, char * credentialId, int pageSize, int pageNumber);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**organization** | **char \*** | Name of the organization | 
**scm** | **char \*** | Name of SCM | 
**scmOrganisation** | **char \*** | Name of the SCM organization | 
**credentialId** | **char \*** | Credential ID | [optional] 
**pageSize** | **int** | Number of items in a page | [optional] 
**pageNumber** | **int** | Page number | [optional] 

### Return type

[list_t](github_organization.md) *


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **BlueOceanAPI_getSCMOrganisationRepository**
```c
// Retrieve SCM organization repository details for an organization
//
list_t* BlueOceanAPI_getSCMOrganisationRepository(apiClient_t *apiClient, char * organization, char * scm, char * scmOrganisation, char * repository, char * credentialId);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**organization** | **char \*** | Name of the organization | 
**scm** | **char \*** | Name of SCM | 
**scmOrganisation** | **char \*** | Name of the SCM organization | 
**repository** | **char \*** | Name of the SCM repository | 
**credentialId** | **char \*** | Credential ID | [optional] 

### Return type

[list_t](github_organization.md) *


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **BlueOceanAPI_getSCMOrganisations**
```c
// Retrieve SCM organizations details for an organization
//
list_t* BlueOceanAPI_getSCMOrganisations(apiClient_t *apiClient, char * organization, char * scm, char * credentialId);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**organization** | **char \*** | Name of the organization | 
**scm** | **char \*** | Name of SCM | 
**credentialId** | **char \*** | Credential ID | [optional] 

### Return type

[list_t](github_organization.md) *


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **BlueOceanAPI_getUser**
```c
// Retrieve user details for an organization
//
user_t* BlueOceanAPI_getUser(apiClient_t *apiClient, char * organization, char * user);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**organization** | **char \*** | Name of the organization | 
**user** | **char \*** | Name of the user | 

### Return type

[user_t](user.md) *


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **BlueOceanAPI_getUserFavorites**
```c
// Retrieve user favorites details for an organization
//
list_t* BlueOceanAPI_getUserFavorites(apiClient_t *apiClient, char * user);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**user** | **char \*** | Name of the user | 

### Return type

[list_t](favorite_impl.md) *


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **BlueOceanAPI_getUsers**
```c
// Retrieve users details for an organization
//
user_t* BlueOceanAPI_getUsers(apiClient_t *apiClient, char * organization);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**organization** | **char \*** | Name of the organization | 

### Return type

[user_t](user.md) *


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **BlueOceanAPI_postPipelineRun**
```c
// Replay an organization pipeline run
//
queue_item_impl_t* BlueOceanAPI_postPipelineRun(apiClient_t *apiClient, char * organization, char * pipeline, char * run);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**organization** | **char \*** | Name of the organization | 
**pipeline** | **char \*** | Name of the pipeline | 
**run** | **char \*** | Name of the run | 

### Return type

[queue_item_impl_t](queue_item_impl.md) *


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **BlueOceanAPI_postPipelineRuns**
```c
// Start a build for an organization pipeline
//
queue_item_impl_t* BlueOceanAPI_postPipelineRuns(apiClient_t *apiClient, char * organization, char * pipeline);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**organization** | **char \*** | Name of the organization | 
**pipeline** | **char \*** | Name of the pipeline | 

### Return type

[queue_item_impl_t](queue_item_impl.md) *


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **BlueOceanAPI_putPipelineFavorite**
```c
// Favorite/unfavorite a pipeline
//
favorite_impl_t* BlueOceanAPI_putPipelineFavorite(apiClient_t *apiClient, char * organization, char * pipeline,  UNKNOWN_BASE_TYPE);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**organization** | **char \*** | Name of the organization | 
**pipeline** | **char \*** | Name of the pipeline | 
**UNKNOWN_BASE_TYPE** |  | Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite | 

### Return type

[favorite_impl_t](favorite_impl.md) *


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **BlueOceanAPI_putPipelineRun**
```c
// Stop a build of an organization pipeline
//
pipeline_run_t* BlueOceanAPI_putPipelineRun(apiClient_t *apiClient, char * organization, char * pipeline, char * run, char * blocking, int timeOutInSecs);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**organization** | **char \*** | Name of the organization | 
**pipeline** | **char \*** | Name of the pipeline | 
**run** | **char \*** | Name of the run | 
**blocking** | **char \*** | Set to true to make blocking stop, default: false | [optional] 
**timeOutInSecs** | **int** | Timeout in seconds, default: 10 seconds | [optional] 

### Return type

[pipeline_run_t](pipeline_run.md) *


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **BlueOceanAPI_search**
```c
// Search for any resource details
//
char* BlueOceanAPI_search(apiClient_t *apiClient, char * q);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**q** | **char \*** | Query string | 

### Return type

char*



### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **BlueOceanAPI_searchClasses**
```c
// Get classes details
//
char* BlueOceanAPI_searchClasses(apiClient_t *apiClient, char * q);
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**apiClient** | **apiClient_t \*** | context containing the client configuration |
**q** | **char \*** | Query string containing an array of class names | 

### Return type

char*



### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

