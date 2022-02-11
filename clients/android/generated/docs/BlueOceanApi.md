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



## deletePipelineQueueItem

> deletePipelineQueueItem(organization, pipeline, queue)



Delete queue item from an organization pipeline queue

### Example

```java
// Import classes:
//import org.openapitools.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = null; // String | Name of the organization
String pipeline = null; // String | Name of the pipeline
String queue = null; // String | Name of the queue item
try {
    apiInstance.deletePipelineQueueItem(organization, pipeline, queue);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#deletePipelineQueueItem");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | [default to null]
 **pipeline** | **String**| Name of the pipeline | [default to null]
 **queue** | **String**| Name of the queue item | [default to null]

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## getAuthenticatedUser

> User getAuthenticatedUser(organization)



Retrieve authenticated user details for an organization

### Example

```java
// Import classes:
//import org.openapitools.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = null; // String | Name of the organization
try {
    User result = apiInstance.getAuthenticatedUser(organization);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getAuthenticatedUser");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | [default to null]

### Return type

[**User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getClasses

> String getClasses(_class)



Get a list of class names supported by a given class

### Example

```java
// Import classes:
//import org.openapitools.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String _class = null; // String | Name of the class
try {
    String result = apiInstance.getClasses(_class);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getClasses");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_class** | **String**| Name of the class | [default to null]

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getJsonWebKey

> String getJsonWebKey(key)



Retrieve JSON Web Key

### Example

```java
// Import classes:
//import org.openapitools.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
Integer key = null; // Integer | Key ID received as part of JWT header field kid
try {
    String result = apiInstance.getJsonWebKey(key);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getJsonWebKey");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **Integer**| Key ID received as part of JWT header field kid | [default to null]

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getJsonWebToken

> String getJsonWebToken(expiryTimeInMins, maxExpiryTimeInMins)



Retrieve JSON Web Token

### Example

```java
// Import classes:
//import org.openapitools.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
Integer expiryTimeInMins = null; // Integer | Token expiry time in minutes, default: 30 minutes
Integer maxExpiryTimeInMins = null; // Integer | Maximum token expiry time in minutes, default: 480 minutes
try {
    String result = apiInstance.getJsonWebToken(expiryTimeInMins, maxExpiryTimeInMins);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getJsonWebToken");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expiryTimeInMins** | **Integer**| Token expiry time in minutes, default: 30 minutes | [optional] [default to null]
 **maxExpiryTimeInMins** | **Integer**| Maximum token expiry time in minutes, default: 480 minutes | [optional] [default to null]

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getOrganisation

> Organisation getOrganisation(organization)



Retrieve organization details

### Example

```java
// Import classes:
//import org.openapitools.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = null; // String | Name of the organization
try {
    Organisation result = apiInstance.getOrganisation(organization);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getOrganisation");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | [default to null]

### Return type

[**Organisation**](Organisation.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getOrganisations

> List&lt;Organisation&gt; getOrganisations()



Retrieve all organizations details

### Example

```java
// Import classes:
//import org.openapitools.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
try {
    List<Organisation> result = apiInstance.getOrganisations();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getOrganisations");
    e.printStackTrace();
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**List&lt;Organisation&gt;**](Organisation.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getPipeline

> Pipeline getPipeline(organization, pipeline)



Retrieve pipeline details for an organization

### Example

```java
// Import classes:
//import org.openapitools.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = null; // String | Name of the organization
String pipeline = null; // String | Name of the pipeline
try {
    Pipeline result = apiInstance.getPipeline(organization, pipeline);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getPipeline");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | [default to null]
 **pipeline** | **String**| Name of the pipeline | [default to null]

### Return type

[**Pipeline**](Pipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getPipelineActivities

> List&lt;PipelineActivity&gt; getPipelineActivities(organization, pipeline)



Retrieve all activities details for an organization pipeline

### Example

```java
// Import classes:
//import org.openapitools.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = null; // String | Name of the organization
String pipeline = null; // String | Name of the pipeline
try {
    List<PipelineActivity> result = apiInstance.getPipelineActivities(organization, pipeline);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getPipelineActivities");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | [default to null]
 **pipeline** | **String**| Name of the pipeline | [default to null]

### Return type

[**List&lt;PipelineActivity&gt;**](PipelineActivity.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getPipelineBranch

> BranchImpl getPipelineBranch(organization, pipeline, branch)



Retrieve branch details for an organization pipeline

### Example

```java
// Import classes:
//import org.openapitools.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = null; // String | Name of the organization
String pipeline = null; // String | Name of the pipeline
String branch = null; // String | Name of the branch
try {
    BranchImpl result = apiInstance.getPipelineBranch(organization, pipeline, branch);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getPipelineBranch");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | [default to null]
 **pipeline** | **String**| Name of the pipeline | [default to null]
 **branch** | **String**| Name of the branch | [default to null]

### Return type

[**BranchImpl**](BranchImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getPipelineBranchRun

> PipelineRun getPipelineBranchRun(organization, pipeline, branch, run)



Retrieve branch run details for an organization pipeline

### Example

```java
// Import classes:
//import org.openapitools.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = null; // String | Name of the organization
String pipeline = null; // String | Name of the pipeline
String branch = null; // String | Name of the branch
String run = null; // String | Name of the run
try {
    PipelineRun result = apiInstance.getPipelineBranchRun(organization, pipeline, branch, run);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getPipelineBranchRun");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | [default to null]
 **pipeline** | **String**| Name of the pipeline | [default to null]
 **branch** | **String**| Name of the branch | [default to null]
 **run** | **String**| Name of the run | [default to null]

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getPipelineBranches

> MultibranchPipeline getPipelineBranches(organization, pipeline)



Retrieve all branches details for an organization pipeline

### Example

```java
// Import classes:
//import org.openapitools.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = null; // String | Name of the organization
String pipeline = null; // String | Name of the pipeline
try {
    MultibranchPipeline result = apiInstance.getPipelineBranches(organization, pipeline);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getPipelineBranches");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | [default to null]
 **pipeline** | **String**| Name of the pipeline | [default to null]

### Return type

[**MultibranchPipeline**](MultibranchPipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getPipelineFolder

> PipelineFolderImpl getPipelineFolder(organization, folder)



Retrieve pipeline folder for an organization

### Example

```java
// Import classes:
//import org.openapitools.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = null; // String | Name of the organization
String folder = null; // String | Name of the folder
try {
    PipelineFolderImpl result = apiInstance.getPipelineFolder(organization, folder);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getPipelineFolder");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | [default to null]
 **folder** | **String**| Name of the folder | [default to null]

### Return type

[**PipelineFolderImpl**](PipelineFolderImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getPipelineFolderPipeline

> PipelineImpl getPipelineFolderPipeline(organization, pipeline, folder)



Retrieve pipeline details for an organization folder

### Example

```java
// Import classes:
//import org.openapitools.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = null; // String | Name of the organization
String pipeline = null; // String | Name of the pipeline
String folder = null; // String | Name of the folder
try {
    PipelineImpl result = apiInstance.getPipelineFolderPipeline(organization, pipeline, folder);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getPipelineFolderPipeline");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | [default to null]
 **pipeline** | **String**| Name of the pipeline | [default to null]
 **folder** | **String**| Name of the folder | [default to null]

### Return type

[**PipelineImpl**](PipelineImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getPipelineQueue

> List&lt;QueueItemImpl&gt; getPipelineQueue(organization, pipeline)



Retrieve queue details for an organization pipeline

### Example

```java
// Import classes:
//import org.openapitools.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = null; // String | Name of the organization
String pipeline = null; // String | Name of the pipeline
try {
    List<QueueItemImpl> result = apiInstance.getPipelineQueue(organization, pipeline);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getPipelineQueue");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | [default to null]
 **pipeline** | **String**| Name of the pipeline | [default to null]

### Return type

[**List&lt;QueueItemImpl&gt;**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getPipelineRun

> PipelineRun getPipelineRun(organization, pipeline, run)



Retrieve run details for an organization pipeline

### Example

```java
// Import classes:
//import org.openapitools.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = null; // String | Name of the organization
String pipeline = null; // String | Name of the pipeline
String run = null; // String | Name of the run
try {
    PipelineRun result = apiInstance.getPipelineRun(organization, pipeline, run);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getPipelineRun");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | [default to null]
 **pipeline** | **String**| Name of the pipeline | [default to null]
 **run** | **String**| Name of the run | [default to null]

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getPipelineRunLog

> String getPipelineRunLog(organization, pipeline, run, start, download)



Get log for a pipeline run

### Example

```java
// Import classes:
//import org.openapitools.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = null; // String | Name of the organization
String pipeline = null; // String | Name of the pipeline
String run = null; // String | Name of the run
Integer start = null; // Integer | Start position of the log
Boolean download = null; // Boolean | Set to true in order to download the file, otherwise it's passed as a response body
try {
    String result = apiInstance.getPipelineRunLog(organization, pipeline, run, start, download);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getPipelineRunLog");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | [default to null]
 **pipeline** | **String**| Name of the pipeline | [default to null]
 **run** | **String**| Name of the run | [default to null]
 **start** | **Integer**| Start position of the log | [optional] [default to null]
 **download** | **Boolean**| Set to true in order to download the file, otherwise it&#39;s passed as a response body | [optional] [default to null]

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getPipelineRunNode

> PipelineRunNode getPipelineRunNode(organization, pipeline, run, node)



Retrieve run node details for an organization pipeline

### Example

```java
// Import classes:
//import org.openapitools.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = null; // String | Name of the organization
String pipeline = null; // String | Name of the pipeline
String run = null; // String | Name of the run
String node = null; // String | Name of the node
try {
    PipelineRunNode result = apiInstance.getPipelineRunNode(organization, pipeline, run, node);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getPipelineRunNode");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | [default to null]
 **pipeline** | **String**| Name of the pipeline | [default to null]
 **run** | **String**| Name of the run | [default to null]
 **node** | **String**| Name of the node | [default to null]

### Return type

[**PipelineRunNode**](PipelineRunNode.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getPipelineRunNodeStep

> PipelineStepImpl getPipelineRunNodeStep(organization, pipeline, run, node, step)



Retrieve run node details for an organization pipeline

### Example

```java
// Import classes:
//import org.openapitools.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = null; // String | Name of the organization
String pipeline = null; // String | Name of the pipeline
String run = null; // String | Name of the run
String node = null; // String | Name of the node
String step = null; // String | Name of the step
try {
    PipelineStepImpl result = apiInstance.getPipelineRunNodeStep(organization, pipeline, run, node, step);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getPipelineRunNodeStep");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | [default to null]
 **pipeline** | **String**| Name of the pipeline | [default to null]
 **run** | **String**| Name of the run | [default to null]
 **node** | **String**| Name of the node | [default to null]
 **step** | **String**| Name of the step | [default to null]

### Return type

[**PipelineStepImpl**](PipelineStepImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getPipelineRunNodeStepLog

> String getPipelineRunNodeStepLog(organization, pipeline, run, node, step)



Get log for a pipeline run node step

### Example

```java
// Import classes:
//import org.openapitools.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = null; // String | Name of the organization
String pipeline = null; // String | Name of the pipeline
String run = null; // String | Name of the run
String node = null; // String | Name of the node
String step = null; // String | Name of the step
try {
    String result = apiInstance.getPipelineRunNodeStepLog(organization, pipeline, run, node, step);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getPipelineRunNodeStepLog");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | [default to null]
 **pipeline** | **String**| Name of the pipeline | [default to null]
 **run** | **String**| Name of the run | [default to null]
 **node** | **String**| Name of the node | [default to null]
 **step** | **String**| Name of the step | [default to null]

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getPipelineRunNodeSteps

> List&lt;PipelineStepImpl&gt; getPipelineRunNodeSteps(organization, pipeline, run, node)



Retrieve run node steps details for an organization pipeline

### Example

```java
// Import classes:
//import org.openapitools.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = null; // String | Name of the organization
String pipeline = null; // String | Name of the pipeline
String run = null; // String | Name of the run
String node = null; // String | Name of the node
try {
    List<PipelineStepImpl> result = apiInstance.getPipelineRunNodeSteps(organization, pipeline, run, node);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getPipelineRunNodeSteps");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | [default to null]
 **pipeline** | **String**| Name of the pipeline | [default to null]
 **run** | **String**| Name of the run | [default to null]
 **node** | **String**| Name of the node | [default to null]

### Return type

[**List&lt;PipelineStepImpl&gt;**](PipelineStepImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getPipelineRunNodes

> List&lt;PipelineRunNode&gt; getPipelineRunNodes(organization, pipeline, run)



Retrieve run nodes details for an organization pipeline

### Example

```java
// Import classes:
//import org.openapitools.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = null; // String | Name of the organization
String pipeline = null; // String | Name of the pipeline
String run = null; // String | Name of the run
try {
    List<PipelineRunNode> result = apiInstance.getPipelineRunNodes(organization, pipeline, run);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getPipelineRunNodes");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | [default to null]
 **pipeline** | **String**| Name of the pipeline | [default to null]
 **run** | **String**| Name of the run | [default to null]

### Return type

[**List&lt;PipelineRunNode&gt;**](PipelineRunNode.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getPipelineRuns

> List&lt;PipelineRun&gt; getPipelineRuns(organization, pipeline)



Retrieve all runs details for an organization pipeline

### Example

```java
// Import classes:
//import org.openapitools.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = null; // String | Name of the organization
String pipeline = null; // String | Name of the pipeline
try {
    List<PipelineRun> result = apiInstance.getPipelineRuns(organization, pipeline);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getPipelineRuns");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | [default to null]
 **pipeline** | **String**| Name of the pipeline | [default to null]

### Return type

[**List&lt;PipelineRun&gt;**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getPipelines

> List&lt;Pipeline&gt; getPipelines(organization)



Retrieve all pipelines details for an organization

### Example

```java
// Import classes:
//import org.openapitools.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = null; // String | Name of the organization
try {
    List<Pipeline> result = apiInstance.getPipelines(organization);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getPipelines");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | [default to null]

### Return type

[**List&lt;Pipeline&gt;**](Pipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getSCM

> GithubScm getSCM(organization, scm)



Retrieve SCM details for an organization

### Example

```java
// Import classes:
//import org.openapitools.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = null; // String | Name of the organization
String scm = null; // String | Name of SCM
try {
    GithubScm result = apiInstance.getSCM(organization, scm);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getSCM");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | [default to null]
 **scm** | **String**| Name of SCM | [default to null]

### Return type

[**GithubScm**](GithubScm.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getSCMOrganisationRepositories

> List&lt;GithubOrganization&gt; getSCMOrganisationRepositories(organization, scm, scmOrganisation, credentialId, pageSize, pageNumber)



Retrieve SCM organization repositories details for an organization

### Example

```java
// Import classes:
//import org.openapitools.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = null; // String | Name of the organization
String scm = null; // String | Name of SCM
String scmOrganisation = null; // String | Name of the SCM organization
String credentialId = null; // String | Credential ID
Integer pageSize = null; // Integer | Number of items in a page
Integer pageNumber = null; // Integer | Page number
try {
    List<GithubOrganization> result = apiInstance.getSCMOrganisationRepositories(organization, scm, scmOrganisation, credentialId, pageSize, pageNumber);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getSCMOrganisationRepositories");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | [default to null]
 **scm** | **String**| Name of SCM | [default to null]
 **scmOrganisation** | **String**| Name of the SCM organization | [default to null]
 **credentialId** | **String**| Credential ID | [optional] [default to null]
 **pageSize** | **Integer**| Number of items in a page | [optional] [default to null]
 **pageNumber** | **Integer**| Page number | [optional] [default to null]

### Return type

[**List&lt;GithubOrganization&gt;**](GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getSCMOrganisationRepository

> List&lt;GithubOrganization&gt; getSCMOrganisationRepository(organization, scm, scmOrganisation, repository, credentialId)



Retrieve SCM organization repository details for an organization

### Example

```java
// Import classes:
//import org.openapitools.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = null; // String | Name of the organization
String scm = null; // String | Name of SCM
String scmOrganisation = null; // String | Name of the SCM organization
String repository = null; // String | Name of the SCM repository
String credentialId = null; // String | Credential ID
try {
    List<GithubOrganization> result = apiInstance.getSCMOrganisationRepository(organization, scm, scmOrganisation, repository, credentialId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getSCMOrganisationRepository");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | [default to null]
 **scm** | **String**| Name of SCM | [default to null]
 **scmOrganisation** | **String**| Name of the SCM organization | [default to null]
 **repository** | **String**| Name of the SCM repository | [default to null]
 **credentialId** | **String**| Credential ID | [optional] [default to null]

### Return type

[**List&lt;GithubOrganization&gt;**](GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getSCMOrganisations

> List&lt;GithubOrganization&gt; getSCMOrganisations(organization, scm, credentialId)



Retrieve SCM organizations details for an organization

### Example

```java
// Import classes:
//import org.openapitools.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = null; // String | Name of the organization
String scm = null; // String | Name of SCM
String credentialId = null; // String | Credential ID
try {
    List<GithubOrganization> result = apiInstance.getSCMOrganisations(organization, scm, credentialId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getSCMOrganisations");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | [default to null]
 **scm** | **String**| Name of SCM | [default to null]
 **credentialId** | **String**| Credential ID | [optional] [default to null]

### Return type

[**List&lt;GithubOrganization&gt;**](GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getUser

> User getUser(organization, user)



Retrieve user details for an organization

### Example

```java
// Import classes:
//import org.openapitools.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = null; // String | Name of the organization
String user = null; // String | Name of the user
try {
    User result = apiInstance.getUser(organization, user);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getUser");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | [default to null]
 **user** | **String**| Name of the user | [default to null]

### Return type

[**User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getUserFavorites

> List&lt;FavoriteImpl&gt; getUserFavorites(user)



Retrieve user favorites details for an organization

### Example

```java
// Import classes:
//import org.openapitools.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String user = null; // String | Name of the user
try {
    List<FavoriteImpl> result = apiInstance.getUserFavorites(user);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getUserFavorites");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | **String**| Name of the user | [default to null]

### Return type

[**List&lt;FavoriteImpl&gt;**](FavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getUsers

> User getUsers(organization)



Retrieve users details for an organization

### Example

```java
// Import classes:
//import org.openapitools.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = null; // String | Name of the organization
try {
    User result = apiInstance.getUsers(organization);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getUsers");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | [default to null]

### Return type

[**User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## postPipelineRun

> QueueItemImpl postPipelineRun(organization, pipeline, run)



Replay an organization pipeline run

### Example

```java
// Import classes:
//import org.openapitools.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = null; // String | Name of the organization
String pipeline = null; // String | Name of the pipeline
String run = null; // String | Name of the run
try {
    QueueItemImpl result = apiInstance.postPipelineRun(organization, pipeline, run);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#postPipelineRun");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | [default to null]
 **pipeline** | **String**| Name of the pipeline | [default to null]
 **run** | **String**| Name of the run | [default to null]

### Return type

[**QueueItemImpl**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## postPipelineRuns

> QueueItemImpl postPipelineRuns(organization, pipeline)



Start a build for an organization pipeline

### Example

```java
// Import classes:
//import org.openapitools.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = null; // String | Name of the organization
String pipeline = null; // String | Name of the pipeline
try {
    QueueItemImpl result = apiInstance.postPipelineRuns(organization, pipeline);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#postPipelineRuns");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | [default to null]
 **pipeline** | **String**| Name of the pipeline | [default to null]

### Return type

[**QueueItemImpl**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## putPipelineFavorite

> FavoriteImpl putPipelineFavorite(organization, pipeline, body)



Favorite/unfavorite a pipeline

### Example

```java
// Import classes:
//import org.openapitools.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = null; // String | Name of the organization
String pipeline = null; // String | Name of the pipeline
Boolean body = true; // Boolean | Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite
try {
    FavoriteImpl result = apiInstance.putPipelineFavorite(organization, pipeline, body);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#putPipelineFavorite");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | [default to null]
 **pipeline** | **String**| Name of the pipeline | [default to null]
 **body** | **Boolean**| Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite |

### Return type

[**FavoriteImpl**](FavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## putPipelineRun

> PipelineRun putPipelineRun(organization, pipeline, run, blocking, timeOutInSecs)



Stop a build of an organization pipeline

### Example

```java
// Import classes:
//import org.openapitools.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = null; // String | Name of the organization
String pipeline = null; // String | Name of the pipeline
String run = null; // String | Name of the run
String blocking = null; // String | Set to true to make blocking stop, default: false
Integer timeOutInSecs = null; // Integer | Timeout in seconds, default: 10 seconds
try {
    PipelineRun result = apiInstance.putPipelineRun(organization, pipeline, run, blocking, timeOutInSecs);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#putPipelineRun");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | [default to null]
 **pipeline** | **String**| Name of the pipeline | [default to null]
 **run** | **String**| Name of the run | [default to null]
 **blocking** | **String**| Set to true to make blocking stop, default: false | [optional] [default to null]
 **timeOutInSecs** | **Integer**| Timeout in seconds, default: 10 seconds | [optional] [default to null]

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search

> String search(q)



Search for any resource details

### Example

```java
// Import classes:
//import org.openapitools.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String q = null; // String | Query string
try {
    String result = apiInstance.search(q);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#search");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Query string | [default to null]

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## searchClasses

> String searchClasses(q)



Get classes details

### Example

```java
// Import classes:
//import org.openapitools.client.api.BlueOceanApi;

BlueOceanApi apiInstance = new BlueOceanApi();
String q = null; // String | Query string containing an array of class names
try {
    String result = apiInstance.searchClasses(q);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#searchClasses");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Query string containing an array of class names | [default to null]

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

