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

var.organization <- 'organization_example' # character | Name of the organization
var.pipeline <- 'pipeline_example' # character | Name of the pipeline
var.queue <- 'queue_example' # character | Name of the queue item

api.instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
api.instance$DeletePipelineQueueItem(var.organization, var.pipeline, var.queue)
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

var.organization <- 'organization_example' # character | Name of the organization

api.instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GetAuthenticatedUser(var.organization)
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

var.class <- 'class_example' # character | Name of the class

api.instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GetClasses(var.class)
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

var.key <- 56 # integer | Key ID received as part of JWT header field kid

api.instance <- BlueOceanApi$new()
result <- api.instance$GetJsonWebKey(var.key)
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
> character GetJsonWebToken(expiry.time.in.mins=var.expiry.time.in.mins, max.expiry.time.in.mins=var.max.expiry.time.in.mins)



Retrieve JSON Web Token

### Example
```R
library(openapi)

var.expiry.time.in.mins <- 56 # integer | Token expiry time in minutes, default: 30 minutes
var.max.expiry.time.in.mins <- 56 # integer | Maximum token expiry time in minutes, default: 480 minutes

api.instance <- BlueOceanApi$new()
result <- api.instance$GetJsonWebToken(expiry.time.in.mins=var.expiry.time.in.mins, max.expiry.time.in.mins=var.max.expiry.time.in.mins)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expiry.time.in.mins** | **integer**| Token expiry time in minutes, default: 30 minutes | [optional] 
 **max.expiry.time.in.mins** | **integer**| Maximum token expiry time in minutes, default: 480 minutes | [optional] 

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

var.organization <- 'organization_example' # character | Name of the organization

api.instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GetOrganisation(var.organization)
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


api.instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GetOrganisations()
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

var.organization <- 'organization_example' # character | Name of the organization
var.pipeline <- 'pipeline_example' # character | Name of the pipeline

api.instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GetPipeline(var.organization, var.pipeline)
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

var.organization <- 'organization_example' # character | Name of the organization
var.pipeline <- 'pipeline_example' # character | Name of the pipeline

api.instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GetPipelineActivities(var.organization, var.pipeline)
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

var.organization <- 'organization_example' # character | Name of the organization
var.pipeline <- 'pipeline_example' # character | Name of the pipeline
var.branch <- 'branch_example' # character | Name of the branch

api.instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GetPipelineBranch(var.organization, var.pipeline, var.branch)
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

var.organization <- 'organization_example' # character | Name of the organization
var.pipeline <- 'pipeline_example' # character | Name of the pipeline
var.branch <- 'branch_example' # character | Name of the branch
var.run <- 'run_example' # character | Name of the run

api.instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GetPipelineBranchRun(var.organization, var.pipeline, var.branch, var.run)
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

var.organization <- 'organization_example' # character | Name of the organization
var.pipeline <- 'pipeline_example' # character | Name of the pipeline

api.instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GetPipelineBranches(var.organization, var.pipeline)
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

var.organization <- 'organization_example' # character | Name of the organization
var.folder <- 'folder_example' # character | Name of the folder

api.instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GetPipelineFolder(var.organization, var.folder)
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

var.organization <- 'organization_example' # character | Name of the organization
var.pipeline <- 'pipeline_example' # character | Name of the pipeline
var.folder <- 'folder_example' # character | Name of the folder

api.instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GetPipelineFolderPipeline(var.organization, var.pipeline, var.folder)
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

var.organization <- 'organization_example' # character | Name of the organization
var.pipeline <- 'pipeline_example' # character | Name of the pipeline

api.instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GetPipelineQueue(var.organization, var.pipeline)
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

var.organization <- 'organization_example' # character | Name of the organization
var.pipeline <- 'pipeline_example' # character | Name of the pipeline
var.run <- 'run_example' # character | Name of the run

api.instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GetPipelineRun(var.organization, var.pipeline, var.run)
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
> character GetPipelineRunLog(organization, pipeline, run, start=var.start, download=var.download)



Get log for a pipeline run

### Example
```R
library(openapi)

var.organization <- 'organization_example' # character | Name of the organization
var.pipeline <- 'pipeline_example' # character | Name of the pipeline
var.run <- 'run_example' # character | Name of the run
var.start <- 56 # integer | Start position of the log
var.download <- 'download_example' # character | Set to true in order to download the file, otherwise it's passed as a response body

api.instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GetPipelineRunLog(var.organization, var.pipeline, var.run, start=var.start, download=var.download)
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

var.organization <- 'organization_example' # character | Name of the organization
var.pipeline <- 'pipeline_example' # character | Name of the pipeline
var.run <- 'run_example' # character | Name of the run
var.node <- 'node_example' # character | Name of the node

api.instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GetPipelineRunNode(var.organization, var.pipeline, var.run, var.node)
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

var.organization <- 'organization_example' # character | Name of the organization
var.pipeline <- 'pipeline_example' # character | Name of the pipeline
var.run <- 'run_example' # character | Name of the run
var.node <- 'node_example' # character | Name of the node
var.step <- 'step_example' # character | Name of the step

api.instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GetPipelineRunNodeStep(var.organization, var.pipeline, var.run, var.node, var.step)
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

var.organization <- 'organization_example' # character | Name of the organization
var.pipeline <- 'pipeline_example' # character | Name of the pipeline
var.run <- 'run_example' # character | Name of the run
var.node <- 'node_example' # character | Name of the node
var.step <- 'step_example' # character | Name of the step

api.instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GetPipelineRunNodeStepLog(var.organization, var.pipeline, var.run, var.node, var.step)
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

var.organization <- 'organization_example' # character | Name of the organization
var.pipeline <- 'pipeline_example' # character | Name of the pipeline
var.run <- 'run_example' # character | Name of the run
var.node <- 'node_example' # character | Name of the node

api.instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GetPipelineRunNodeSteps(var.organization, var.pipeline, var.run, var.node)
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

var.organization <- 'organization_example' # character | Name of the organization
var.pipeline <- 'pipeline_example' # character | Name of the pipeline
var.run <- 'run_example' # character | Name of the run

api.instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GetPipelineRunNodes(var.organization, var.pipeline, var.run)
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

var.organization <- 'organization_example' # character | Name of the organization
var.pipeline <- 'pipeline_example' # character | Name of the pipeline

api.instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GetPipelineRuns(var.organization, var.pipeline)
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

var.organization <- 'organization_example' # character | Name of the organization

api.instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GetPipelines(var.organization)
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

var.organization <- 'organization_example' # character | Name of the organization
var.scm <- 'scm_example' # character | Name of SCM

api.instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GetSCM(var.organization, var.scm)
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
> array[GithubOrganization] GetSCMOrganisationRepositories(organization, scm, scm.organisation, credential.id=var.credential.id, page.size=var.page.size, page.number=var.page.number)



Retrieve SCM organization repositories details for an organization

### Example
```R
library(openapi)

var.organization <- 'organization_example' # character | Name of the organization
var.scm <- 'scm_example' # character | Name of SCM
var.scm.organisation <- 'scm.organisation_example' # character | Name of the SCM organization
var.credential.id <- 'credential.id_example' # character | Credential ID
var.page.size <- 56 # integer | Number of items in a page
var.page.number <- 56 # integer | Page number

api.instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GetSCMOrganisationRepositories(var.organization, var.scm, var.scm.organisation, credential.id=var.credential.id, page.size=var.page.size, page.number=var.page.number)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **character**| Name of the organization | 
 **scm** | **character**| Name of SCM | 
 **scm.organisation** | **character**| Name of the SCM organization | 
 **credential.id** | **character**| Credential ID | [optional] 
 **page.size** | **integer**| Number of items in a page | [optional] 
 **page.number** | **integer**| Page number | [optional] 

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
> array[GithubOrganization] GetSCMOrganisationRepository(organization, scm, scm.organisation, repository, credential.id=var.credential.id)



Retrieve SCM organization repository details for an organization

### Example
```R
library(openapi)

var.organization <- 'organization_example' # character | Name of the organization
var.scm <- 'scm_example' # character | Name of SCM
var.scm.organisation <- 'scm.organisation_example' # character | Name of the SCM organization
var.repository <- 'repository_example' # character | Name of the SCM repository
var.credential.id <- 'credential.id_example' # character | Credential ID

api.instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GetSCMOrganisationRepository(var.organization, var.scm, var.scm.organisation, var.repository, credential.id=var.credential.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **character**| Name of the organization | 
 **scm** | **character**| Name of SCM | 
 **scm.organisation** | **character**| Name of the SCM organization | 
 **repository** | **character**| Name of the SCM repository | 
 **credential.id** | **character**| Credential ID | [optional] 

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
> array[GithubOrganization] GetSCMOrganisations(organization, scm, credential.id=var.credential.id)



Retrieve SCM organizations details for an organization

### Example
```R
library(openapi)

var.organization <- 'organization_example' # character | Name of the organization
var.scm <- 'scm_example' # character | Name of SCM
var.credential.id <- 'credential.id_example' # character | Credential ID

api.instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GetSCMOrganisations(var.organization, var.scm, credential.id=var.credential.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **character**| Name of the organization | 
 **scm** | **character**| Name of SCM | 
 **credential.id** | **character**| Credential ID | [optional] 

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

var.organization <- 'organization_example' # character | Name of the organization
var.user <- 'user_example' # character | Name of the user

api.instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GetUser(var.organization, var.user)
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

var.user <- 'user_example' # character | Name of the user

api.instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GetUserFavorites(var.user)
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

var.organization <- 'organization_example' # character | Name of the organization

api.instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$GetUsers(var.organization)
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

var.organization <- 'organization_example' # character | Name of the organization
var.pipeline <- 'pipeline_example' # character | Name of the pipeline
var.run <- 'run_example' # character | Name of the run

api.instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$PostPipelineRun(var.organization, var.pipeline, var.run)
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

var.organization <- 'organization_example' # character | Name of the organization
var.pipeline <- 'pipeline_example' # character | Name of the pipeline

api.instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$PostPipelineRuns(var.organization, var.pipeline)
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

var.organization <- 'organization_example' # character | Name of the organization
var.pipeline <- 'pipeline_example' # character | Name of the pipeline
var.body <- 'body_example' # character | Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite

api.instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$PutPipelineFavorite(var.organization, var.pipeline, var.body)
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
> PipelineRun PutPipelineRun(organization, pipeline, run, blocking=var.blocking, time.out.in.secs=var.time.out.in.secs)



Stop a build of an organization pipeline

### Example
```R
library(openapi)

var.organization <- 'organization_example' # character | Name of the organization
var.pipeline <- 'pipeline_example' # character | Name of the pipeline
var.run <- 'run_example' # character | Name of the run
var.blocking <- 'blocking_example' # character | Set to true to make blocking stop, default: false
var.time.out.in.secs <- 56 # integer | Timeout in seconds, default: 10 seconds

api.instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$PutPipelineRun(var.organization, var.pipeline, var.run, blocking=var.blocking, time.out.in.secs=var.time.out.in.secs)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **character**| Name of the organization | 
 **pipeline** | **character**| Name of the pipeline | 
 **run** | **character**| Name of the run | 
 **blocking** | **character**| Set to true to make blocking stop, default: false | [optional] 
 **time.out.in.secs** | **integer**| Timeout in seconds, default: 10 seconds | [optional] 

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

var.q <- 'q_example' # character | Query string

api.instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$Search(var.q)
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

var.q <- 'q_example' # character | Query string containing an array of class names

api.instance <- BlueOceanApi$new()
# Configure HTTP basic authorization: jenkins_auth
api.instance$apiClient$username <- 'TODO_YOUR_USERNAME';
api.instance$apiClient$password <- 'TODO_YOUR_PASSWORD';
result <- api.instance$SearchClasses(var.q)
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

