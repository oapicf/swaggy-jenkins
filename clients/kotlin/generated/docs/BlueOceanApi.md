# BlueOceanApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deletePipelineQueueItem**](BlueOceanApi.md#deletePipelineQueueItem) | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | 
[**getAuthenticatedUser**](BlueOceanApi.md#getAuthenticatedUser) | **GET** /blue/rest/organizations/{organization}/user/ | 
[**getClasses**](BlueOceanApi.md#getClasses) | **GET** /blue/rest/classes/{class} | 
[**getJsonWebKey**](BlueOceanApi.md#getJsonWebKey) | **GET** /jwt-auth/jwks/{key} | 
[**getJsonWebToken**](BlueOceanApi.md#getJsonWebToken) | **GET** /jwt-auth/token | 
[**getOrganisation**](BlueOceanApi.md#getOrganisation) | **GET** /blue/rest/organizations/{organization} | 
[**getOrganisations**](BlueOceanApi.md#getOrganisations) | **GET** /blue/rest/organizations/ | 
[**getPipeline**](BlueOceanApi.md#getPipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline} | 
[**getPipelineActivities**](BlueOceanApi.md#getPipelineActivities) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities | 
[**getPipelineBranch**](BlueOceanApi.md#getPipelineBranch) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ | 
[**getPipelineBranchRun**](BlueOceanApi.md#getPipelineBranchRun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} | 
[**getPipelineBranches**](BlueOceanApi.md#getPipelineBranches) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches | 
[**getPipelineFolder**](BlueOceanApi.md#getPipelineFolder) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/ | 
[**getPipelineFolderPipeline**](BlueOceanApi.md#getPipelineFolderPipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} | 
[**getPipelineQueue**](BlueOceanApi.md#getPipelineQueue) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue | 
[**getPipelineRun**](BlueOceanApi.md#getPipelineRun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} | 
[**getPipelineRunLog**](BlueOceanApi.md#getPipelineRunLog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log | 
[**getPipelineRunNode**](BlueOceanApi.md#getPipelineRunNode) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} | 
[**getPipelineRunNodeStep**](BlueOceanApi.md#getPipelineRunNodeStep) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} | 
[**getPipelineRunNodeStepLog**](BlueOceanApi.md#getPipelineRunNodeStepLog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log | 
[**getPipelineRunNodeSteps**](BlueOceanApi.md#getPipelineRunNodeSteps) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps | 
[**getPipelineRunNodes**](BlueOceanApi.md#getPipelineRunNodes) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes | 
[**getPipelineRuns**](BlueOceanApi.md#getPipelineRuns) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**getPipelines**](BlueOceanApi.md#getPipelines) | **GET** /blue/rest/organizations/{organization}/pipelines/ | 
[**getSCM**](BlueOceanApi.md#getSCM) | **GET** /blue/rest/organizations/{organization}/scm/{scm} | 
[**getSCMOrganisationRepositories**](BlueOceanApi.md#getSCMOrganisationRepositories) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories | 
[**getSCMOrganisationRepository**](BlueOceanApi.md#getSCMOrganisationRepository) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} | 
[**getSCMOrganisations**](BlueOceanApi.md#getSCMOrganisations) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations | 
[**getUser**](BlueOceanApi.md#getUser) | **GET** /blue/rest/organizations/{organization}/users/{user} | 
[**getUserFavorites**](BlueOceanApi.md#getUserFavorites) | **GET** /blue/rest/users/{user}/favorites | 
[**getUsers**](BlueOceanApi.md#getUsers) | **GET** /blue/rest/organizations/{organization}/users/ | 
[**postPipelineRun**](BlueOceanApi.md#postPipelineRun) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay | 
[**postPipelineRuns**](BlueOceanApi.md#postPipelineRuns) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**putPipelineFavorite**](BlueOceanApi.md#putPipelineFavorite) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite | 
[**putPipelineRun**](BlueOceanApi.md#putPipelineRun) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop | 
[**search**](BlueOceanApi.md#search) | **GET** /blue/rest/search/ | 
[**searchClasses**](BlueOceanApi.md#searchClasses) | **GET** /blue/rest/classes/ | 


<a name="deletePipelineQueueItem"></a>
# **deletePipelineQueueItem**
> deletePipelineQueueItem(organization, pipeline, queue)



Delete queue item from an organization pipeline queue

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BlueOceanApi()
val organization : kotlin.String = organization_example // kotlin.String | Name of the organization
val pipeline : kotlin.String = pipeline_example // kotlin.String | Name of the pipeline
val queue : kotlin.String = queue_example // kotlin.String | Name of the queue item
try {
    apiInstance.deletePipelineQueueItem(organization, pipeline, queue)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#deletePipelineQueueItem")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#deletePipelineQueueItem")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **kotlin.String**| Name of the organization |
 **pipeline** | **kotlin.String**| Name of the pipeline |
 **queue** | **kotlin.String**| Name of the queue item |

### Return type

null (empty response body)

### Authorization


Configure jenkins_auth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="getAuthenticatedUser"></a>
# **getAuthenticatedUser**
> User getAuthenticatedUser(organization)



Retrieve authenticated user details for an organization

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BlueOceanApi()
val organization : kotlin.String = organization_example // kotlin.String | Name of the organization
try {
    val result : User = apiInstance.getAuthenticatedUser(organization)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getAuthenticatedUser")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getAuthenticatedUser")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **kotlin.String**| Name of the organization |

### Return type

[**User**](User.md)

### Authorization


Configure jenkins_auth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getClasses"></a>
# **getClasses**
> kotlin.String getClasses(propertyClass)



Get a list of class names supported by a given class

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BlueOceanApi()
val propertyClass : kotlin.String = propertyClass_example // kotlin.String | Name of the class
try {
    val result : kotlin.String = apiInstance.getClasses(propertyClass)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getClasses")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getClasses")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertyClass** | **kotlin.String**| Name of the class |

### Return type

**kotlin.String**

### Authorization


Configure jenkins_auth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getJsonWebKey"></a>
# **getJsonWebKey**
> kotlin.String getJsonWebKey(key)



Retrieve JSON Web Key

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BlueOceanApi()
val key : kotlin.Int = 56 // kotlin.Int | Key ID received as part of JWT header field kid
try {
    val result : kotlin.String = apiInstance.getJsonWebKey(key)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getJsonWebKey")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getJsonWebKey")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **kotlin.Int**| Key ID received as part of JWT header field kid |

### Return type

**kotlin.String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getJsonWebToken"></a>
# **getJsonWebToken**
> kotlin.String getJsonWebToken(expiryTimeInMins, maxExpiryTimeInMins)



Retrieve JSON Web Token

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BlueOceanApi()
val expiryTimeInMins : kotlin.Int = 56 // kotlin.Int | Token expiry time in minutes, default: 30 minutes
val maxExpiryTimeInMins : kotlin.Int = 56 // kotlin.Int | Maximum token expiry time in minutes, default: 480 minutes
try {
    val result : kotlin.String = apiInstance.getJsonWebToken(expiryTimeInMins, maxExpiryTimeInMins)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getJsonWebToken")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getJsonWebToken")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expiryTimeInMins** | **kotlin.Int**| Token expiry time in minutes, default: 30 minutes | [optional]
 **maxExpiryTimeInMins** | **kotlin.Int**| Maximum token expiry time in minutes, default: 480 minutes | [optional]

### Return type

**kotlin.String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getOrganisation"></a>
# **getOrganisation**
> Organisation getOrganisation(organization)



Retrieve organization details

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BlueOceanApi()
val organization : kotlin.String = organization_example // kotlin.String | Name of the organization
try {
    val result : Organisation = apiInstance.getOrganisation(organization)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getOrganisation")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getOrganisation")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **kotlin.String**| Name of the organization |

### Return type

[**Organisation**](Organisation.md)

### Authorization


Configure jenkins_auth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getOrganisations"></a>
# **getOrganisations**
> kotlin.collections.List&lt;Organisation&gt; getOrganisations()



Retrieve all organizations details

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BlueOceanApi()
try {
    val result : kotlin.collections.List<Organisation> = apiInstance.getOrganisations()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getOrganisations")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getOrganisations")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**kotlin.collections.List&lt;Organisation&gt;**](Organisation.md)

### Authorization


Configure jenkins_auth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipeline"></a>
# **getPipeline**
> Pipeline getPipeline(organization, pipeline)



Retrieve pipeline details for an organization

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BlueOceanApi()
val organization : kotlin.String = organization_example // kotlin.String | Name of the organization
val pipeline : kotlin.String = pipeline_example // kotlin.String | Name of the pipeline
try {
    val result : Pipeline = apiInstance.getPipeline(organization, pipeline)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getPipeline")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getPipeline")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **kotlin.String**| Name of the organization |
 **pipeline** | **kotlin.String**| Name of the pipeline |

### Return type

[**Pipeline**](Pipeline.md)

### Authorization


Configure jenkins_auth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineActivities"></a>
# **getPipelineActivities**
> kotlin.collections.List&lt;PipelineActivity&gt; getPipelineActivities(organization, pipeline)



Retrieve all activities details for an organization pipeline

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BlueOceanApi()
val organization : kotlin.String = organization_example // kotlin.String | Name of the organization
val pipeline : kotlin.String = pipeline_example // kotlin.String | Name of the pipeline
try {
    val result : kotlin.collections.List<PipelineActivity> = apiInstance.getPipelineActivities(organization, pipeline)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getPipelineActivities")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getPipelineActivities")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **kotlin.String**| Name of the organization |
 **pipeline** | **kotlin.String**| Name of the pipeline |

### Return type

[**kotlin.collections.List&lt;PipelineActivity&gt;**](PipelineActivity.md)

### Authorization


Configure jenkins_auth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineBranch"></a>
# **getPipelineBranch**
> BranchImpl getPipelineBranch(organization, pipeline, branch)



Retrieve branch details for an organization pipeline

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BlueOceanApi()
val organization : kotlin.String = organization_example // kotlin.String | Name of the organization
val pipeline : kotlin.String = pipeline_example // kotlin.String | Name of the pipeline
val branch : kotlin.String = branch_example // kotlin.String | Name of the branch
try {
    val result : BranchImpl = apiInstance.getPipelineBranch(organization, pipeline, branch)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getPipelineBranch")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getPipelineBranch")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **kotlin.String**| Name of the organization |
 **pipeline** | **kotlin.String**| Name of the pipeline |
 **branch** | **kotlin.String**| Name of the branch |

### Return type

[**BranchImpl**](BranchImpl.md)

### Authorization


Configure jenkins_auth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineBranchRun"></a>
# **getPipelineBranchRun**
> PipelineRun getPipelineBranchRun(organization, pipeline, branch, run)



Retrieve branch run details for an organization pipeline

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BlueOceanApi()
val organization : kotlin.String = organization_example // kotlin.String | Name of the organization
val pipeline : kotlin.String = pipeline_example // kotlin.String | Name of the pipeline
val branch : kotlin.String = branch_example // kotlin.String | Name of the branch
val run : kotlin.String = run_example // kotlin.String | Name of the run
try {
    val result : PipelineRun = apiInstance.getPipelineBranchRun(organization, pipeline, branch, run)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getPipelineBranchRun")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getPipelineBranchRun")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **kotlin.String**| Name of the organization |
 **pipeline** | **kotlin.String**| Name of the pipeline |
 **branch** | **kotlin.String**| Name of the branch |
 **run** | **kotlin.String**| Name of the run |

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization


Configure jenkins_auth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineBranches"></a>
# **getPipelineBranches**
> MultibranchPipeline getPipelineBranches(organization, pipeline)



Retrieve all branches details for an organization pipeline

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BlueOceanApi()
val organization : kotlin.String = organization_example // kotlin.String | Name of the organization
val pipeline : kotlin.String = pipeline_example // kotlin.String | Name of the pipeline
try {
    val result : MultibranchPipeline = apiInstance.getPipelineBranches(organization, pipeline)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getPipelineBranches")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getPipelineBranches")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **kotlin.String**| Name of the organization |
 **pipeline** | **kotlin.String**| Name of the pipeline |

### Return type

[**MultibranchPipeline**](MultibranchPipeline.md)

### Authorization


Configure jenkins_auth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineFolder"></a>
# **getPipelineFolder**
> PipelineFolderImpl getPipelineFolder(organization, folder)



Retrieve pipeline folder for an organization

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BlueOceanApi()
val organization : kotlin.String = organization_example // kotlin.String | Name of the organization
val folder : kotlin.String = folder_example // kotlin.String | Name of the folder
try {
    val result : PipelineFolderImpl = apiInstance.getPipelineFolder(organization, folder)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getPipelineFolder")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getPipelineFolder")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **kotlin.String**| Name of the organization |
 **folder** | **kotlin.String**| Name of the folder |

### Return type

[**PipelineFolderImpl**](PipelineFolderImpl.md)

### Authorization


Configure jenkins_auth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineFolderPipeline"></a>
# **getPipelineFolderPipeline**
> PipelineImpl getPipelineFolderPipeline(organization, pipeline, folder)



Retrieve pipeline details for an organization folder

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BlueOceanApi()
val organization : kotlin.String = organization_example // kotlin.String | Name of the organization
val pipeline : kotlin.String = pipeline_example // kotlin.String | Name of the pipeline
val folder : kotlin.String = folder_example // kotlin.String | Name of the folder
try {
    val result : PipelineImpl = apiInstance.getPipelineFolderPipeline(organization, pipeline, folder)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getPipelineFolderPipeline")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getPipelineFolderPipeline")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **kotlin.String**| Name of the organization |
 **pipeline** | **kotlin.String**| Name of the pipeline |
 **folder** | **kotlin.String**| Name of the folder |

### Return type

[**PipelineImpl**](PipelineImpl.md)

### Authorization


Configure jenkins_auth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineQueue"></a>
# **getPipelineQueue**
> kotlin.collections.List&lt;QueueItemImpl&gt; getPipelineQueue(organization, pipeline)



Retrieve queue details for an organization pipeline

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BlueOceanApi()
val organization : kotlin.String = organization_example // kotlin.String | Name of the organization
val pipeline : kotlin.String = pipeline_example // kotlin.String | Name of the pipeline
try {
    val result : kotlin.collections.List<QueueItemImpl> = apiInstance.getPipelineQueue(organization, pipeline)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getPipelineQueue")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getPipelineQueue")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **kotlin.String**| Name of the organization |
 **pipeline** | **kotlin.String**| Name of the pipeline |

### Return type

[**kotlin.collections.List&lt;QueueItemImpl&gt;**](QueueItemImpl.md)

### Authorization


Configure jenkins_auth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineRun"></a>
# **getPipelineRun**
> PipelineRun getPipelineRun(organization, pipeline, run)



Retrieve run details for an organization pipeline

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BlueOceanApi()
val organization : kotlin.String = organization_example // kotlin.String | Name of the organization
val pipeline : kotlin.String = pipeline_example // kotlin.String | Name of the pipeline
val run : kotlin.String = run_example // kotlin.String | Name of the run
try {
    val result : PipelineRun = apiInstance.getPipelineRun(organization, pipeline, run)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getPipelineRun")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getPipelineRun")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **kotlin.String**| Name of the organization |
 **pipeline** | **kotlin.String**| Name of the pipeline |
 **run** | **kotlin.String**| Name of the run |

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization


Configure jenkins_auth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineRunLog"></a>
# **getPipelineRunLog**
> kotlin.String getPipelineRunLog(organization, pipeline, run, start, download)



Get log for a pipeline run

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BlueOceanApi()
val organization : kotlin.String = organization_example // kotlin.String | Name of the organization
val pipeline : kotlin.String = pipeline_example // kotlin.String | Name of the pipeline
val run : kotlin.String = run_example // kotlin.String | Name of the run
val start : kotlin.Int = 56 // kotlin.Int | Start position of the log
val download : kotlin.Boolean = true // kotlin.Boolean | Set to true in order to download the file, otherwise it's passed as a response body
try {
    val result : kotlin.String = apiInstance.getPipelineRunLog(organization, pipeline, run, start, download)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getPipelineRunLog")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getPipelineRunLog")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **kotlin.String**| Name of the organization |
 **pipeline** | **kotlin.String**| Name of the pipeline |
 **run** | **kotlin.String**| Name of the run |
 **start** | **kotlin.Int**| Start position of the log | [optional]
 **download** | **kotlin.Boolean**| Set to true in order to download the file, otherwise it&#39;s passed as a response body | [optional]

### Return type

**kotlin.String**

### Authorization


Configure jenkins_auth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineRunNode"></a>
# **getPipelineRunNode**
> PipelineRunNode getPipelineRunNode(organization, pipeline, run, node)



Retrieve run node details for an organization pipeline

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BlueOceanApi()
val organization : kotlin.String = organization_example // kotlin.String | Name of the organization
val pipeline : kotlin.String = pipeline_example // kotlin.String | Name of the pipeline
val run : kotlin.String = run_example // kotlin.String | Name of the run
val node : kotlin.String = node_example // kotlin.String | Name of the node
try {
    val result : PipelineRunNode = apiInstance.getPipelineRunNode(organization, pipeline, run, node)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getPipelineRunNode")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getPipelineRunNode")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **kotlin.String**| Name of the organization |
 **pipeline** | **kotlin.String**| Name of the pipeline |
 **run** | **kotlin.String**| Name of the run |
 **node** | **kotlin.String**| Name of the node |

### Return type

[**PipelineRunNode**](PipelineRunNode.md)

### Authorization


Configure jenkins_auth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineRunNodeStep"></a>
# **getPipelineRunNodeStep**
> PipelineStepImpl getPipelineRunNodeStep(organization, pipeline, run, node, step)



Retrieve run node details for an organization pipeline

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BlueOceanApi()
val organization : kotlin.String = organization_example // kotlin.String | Name of the organization
val pipeline : kotlin.String = pipeline_example // kotlin.String | Name of the pipeline
val run : kotlin.String = run_example // kotlin.String | Name of the run
val node : kotlin.String = node_example // kotlin.String | Name of the node
val step : kotlin.String = step_example // kotlin.String | Name of the step
try {
    val result : PipelineStepImpl = apiInstance.getPipelineRunNodeStep(organization, pipeline, run, node, step)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getPipelineRunNodeStep")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getPipelineRunNodeStep")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **kotlin.String**| Name of the organization |
 **pipeline** | **kotlin.String**| Name of the pipeline |
 **run** | **kotlin.String**| Name of the run |
 **node** | **kotlin.String**| Name of the node |
 **step** | **kotlin.String**| Name of the step |

### Return type

[**PipelineStepImpl**](PipelineStepImpl.md)

### Authorization


Configure jenkins_auth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineRunNodeStepLog"></a>
# **getPipelineRunNodeStepLog**
> kotlin.String getPipelineRunNodeStepLog(organization, pipeline, run, node, step)



Get log for a pipeline run node step

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BlueOceanApi()
val organization : kotlin.String = organization_example // kotlin.String | Name of the organization
val pipeline : kotlin.String = pipeline_example // kotlin.String | Name of the pipeline
val run : kotlin.String = run_example // kotlin.String | Name of the run
val node : kotlin.String = node_example // kotlin.String | Name of the node
val step : kotlin.String = step_example // kotlin.String | Name of the step
try {
    val result : kotlin.String = apiInstance.getPipelineRunNodeStepLog(organization, pipeline, run, node, step)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getPipelineRunNodeStepLog")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getPipelineRunNodeStepLog")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **kotlin.String**| Name of the organization |
 **pipeline** | **kotlin.String**| Name of the pipeline |
 **run** | **kotlin.String**| Name of the run |
 **node** | **kotlin.String**| Name of the node |
 **step** | **kotlin.String**| Name of the step |

### Return type

**kotlin.String**

### Authorization


Configure jenkins_auth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineRunNodeSteps"></a>
# **getPipelineRunNodeSteps**
> kotlin.collections.List&lt;PipelineStepImpl&gt; getPipelineRunNodeSteps(organization, pipeline, run, node)



Retrieve run node steps details for an organization pipeline

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BlueOceanApi()
val organization : kotlin.String = organization_example // kotlin.String | Name of the organization
val pipeline : kotlin.String = pipeline_example // kotlin.String | Name of the pipeline
val run : kotlin.String = run_example // kotlin.String | Name of the run
val node : kotlin.String = node_example // kotlin.String | Name of the node
try {
    val result : kotlin.collections.List<PipelineStepImpl> = apiInstance.getPipelineRunNodeSteps(organization, pipeline, run, node)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getPipelineRunNodeSteps")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getPipelineRunNodeSteps")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **kotlin.String**| Name of the organization |
 **pipeline** | **kotlin.String**| Name of the pipeline |
 **run** | **kotlin.String**| Name of the run |
 **node** | **kotlin.String**| Name of the node |

### Return type

[**kotlin.collections.List&lt;PipelineStepImpl&gt;**](PipelineStepImpl.md)

### Authorization


Configure jenkins_auth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineRunNodes"></a>
# **getPipelineRunNodes**
> kotlin.collections.List&lt;PipelineRunNode&gt; getPipelineRunNodes(organization, pipeline, run)



Retrieve run nodes details for an organization pipeline

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BlueOceanApi()
val organization : kotlin.String = organization_example // kotlin.String | Name of the organization
val pipeline : kotlin.String = pipeline_example // kotlin.String | Name of the pipeline
val run : kotlin.String = run_example // kotlin.String | Name of the run
try {
    val result : kotlin.collections.List<PipelineRunNode> = apiInstance.getPipelineRunNodes(organization, pipeline, run)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getPipelineRunNodes")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getPipelineRunNodes")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **kotlin.String**| Name of the organization |
 **pipeline** | **kotlin.String**| Name of the pipeline |
 **run** | **kotlin.String**| Name of the run |

### Return type

[**kotlin.collections.List&lt;PipelineRunNode&gt;**](PipelineRunNode.md)

### Authorization


Configure jenkins_auth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineRuns"></a>
# **getPipelineRuns**
> kotlin.collections.List&lt;PipelineRun&gt; getPipelineRuns(organization, pipeline)



Retrieve all runs details for an organization pipeline

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BlueOceanApi()
val organization : kotlin.String = organization_example // kotlin.String | Name of the organization
val pipeline : kotlin.String = pipeline_example // kotlin.String | Name of the pipeline
try {
    val result : kotlin.collections.List<PipelineRun> = apiInstance.getPipelineRuns(organization, pipeline)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getPipelineRuns")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getPipelineRuns")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **kotlin.String**| Name of the organization |
 **pipeline** | **kotlin.String**| Name of the pipeline |

### Return type

[**kotlin.collections.List&lt;PipelineRun&gt;**](PipelineRun.md)

### Authorization


Configure jenkins_auth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelines"></a>
# **getPipelines**
> kotlin.collections.List&lt;Pipeline&gt; getPipelines(organization)



Retrieve all pipelines details for an organization

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BlueOceanApi()
val organization : kotlin.String = organization_example // kotlin.String | Name of the organization
try {
    val result : kotlin.collections.List<Pipeline> = apiInstance.getPipelines(organization)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getPipelines")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getPipelines")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **kotlin.String**| Name of the organization |

### Return type

[**kotlin.collections.List&lt;Pipeline&gt;**](Pipeline.md)

### Authorization


Configure jenkins_auth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getSCM"></a>
# **getSCM**
> GithubScm getSCM(organization, scm)



Retrieve SCM details for an organization

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BlueOceanApi()
val organization : kotlin.String = organization_example // kotlin.String | Name of the organization
val scm : kotlin.String = scm_example // kotlin.String | Name of SCM
try {
    val result : GithubScm = apiInstance.getSCM(organization, scm)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getSCM")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getSCM")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **kotlin.String**| Name of the organization |
 **scm** | **kotlin.String**| Name of SCM |

### Return type

[**GithubScm**](GithubScm.md)

### Authorization


Configure jenkins_auth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getSCMOrganisationRepositories"></a>
# **getSCMOrganisationRepositories**
> kotlin.collections.List&lt;GithubOrganization&gt; getSCMOrganisationRepositories(organization, scm, scmOrganisation, credentialId, pageSize, pageNumber)



Retrieve SCM organization repositories details for an organization

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BlueOceanApi()
val organization : kotlin.String = organization_example // kotlin.String | Name of the organization
val scm : kotlin.String = scm_example // kotlin.String | Name of SCM
val scmOrganisation : kotlin.String = scmOrganisation_example // kotlin.String | Name of the SCM organization
val credentialId : kotlin.String = credentialId_example // kotlin.String | Credential ID
val pageSize : kotlin.Int = 56 // kotlin.Int | Number of items in a page
val pageNumber : kotlin.Int = 56 // kotlin.Int | Page number
try {
    val result : kotlin.collections.List<GithubOrganization> = apiInstance.getSCMOrganisationRepositories(organization, scm, scmOrganisation, credentialId, pageSize, pageNumber)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getSCMOrganisationRepositories")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getSCMOrganisationRepositories")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **kotlin.String**| Name of the organization |
 **scm** | **kotlin.String**| Name of SCM |
 **scmOrganisation** | **kotlin.String**| Name of the SCM organization |
 **credentialId** | **kotlin.String**| Credential ID | [optional]
 **pageSize** | **kotlin.Int**| Number of items in a page | [optional]
 **pageNumber** | **kotlin.Int**| Page number | [optional]

### Return type

[**kotlin.collections.List&lt;GithubOrganization&gt;**](GithubOrganization.md)

### Authorization


Configure jenkins_auth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getSCMOrganisationRepository"></a>
# **getSCMOrganisationRepository**
> kotlin.collections.List&lt;GithubOrganization&gt; getSCMOrganisationRepository(organization, scm, scmOrganisation, repository, credentialId)



Retrieve SCM organization repository details for an organization

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BlueOceanApi()
val organization : kotlin.String = organization_example // kotlin.String | Name of the organization
val scm : kotlin.String = scm_example // kotlin.String | Name of SCM
val scmOrganisation : kotlin.String = scmOrganisation_example // kotlin.String | Name of the SCM organization
val repository : kotlin.String = repository_example // kotlin.String | Name of the SCM repository
val credentialId : kotlin.String = credentialId_example // kotlin.String | Credential ID
try {
    val result : kotlin.collections.List<GithubOrganization> = apiInstance.getSCMOrganisationRepository(organization, scm, scmOrganisation, repository, credentialId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getSCMOrganisationRepository")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getSCMOrganisationRepository")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **kotlin.String**| Name of the organization |
 **scm** | **kotlin.String**| Name of SCM |
 **scmOrganisation** | **kotlin.String**| Name of the SCM organization |
 **repository** | **kotlin.String**| Name of the SCM repository |
 **credentialId** | **kotlin.String**| Credential ID | [optional]

### Return type

[**kotlin.collections.List&lt;GithubOrganization&gt;**](GithubOrganization.md)

### Authorization


Configure jenkins_auth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getSCMOrganisations"></a>
# **getSCMOrganisations**
> kotlin.collections.List&lt;GithubOrganization&gt; getSCMOrganisations(organization, scm, credentialId)



Retrieve SCM organizations details for an organization

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BlueOceanApi()
val organization : kotlin.String = organization_example // kotlin.String | Name of the organization
val scm : kotlin.String = scm_example // kotlin.String | Name of SCM
val credentialId : kotlin.String = credentialId_example // kotlin.String | Credential ID
try {
    val result : kotlin.collections.List<GithubOrganization> = apiInstance.getSCMOrganisations(organization, scm, credentialId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getSCMOrganisations")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getSCMOrganisations")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **kotlin.String**| Name of the organization |
 **scm** | **kotlin.String**| Name of SCM |
 **credentialId** | **kotlin.String**| Credential ID | [optional]

### Return type

[**kotlin.collections.List&lt;GithubOrganization&gt;**](GithubOrganization.md)

### Authorization


Configure jenkins_auth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getUser"></a>
# **getUser**
> User getUser(organization, user)



Retrieve user details for an organization

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BlueOceanApi()
val organization : kotlin.String = organization_example // kotlin.String | Name of the organization
val user : kotlin.String = user_example // kotlin.String | Name of the user
try {
    val result : User = apiInstance.getUser(organization, user)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getUser")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getUser")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **kotlin.String**| Name of the organization |
 **user** | **kotlin.String**| Name of the user |

### Return type

[**User**](User.md)

### Authorization


Configure jenkins_auth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getUserFavorites"></a>
# **getUserFavorites**
> kotlin.collections.List&lt;FavoriteImpl&gt; getUserFavorites(user)



Retrieve user favorites details for an organization

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BlueOceanApi()
val user : kotlin.String = user_example // kotlin.String | Name of the user
try {
    val result : kotlin.collections.List<FavoriteImpl> = apiInstance.getUserFavorites(user)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getUserFavorites")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getUserFavorites")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | **kotlin.String**| Name of the user |

### Return type

[**kotlin.collections.List&lt;FavoriteImpl&gt;**](FavoriteImpl.md)

### Authorization


Configure jenkins_auth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getUsers"></a>
# **getUsers**
> User getUsers(organization)



Retrieve users details for an organization

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BlueOceanApi()
val organization : kotlin.String = organization_example // kotlin.String | Name of the organization
try {
    val result : User = apiInstance.getUsers(organization)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#getUsers")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#getUsers")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **kotlin.String**| Name of the organization |

### Return type

[**User**](User.md)

### Authorization


Configure jenkins_auth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="postPipelineRun"></a>
# **postPipelineRun**
> QueueItemImpl postPipelineRun(organization, pipeline, run)



Replay an organization pipeline run

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BlueOceanApi()
val organization : kotlin.String = organization_example // kotlin.String | Name of the organization
val pipeline : kotlin.String = pipeline_example // kotlin.String | Name of the pipeline
val run : kotlin.String = run_example // kotlin.String | Name of the run
try {
    val result : QueueItemImpl = apiInstance.postPipelineRun(organization, pipeline, run)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#postPipelineRun")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#postPipelineRun")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **kotlin.String**| Name of the organization |
 **pipeline** | **kotlin.String**| Name of the pipeline |
 **run** | **kotlin.String**| Name of the run |

### Return type

[**QueueItemImpl**](QueueItemImpl.md)

### Authorization


Configure jenkins_auth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="postPipelineRuns"></a>
# **postPipelineRuns**
> QueueItemImpl postPipelineRuns(organization, pipeline)



Start a build for an organization pipeline

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BlueOceanApi()
val organization : kotlin.String = organization_example // kotlin.String | Name of the organization
val pipeline : kotlin.String = pipeline_example // kotlin.String | Name of the pipeline
try {
    val result : QueueItemImpl = apiInstance.postPipelineRuns(organization, pipeline)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#postPipelineRuns")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#postPipelineRuns")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **kotlin.String**| Name of the organization |
 **pipeline** | **kotlin.String**| Name of the pipeline |

### Return type

[**QueueItemImpl**](QueueItemImpl.md)

### Authorization


Configure jenkins_auth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="putPipelineFavorite"></a>
# **putPipelineFavorite**
> FavoriteImpl putPipelineFavorite(organization, pipeline, body)



Favorite/unfavorite a pipeline

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BlueOceanApi()
val organization : kotlin.String = organization_example // kotlin.String | Name of the organization
val pipeline : kotlin.String = pipeline_example // kotlin.String | Name of the pipeline
val body : kotlin.Boolean = true // kotlin.Boolean | Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite
try {
    val result : FavoriteImpl = apiInstance.putPipelineFavorite(organization, pipeline, body)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#putPipelineFavorite")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#putPipelineFavorite")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **kotlin.String**| Name of the organization |
 **pipeline** | **kotlin.String**| Name of the pipeline |
 **body** | **kotlin.Boolean**| Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite |

### Return type

[**FavoriteImpl**](FavoriteImpl.md)

### Authorization


Configure jenkins_auth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putPipelineRun"></a>
# **putPipelineRun**
> PipelineRun putPipelineRun(organization, pipeline, run, blocking, timeOutInSecs)



Stop a build of an organization pipeline

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BlueOceanApi()
val organization : kotlin.String = organization_example // kotlin.String | Name of the organization
val pipeline : kotlin.String = pipeline_example // kotlin.String | Name of the pipeline
val run : kotlin.String = run_example // kotlin.String | Name of the run
val blocking : kotlin.String = blocking_example // kotlin.String | Set to true to make blocking stop, default: false
val timeOutInSecs : kotlin.Int = 56 // kotlin.Int | Timeout in seconds, default: 10 seconds
try {
    val result : PipelineRun = apiInstance.putPipelineRun(organization, pipeline, run, blocking, timeOutInSecs)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#putPipelineRun")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#putPipelineRun")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **kotlin.String**| Name of the organization |
 **pipeline** | **kotlin.String**| Name of the pipeline |
 **run** | **kotlin.String**| Name of the run |
 **blocking** | **kotlin.String**| Set to true to make blocking stop, default: false | [optional]
 **timeOutInSecs** | **kotlin.Int**| Timeout in seconds, default: 10 seconds | [optional]

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization


Configure jenkins_auth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="search"></a>
# **search**
> kotlin.String search(q)



Search for any resource details

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BlueOceanApi()
val q : kotlin.String = q_example // kotlin.String | Query string
try {
    val result : kotlin.String = apiInstance.search(q)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#search")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#search")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **kotlin.String**| Query string |

### Return type

**kotlin.String**

### Authorization


Configure jenkins_auth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="searchClasses"></a>
# **searchClasses**
> kotlin.String searchClasses(q)



Get classes details

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = BlueOceanApi()
val q : kotlin.String = q_example // kotlin.String | Query string containing an array of class names
try {
    val result : kotlin.String = apiInstance.searchClasses(q)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling BlueOceanApi#searchClasses")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling BlueOceanApi#searchClasses")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **kotlin.String**| Query string containing an array of class names |

### Return type

**kotlin.String**

### Authorization


Configure jenkins_auth:
    ApiClient.username = ""
    ApiClient.password = ""

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

