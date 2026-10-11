# BlueOceanApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**DeletePipelineQueueItem**](BlueOceanApi.md#DeletePipelineQueueItem) | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | 
[**GetAuthenticatedUser**](BlueOceanApi.md#GetAuthenticatedUser) | **GET** /blue/rest/organizations/{organization}/user/ | 
[**GetClasses**](BlueOceanApi.md#GetClasses) | **GET** /blue/rest/classes/{class} | 
[**GetJsonWebKey**](BlueOceanApi.md#GetJsonWebKey) | **GET** /jwt-auth/jwks/{key} | 
[**GetJsonWebToken**](BlueOceanApi.md#GetJsonWebToken) | **GET** /jwt-auth/token | 
[**GetOrganisation**](BlueOceanApi.md#GetOrganisation) | **GET** /blue/rest/organizations/{organization} | 
[**GetOrganisations**](BlueOceanApi.md#GetOrganisations) | **GET** /blue/rest/organizations/ | 
[**GetPipeline**](BlueOceanApi.md#GetPipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline} | 
[**GetPipelineActivities**](BlueOceanApi.md#GetPipelineActivities) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities | 
[**GetPipelineBranch**](BlueOceanApi.md#GetPipelineBranch) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ | 
[**GetPipelineBranchRun**](BlueOceanApi.md#GetPipelineBranchRun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} | 
[**GetPipelineBranches**](BlueOceanApi.md#GetPipelineBranches) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches | 
[**GetPipelineFolder**](BlueOceanApi.md#GetPipelineFolder) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/ | 
[**GetPipelineFolderPipeline**](BlueOceanApi.md#GetPipelineFolderPipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} | 
[**GetPipelineQueue**](BlueOceanApi.md#GetPipelineQueue) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue | 
[**GetPipelineRun**](BlueOceanApi.md#GetPipelineRun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} | 
[**GetPipelineRunLog**](BlueOceanApi.md#GetPipelineRunLog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log | 
[**GetPipelineRunNode**](BlueOceanApi.md#GetPipelineRunNode) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} | 
[**GetPipelineRunNodeStep**](BlueOceanApi.md#GetPipelineRunNodeStep) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} | 
[**GetPipelineRunNodeStepLog**](BlueOceanApi.md#GetPipelineRunNodeStepLog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log | 
[**GetPipelineRunNodeSteps**](BlueOceanApi.md#GetPipelineRunNodeSteps) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps | 
[**GetPipelineRunNodes**](BlueOceanApi.md#GetPipelineRunNodes) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes | 
[**GetPipelineRuns**](BlueOceanApi.md#GetPipelineRuns) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**GetPipelines**](BlueOceanApi.md#GetPipelines) | **GET** /blue/rest/organizations/{organization}/pipelines/ | 
[**GetSCM**](BlueOceanApi.md#GetSCM) | **GET** /blue/rest/organizations/{organization}/scm/{scm} | 
[**GetSCMOrganisationRepositories**](BlueOceanApi.md#GetSCMOrganisationRepositories) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories | 
[**GetSCMOrganisationRepository**](BlueOceanApi.md#GetSCMOrganisationRepository) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} | 
[**GetSCMOrganisations**](BlueOceanApi.md#GetSCMOrganisations) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations | 
[**GetUser**](BlueOceanApi.md#GetUser) | **GET** /blue/rest/organizations/{organization}/users/{user} | 
[**GetUserFavorites**](BlueOceanApi.md#GetUserFavorites) | **GET** /blue/rest/users/{user}/favorites | 
[**GetUsers**](BlueOceanApi.md#GetUsers) | **GET** /blue/rest/organizations/{organization}/users/ | 
[**PostPipelineRun**](BlueOceanApi.md#PostPipelineRun) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay | 
[**PostPipelineRuns**](BlueOceanApi.md#PostPipelineRuns) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**PutPipelineFavorite**](BlueOceanApi.md#PutPipelineFavorite) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite | 
[**PutPipelineRun**](BlueOceanApi.md#PutPipelineRun) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop | 
[**Search**](BlueOceanApi.md#Search) | **GET** /blue/rest/search/ | 
[**SearchClasses**](BlueOceanApi.md#SearchClasses) | **GET** /blue/rest/classes/ | 


# **DeletePipelineQueueItem**
> DeletePipelineQueueItem(organization, pipeline, queue)



Delete queue item from an organization pipeline queue

### Example
```R
library(openapi)

# prepare function argument(s)
var_organization <- "organization_example" # character | Name of the organization
var_pipeline <- "pipeline_example" # character | Name of the pipeline
var_queue <- "queue_example" # character | Name of the queue item

api_instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
api_instance$DeletePipelineQueueItem(var_organization, var_pipeline, var_queue)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **character**| Name of the organization | 
 **pipeline** | **character**| Name of the pipeline | 
 **queue** | **character**| Name of the queue item | 

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

# **GetAuthenticatedUser**
> User GetAuthenticatedUser(organization)



Retrieve authenticated user details for an organization

### Example
```R
library(openapi)

# prepare function argument(s)
var_organization <- "organization_example" # character | Name of the organization

api_instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetAuthenticatedUser(var_organizationdata_file = "result.txt")
result <- api_instance$GetAuthenticatedUser(var_organization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **character**| Name of the organization | 

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

# **GetClasses**
> character GetClasses(class)



Get a list of class names supported by a given class

### Example
```R
library(openapi)

# prepare function argument(s)
var_class <- "class_example" # character | Name of the class

api_instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetClasses(var_classdata_file = "result.txt")
result <- api_instance$GetClasses(var_class)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **class** | **character**| Name of the class | 

### Return type

**character**

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

# **GetJsonWebKey**
> character GetJsonWebKey(key)



Retrieve JSON Web Key

### Example
```R
library(openapi)

# prepare function argument(s)
var_key <- 56 # integer | Key ID received as part of JWT header field kid

api_instance <- BlueOceanApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetJsonWebKey(var_keydata_file = "result.txt")
result <- api_instance$GetJsonWebKey(var_key)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **integer**| Key ID received as part of JWT header field kid | 

### Return type

**character**

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

# **GetJsonWebToken**
> character GetJsonWebToken(expiry_time_in_mins = var.expiry_time_in_mins, max_expiry_time_in_mins = var.max_expiry_time_in_mins)



Retrieve JSON Web Token

### Example
```R
library(openapi)

# prepare function argument(s)
var_expiry_time_in_mins <- 56 # integer | Token expiry time in minutes, default: 30 minutes (Optional)
var_max_expiry_time_in_mins <- 56 # integer | Maximum token expiry time in minutes, default: 480 minutes (Optional)

api_instance <- BlueOceanApi$new()
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetJsonWebToken(expiry_time_in_mins = var_expiry_time_in_mins, max_expiry_time_in_mins = var_max_expiry_time_in_minsdata_file = "result.txt")
result <- api_instance$GetJsonWebToken(expiry_time_in_mins = var_expiry_time_in_mins, max_expiry_time_in_mins = var_max_expiry_time_in_mins)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expiry_time_in_mins** | **integer**| Token expiry time in minutes, default: 30 minutes | [optional] 
 **max_expiry_time_in_mins** | **integer**| Maximum token expiry time in minutes, default: 480 minutes | [optional] 

### Return type

**character**

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

# **GetOrganisation**
> Organisation GetOrganisation(organization)



Retrieve organization details

### Example
```R
library(openapi)

# prepare function argument(s)
var_organization <- "organization_example" # character | Name of the organization

api_instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetOrganisation(var_organizationdata_file = "result.txt")
result <- api_instance$GetOrganisation(var_organization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **character**| Name of the organization | 

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

# **GetOrganisations**
> array[Organisation] GetOrganisations()



Retrieve all organizations details

### Example
```R
library(openapi)


api_instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetOrganisations(data_file = "result.txt")
result <- api_instance$GetOrganisations()
dput(result)
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**array[Organisation]**](Organisation.md)

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

# **GetPipeline**
> Pipeline GetPipeline(organization, pipeline)



Retrieve pipeline details for an organization

### Example
```R
library(openapi)

# prepare function argument(s)
var_organization <- "organization_example" # character | Name of the organization
var_pipeline <- "pipeline_example" # character | Name of the pipeline

api_instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetPipeline(var_organization, var_pipelinedata_file = "result.txt")
result <- api_instance$GetPipeline(var_organization, var_pipeline)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **character**| Name of the organization | 
 **pipeline** | **character**| Name of the pipeline | 

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

# **GetPipelineActivities**
> array[PipelineActivity] GetPipelineActivities(organization, pipeline)



Retrieve all activities details for an organization pipeline

### Example
```R
library(openapi)

# prepare function argument(s)
var_organization <- "organization_example" # character | Name of the organization
var_pipeline <- "pipeline_example" # character | Name of the pipeline

api_instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetPipelineActivities(var_organization, var_pipelinedata_file = "result.txt")
result <- api_instance$GetPipelineActivities(var_organization, var_pipeline)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **character**| Name of the organization | 
 **pipeline** | **character**| Name of the pipeline | 

### Return type

[**array[PipelineActivity]**](PipelineActivity.md)

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

# **GetPipelineBranch**
> BranchImpl GetPipelineBranch(organization, pipeline, branch)



Retrieve branch details for an organization pipeline

### Example
```R
library(openapi)

# prepare function argument(s)
var_organization <- "organization_example" # character | Name of the organization
var_pipeline <- "pipeline_example" # character | Name of the pipeline
var_branch <- "branch_example" # character | Name of the branch

api_instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetPipelineBranch(var_organization, var_pipeline, var_branchdata_file = "result.txt")
result <- api_instance$GetPipelineBranch(var_organization, var_pipeline, var_branch)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **character**| Name of the organization | 
 **pipeline** | **character**| Name of the pipeline | 
 **branch** | **character**| Name of the branch | 

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

# **GetPipelineBranchRun**
> PipelineRun GetPipelineBranchRun(organization, pipeline, branch, run)



Retrieve branch run details for an organization pipeline

### Example
```R
library(openapi)

# prepare function argument(s)
var_organization <- "organization_example" # character | Name of the organization
var_pipeline <- "pipeline_example" # character | Name of the pipeline
var_branch <- "branch_example" # character | Name of the branch
var_run <- "run_example" # character | Name of the run

api_instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetPipelineBranchRun(var_organization, var_pipeline, var_branch, var_rundata_file = "result.txt")
result <- api_instance$GetPipelineBranchRun(var_organization, var_pipeline, var_branch, var_run)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **character**| Name of the organization | 
 **pipeline** | **character**| Name of the pipeline | 
 **branch** | **character**| Name of the branch | 
 **run** | **character**| Name of the run | 

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

# **GetPipelineBranches**
> MultibranchPipeline GetPipelineBranches(organization, pipeline)



Retrieve all branches details for an organization pipeline

### Example
```R
library(openapi)

# prepare function argument(s)
var_organization <- "organization_example" # character | Name of the organization
var_pipeline <- "pipeline_example" # character | Name of the pipeline

api_instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetPipelineBranches(var_organization, var_pipelinedata_file = "result.txt")
result <- api_instance$GetPipelineBranches(var_organization, var_pipeline)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **character**| Name of the organization | 
 **pipeline** | **character**| Name of the pipeline | 

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

# **GetPipelineFolder**
> PipelineFolderImpl GetPipelineFolder(organization, folder)



Retrieve pipeline folder for an organization

### Example
```R
library(openapi)

# prepare function argument(s)
var_organization <- "organization_example" # character | Name of the organization
var_folder <- "folder_example" # character | Name of the folder

api_instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetPipelineFolder(var_organization, var_folderdata_file = "result.txt")
result <- api_instance$GetPipelineFolder(var_organization, var_folder)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **character**| Name of the organization | 
 **folder** | **character**| Name of the folder | 

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

# **GetPipelineFolderPipeline**
> PipelineImpl GetPipelineFolderPipeline(organization, pipeline, folder)



Retrieve pipeline details for an organization folder

### Example
```R
library(openapi)

# prepare function argument(s)
var_organization <- "organization_example" # character | Name of the organization
var_pipeline <- "pipeline_example" # character | Name of the pipeline
var_folder <- "folder_example" # character | Name of the folder

api_instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetPipelineFolderPipeline(var_organization, var_pipeline, var_folderdata_file = "result.txt")
result <- api_instance$GetPipelineFolderPipeline(var_organization, var_pipeline, var_folder)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **character**| Name of the organization | 
 **pipeline** | **character**| Name of the pipeline | 
 **folder** | **character**| Name of the folder | 

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

# **GetPipelineQueue**
> array[QueueItemImpl] GetPipelineQueue(organization, pipeline)



Retrieve queue details for an organization pipeline

### Example
```R
library(openapi)

# prepare function argument(s)
var_organization <- "organization_example" # character | Name of the organization
var_pipeline <- "pipeline_example" # character | Name of the pipeline

api_instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetPipelineQueue(var_organization, var_pipelinedata_file = "result.txt")
result <- api_instance$GetPipelineQueue(var_organization, var_pipeline)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **character**| Name of the organization | 
 **pipeline** | **character**| Name of the pipeline | 

### Return type

[**array[QueueItemImpl]**](QueueItemImpl.md)

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

# **GetPipelineRun**
> PipelineRun GetPipelineRun(organization, pipeline, run)



Retrieve run details for an organization pipeline

### Example
```R
library(openapi)

# prepare function argument(s)
var_organization <- "organization_example" # character | Name of the organization
var_pipeline <- "pipeline_example" # character | Name of the pipeline
var_run <- "run_example" # character | Name of the run

api_instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetPipelineRun(var_organization, var_pipeline, var_rundata_file = "result.txt")
result <- api_instance$GetPipelineRun(var_organization, var_pipeline, var_run)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **character**| Name of the organization | 
 **pipeline** | **character**| Name of the pipeline | 
 **run** | **character**| Name of the run | 

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

# **GetPipelineRunLog**
> character GetPipelineRunLog(organization, pipeline, run, start = var.start, download = var.download)



Get log for a pipeline run

### Example
```R
library(openapi)

# prepare function argument(s)
var_organization <- "organization_example" # character | Name of the organization
var_pipeline <- "pipeline_example" # character | Name of the pipeline
var_run <- "run_example" # character | Name of the run
var_start <- 56 # integer | Start position of the log (Optional)
var_download <- "download_example" # character | Set to true in order to download the file, otherwise it's passed as a response body (Optional)

api_instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetPipelineRunLog(var_organization, var_pipeline, var_run, start = var_start, download = var_downloaddata_file = "result.txt")
result <- api_instance$GetPipelineRunLog(var_organization, var_pipeline, var_run, start = var_start, download = var_download)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **character**| Name of the organization | 
 **pipeline** | **character**| Name of the pipeline | 
 **run** | **character**| Name of the run | 
 **start** | **integer**| Start position of the log | [optional] 
 **download** | **character**| Set to true in order to download the file, otherwise it&#39;s passed as a response body | [optional] 

### Return type

**character**

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

# **GetPipelineRunNode**
> PipelineRunNode GetPipelineRunNode(organization, pipeline, run, node)



Retrieve run node details for an organization pipeline

### Example
```R
library(openapi)

# prepare function argument(s)
var_organization <- "organization_example" # character | Name of the organization
var_pipeline <- "pipeline_example" # character | Name of the pipeline
var_run <- "run_example" # character | Name of the run
var_node <- "node_example" # character | Name of the node

api_instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetPipelineRunNode(var_organization, var_pipeline, var_run, var_nodedata_file = "result.txt")
result <- api_instance$GetPipelineRunNode(var_organization, var_pipeline, var_run, var_node)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **character**| Name of the organization | 
 **pipeline** | **character**| Name of the pipeline | 
 **run** | **character**| Name of the run | 
 **node** | **character**| Name of the node | 

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

# **GetPipelineRunNodeStep**
> PipelineStepImpl GetPipelineRunNodeStep(organization, pipeline, run, node, step)



Retrieve run node details for an organization pipeline

### Example
```R
library(openapi)

# prepare function argument(s)
var_organization <- "organization_example" # character | Name of the organization
var_pipeline <- "pipeline_example" # character | Name of the pipeline
var_run <- "run_example" # character | Name of the run
var_node <- "node_example" # character | Name of the node
var_step <- "step_example" # character | Name of the step

api_instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetPipelineRunNodeStep(var_organization, var_pipeline, var_run, var_node, var_stepdata_file = "result.txt")
result <- api_instance$GetPipelineRunNodeStep(var_organization, var_pipeline, var_run, var_node, var_step)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **character**| Name of the organization | 
 **pipeline** | **character**| Name of the pipeline | 
 **run** | **character**| Name of the run | 
 **node** | **character**| Name of the node | 
 **step** | **character**| Name of the step | 

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

# **GetPipelineRunNodeStepLog**
> character GetPipelineRunNodeStepLog(organization, pipeline, run, node, step)



Get log for a pipeline run node step

### Example
```R
library(openapi)

# prepare function argument(s)
var_organization <- "organization_example" # character | Name of the organization
var_pipeline <- "pipeline_example" # character | Name of the pipeline
var_run <- "run_example" # character | Name of the run
var_node <- "node_example" # character | Name of the node
var_step <- "step_example" # character | Name of the step

api_instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetPipelineRunNodeStepLog(var_organization, var_pipeline, var_run, var_node, var_stepdata_file = "result.txt")
result <- api_instance$GetPipelineRunNodeStepLog(var_organization, var_pipeline, var_run, var_node, var_step)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **character**| Name of the organization | 
 **pipeline** | **character**| Name of the pipeline | 
 **run** | **character**| Name of the run | 
 **node** | **character**| Name of the node | 
 **step** | **character**| Name of the step | 

### Return type

**character**

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

# **GetPipelineRunNodeSteps**
> array[PipelineStepImpl] GetPipelineRunNodeSteps(organization, pipeline, run, node)



Retrieve run node steps details for an organization pipeline

### Example
```R
library(openapi)

# prepare function argument(s)
var_organization <- "organization_example" # character | Name of the organization
var_pipeline <- "pipeline_example" # character | Name of the pipeline
var_run <- "run_example" # character | Name of the run
var_node <- "node_example" # character | Name of the node

api_instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetPipelineRunNodeSteps(var_organization, var_pipeline, var_run, var_nodedata_file = "result.txt")
result <- api_instance$GetPipelineRunNodeSteps(var_organization, var_pipeline, var_run, var_node)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **character**| Name of the organization | 
 **pipeline** | **character**| Name of the pipeline | 
 **run** | **character**| Name of the run | 
 **node** | **character**| Name of the node | 

### Return type

[**array[PipelineStepImpl]**](PipelineStepImpl.md)

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

# **GetPipelineRunNodes**
> array[PipelineRunNode] GetPipelineRunNodes(organization, pipeline, run)



Retrieve run nodes details for an organization pipeline

### Example
```R
library(openapi)

# prepare function argument(s)
var_organization <- "organization_example" # character | Name of the organization
var_pipeline <- "pipeline_example" # character | Name of the pipeline
var_run <- "run_example" # character | Name of the run

api_instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetPipelineRunNodes(var_organization, var_pipeline, var_rundata_file = "result.txt")
result <- api_instance$GetPipelineRunNodes(var_organization, var_pipeline, var_run)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **character**| Name of the organization | 
 **pipeline** | **character**| Name of the pipeline | 
 **run** | **character**| Name of the run | 

### Return type

[**array[PipelineRunNode]**](PipelineRunNode.md)

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

# **GetPipelineRuns**
> array[PipelineRun] GetPipelineRuns(organization, pipeline)



Retrieve all runs details for an organization pipeline

### Example
```R
library(openapi)

# prepare function argument(s)
var_organization <- "organization_example" # character | Name of the organization
var_pipeline <- "pipeline_example" # character | Name of the pipeline

api_instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetPipelineRuns(var_organization, var_pipelinedata_file = "result.txt")
result <- api_instance$GetPipelineRuns(var_organization, var_pipeline)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **character**| Name of the organization | 
 **pipeline** | **character**| Name of the pipeline | 

### Return type

[**array[PipelineRun]**](PipelineRun.md)

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

# **GetPipelines**
> array[Pipeline] GetPipelines(organization)



Retrieve all pipelines details for an organization

### Example
```R
library(openapi)

# prepare function argument(s)
var_organization <- "organization_example" # character | Name of the organization

api_instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetPipelines(var_organizationdata_file = "result.txt")
result <- api_instance$GetPipelines(var_organization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **character**| Name of the organization | 

### Return type

[**array[Pipeline]**](Pipeline.md)

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

# **GetSCM**
> GithubScm GetSCM(organization, scm)



Retrieve SCM details for an organization

### Example
```R
library(openapi)

# prepare function argument(s)
var_organization <- "organization_example" # character | Name of the organization
var_scm <- "scm_example" # character | Name of SCM

api_instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetSCM(var_organization, var_scmdata_file = "result.txt")
result <- api_instance$GetSCM(var_organization, var_scm)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **character**| Name of the organization | 
 **scm** | **character**| Name of SCM | 

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

# **GetSCMOrganisationRepositories**
> array[GithubOrganization] GetSCMOrganisationRepositories(organization, scm, scm_organisation, credential_id = var.credential_id, page_size = var.page_size, page_number = var.page_number)



Retrieve SCM organization repositories details for an organization

### Example
```R
library(openapi)

# prepare function argument(s)
var_organization <- "organization_example" # character | Name of the organization
var_scm <- "scm_example" # character | Name of SCM
var_scm_organisation <- "scm_organisation_example" # character | Name of the SCM organization
var_credential_id <- "credential_id_example" # character | Credential ID (Optional)
var_page_size <- 56 # integer | Number of items in a page (Optional)
var_page_number <- 56 # integer | Page number (Optional)

api_instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetSCMOrganisationRepositories(var_organization, var_scm, var_scm_organisation, credential_id = var_credential_id, page_size = var_page_size, page_number = var_page_numberdata_file = "result.txt")
result <- api_instance$GetSCMOrganisationRepositories(var_organization, var_scm, var_scm_organisation, credential_id = var_credential_id, page_size = var_page_size, page_number = var_page_number)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **character**| Name of the organization | 
 **scm** | **character**| Name of SCM | 
 **scm_organisation** | **character**| Name of the SCM organization | 
 **credential_id** | **character**| Credential ID | [optional] 
 **page_size** | **integer**| Number of items in a page | [optional] 
 **page_number** | **integer**| Page number | [optional] 

### Return type

[**array[GithubOrganization]**](GithubOrganization.md)

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

# **GetSCMOrganisationRepository**
> array[GithubOrganization] GetSCMOrganisationRepository(organization, scm, scm_organisation, repository, credential_id = var.credential_id)



Retrieve SCM organization repository details for an organization

### Example
```R
library(openapi)

# prepare function argument(s)
var_organization <- "organization_example" # character | Name of the organization
var_scm <- "scm_example" # character | Name of SCM
var_scm_organisation <- "scm_organisation_example" # character | Name of the SCM organization
var_repository <- "repository_example" # character | Name of the SCM repository
var_credential_id <- "credential_id_example" # character | Credential ID (Optional)

api_instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetSCMOrganisationRepository(var_organization, var_scm, var_scm_organisation, var_repository, credential_id = var_credential_iddata_file = "result.txt")
result <- api_instance$GetSCMOrganisationRepository(var_organization, var_scm, var_scm_organisation, var_repository, credential_id = var_credential_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **character**| Name of the organization | 
 **scm** | **character**| Name of SCM | 
 **scm_organisation** | **character**| Name of the SCM organization | 
 **repository** | **character**| Name of the SCM repository | 
 **credential_id** | **character**| Credential ID | [optional] 

### Return type

[**array[GithubOrganization]**](GithubOrganization.md)

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

# **GetSCMOrganisations**
> array[GithubOrganization] GetSCMOrganisations(organization, scm, credential_id = var.credential_id)



Retrieve SCM organizations details for an organization

### Example
```R
library(openapi)

# prepare function argument(s)
var_organization <- "organization_example" # character | Name of the organization
var_scm <- "scm_example" # character | Name of SCM
var_credential_id <- "credential_id_example" # character | Credential ID (Optional)

api_instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetSCMOrganisations(var_organization, var_scm, credential_id = var_credential_iddata_file = "result.txt")
result <- api_instance$GetSCMOrganisations(var_organization, var_scm, credential_id = var_credential_id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **character**| Name of the organization | 
 **scm** | **character**| Name of SCM | 
 **credential_id** | **character**| Credential ID | [optional] 

### Return type

[**array[GithubOrganization]**](GithubOrganization.md)

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

# **GetUser**
> User GetUser(organization, user)



Retrieve user details for an organization

### Example
```R
library(openapi)

# prepare function argument(s)
var_organization <- "organization_example" # character | Name of the organization
var_user <- "user_example" # character | Name of the user

api_instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetUser(var_organization, var_userdata_file = "result.txt")
result <- api_instance$GetUser(var_organization, var_user)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **character**| Name of the organization | 
 **user** | **character**| Name of the user | 

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

# **GetUserFavorites**
> array[FavoriteImpl] GetUserFavorites(user)



Retrieve user favorites details for an organization

### Example
```R
library(openapi)

# prepare function argument(s)
var_user <- "user_example" # character | Name of the user

api_instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetUserFavorites(var_userdata_file = "result.txt")
result <- api_instance$GetUserFavorites(var_user)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | **character**| Name of the user | 

### Return type

[**array[FavoriteImpl]**](FavoriteImpl.md)

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

# **GetUsers**
> User GetUsers(organization)



Retrieve users details for an organization

### Example
```R
library(openapi)

# prepare function argument(s)
var_organization <- "organization_example" # character | Name of the organization

api_instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$GetUsers(var_organizationdata_file = "result.txt")
result <- api_instance$GetUsers(var_organization)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **character**| Name of the organization | 

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

# **PostPipelineRun**
> QueueItemImpl PostPipelineRun(organization, pipeline, run)



Replay an organization pipeline run

### Example
```R
library(openapi)

# prepare function argument(s)
var_organization <- "organization_example" # character | Name of the organization
var_pipeline <- "pipeline_example" # character | Name of the pipeline
var_run <- "run_example" # character | Name of the run

api_instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PostPipelineRun(var_organization, var_pipeline, var_rundata_file = "result.txt")
result <- api_instance$PostPipelineRun(var_organization, var_pipeline, var_run)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **character**| Name of the organization | 
 **pipeline** | **character**| Name of the pipeline | 
 **run** | **character**| Name of the run | 

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

# **PostPipelineRuns**
> QueueItemImpl PostPipelineRuns(organization, pipeline)



Start a build for an organization pipeline

### Example
```R
library(openapi)

# prepare function argument(s)
var_organization <- "organization_example" # character | Name of the organization
var_pipeline <- "pipeline_example" # character | Name of the pipeline

api_instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PostPipelineRuns(var_organization, var_pipelinedata_file = "result.txt")
result <- api_instance$PostPipelineRuns(var_organization, var_pipeline)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **character**| Name of the organization | 
 **pipeline** | **character**| Name of the pipeline | 

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

# **PutPipelineFavorite**
> FavoriteImpl PutPipelineFavorite(organization, pipeline, body)



Favorite/unfavorite a pipeline

### Example
```R
library(openapi)

# prepare function argument(s)
var_organization <- "organization_example" # character | Name of the organization
var_pipeline <- "pipeline_example" # character | Name of the pipeline
var_body <- "body_example" # character | Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite

api_instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PutPipelineFavorite(var_organization, var_pipeline, var_bodydata_file = "result.txt")
result <- api_instance$PutPipelineFavorite(var_organization, var_pipeline, var_body)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **character**| Name of the organization | 
 **pipeline** | **character**| Name of the pipeline | 
 **body** | **character**| Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite | 

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

# **PutPipelineRun**
> PipelineRun PutPipelineRun(organization, pipeline, run, blocking = var.blocking, time_out_in_secs = var.time_out_in_secs)



Stop a build of an organization pipeline

### Example
```R
library(openapi)

# prepare function argument(s)
var_organization <- "organization_example" # character | Name of the organization
var_pipeline <- "pipeline_example" # character | Name of the pipeline
var_run <- "run_example" # character | Name of the run
var_blocking <- "blocking_example" # character | Set to true to make blocking stop, default: false (Optional)
var_time_out_in_secs <- 56 # integer | Timeout in seconds, default: 10 seconds (Optional)

api_instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$PutPipelineRun(var_organization, var_pipeline, var_run, blocking = var_blocking, time_out_in_secs = var_time_out_in_secsdata_file = "result.txt")
result <- api_instance$PutPipelineRun(var_organization, var_pipeline, var_run, blocking = var_blocking, time_out_in_secs = var_time_out_in_secs)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **character**| Name of the organization | 
 **pipeline** | **character**| Name of the pipeline | 
 **run** | **character**| Name of the run | 
 **blocking** | **character**| Set to true to make blocking stop, default: false | [optional] 
 **time_out_in_secs** | **integer**| Timeout in seconds, default: 10 seconds | [optional] 

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

# **Search**
> character Search(q)



Search for any resource details

### Example
```R
library(openapi)

# prepare function argument(s)
var_q <- "q_example" # character | Query string

api_instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$Search(var_qdata_file = "result.txt")
result <- api_instance$Search(var_q)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **character**| Query string | 

### Return type

**character**

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

# **SearchClasses**
> character SearchClasses(q)



Get classes details

### Example
```R
library(openapi)

# prepare function argument(s)
var_q <- "q_example" # character | Query string containing an array of class names

api_instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api_instance$api_client$username <- Sys.getenv("USERNAME")
api_instance$api_client$password <- Sys.getenv("PASSWORD")
# to save the result into a file, simply add the optional `data_file` parameter, e.g.
# result <- api_instance$SearchClasses(var_qdata_file = "result.txt")
result <- api_instance$SearchClasses(var_q)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **character**| Query string containing an array of class names | 

### Return type

**character**

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

