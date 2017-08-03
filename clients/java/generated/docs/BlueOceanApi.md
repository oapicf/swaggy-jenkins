# BlueOceanApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deletePipelineQueueItem**](BlueOceanApi.md#deletePipelineQueueItem) | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | 
[**getAuthenticatedUser**](BlueOceanApi.md#getAuthenticatedUser) | **GET** /blue/rest/organizations/{organization}/user/ | 
[**getClasses**](BlueOceanApi.md#getClasses) | **GET** /blue/rest/classes/{class} | 
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
```java
// Import classes:
//import com.cliffano.swaggyjenkins.ApiClient;
//import com.cliffano.swaggyjenkins.ApiException;
//import com.cliffano.swaggyjenkins.Configuration;
//import com.cliffano.swaggyjenkins.auth.*;
//import com.cliffano.swaggyjenkins.api.BlueOceanApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
jenkins_auth.setUsername("YOUR USERNAME");
jenkins_auth.setPassword("YOUR PASSWORD");

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = "organization_example"; // String | Name of the organization
String pipeline = "pipeline_example"; // String | Name of the pipeline
String queue = "queue_example"; // String | Name of the queue item
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
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |
 **queue** | **String**| Name of the queue item |

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getAuthenticatedUser"></a>
# **getAuthenticatedUser**
> User getAuthenticatedUser(organization)



Retrieve authenticated user details for an organization

### Example
```java
// Import classes:
//import com.cliffano.swaggyjenkins.ApiClient;
//import com.cliffano.swaggyjenkins.ApiException;
//import com.cliffano.swaggyjenkins.Configuration;
//import com.cliffano.swaggyjenkins.auth.*;
//import com.cliffano.swaggyjenkins.api.BlueOceanApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
jenkins_auth.setUsername("YOUR USERNAME");
jenkins_auth.setPassword("YOUR PASSWORD");

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = "organization_example"; // String | Name of the organization
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
 **organization** | **String**| Name of the organization |

### Return type

[**User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getClasses"></a>
# **getClasses**
> String getClasses(propertyClass)



Get a list of class names supported by a given class

### Example
```java
// Import classes:
//import com.cliffano.swaggyjenkins.ApiClient;
//import com.cliffano.swaggyjenkins.ApiException;
//import com.cliffano.swaggyjenkins.Configuration;
//import com.cliffano.swaggyjenkins.auth.*;
//import com.cliffano.swaggyjenkins.api.BlueOceanApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
jenkins_auth.setUsername("YOUR USERNAME");
jenkins_auth.setPassword("YOUR PASSWORD");

BlueOceanApi apiInstance = new BlueOceanApi();
String propertyClass = "propertyClass_example"; // String | Name of the class
try {
    String result = apiInstance.getClasses(propertyClass);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getClasses");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertyClass** | **String**| Name of the class |

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getOrganisation"></a>
# **getOrganisation**
> Organisation getOrganisation(organization)



Retrieve organization details

### Example
```java
// Import classes:
//import com.cliffano.swaggyjenkins.ApiClient;
//import com.cliffano.swaggyjenkins.ApiException;
//import com.cliffano.swaggyjenkins.Configuration;
//import com.cliffano.swaggyjenkins.auth.*;
//import com.cliffano.swaggyjenkins.api.BlueOceanApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
jenkins_auth.setUsername("YOUR USERNAME");
jenkins_auth.setPassword("YOUR PASSWORD");

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = "organization_example"; // String | Name of the organization
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
 **organization** | **String**| Name of the organization |

### Return type

[**Organisation**](Organisation.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getOrganisations"></a>
# **getOrganisations**
> Organisations getOrganisations()



Retrieve all organizations details

### Example
```java
// Import classes:
//import com.cliffano.swaggyjenkins.ApiClient;
//import com.cliffano.swaggyjenkins.ApiException;
//import com.cliffano.swaggyjenkins.Configuration;
//import com.cliffano.swaggyjenkins.auth.*;
//import com.cliffano.swaggyjenkins.api.BlueOceanApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
jenkins_auth.setUsername("YOUR USERNAME");
jenkins_auth.setPassword("YOUR PASSWORD");

BlueOceanApi apiInstance = new BlueOceanApi();
try {
    Organisations result = apiInstance.getOrganisations();
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getOrganisations");
    e.printStackTrace();
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Organisations**](Organisations.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipeline"></a>
# **getPipeline**
> Pipeline getPipeline(organization, pipeline)



Retrieve pipeline details for an organization

### Example
```java
// Import classes:
//import com.cliffano.swaggyjenkins.ApiClient;
//import com.cliffano.swaggyjenkins.ApiException;
//import com.cliffano.swaggyjenkins.Configuration;
//import com.cliffano.swaggyjenkins.auth.*;
//import com.cliffano.swaggyjenkins.api.BlueOceanApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
jenkins_auth.setUsername("YOUR USERNAME");
jenkins_auth.setPassword("YOUR PASSWORD");

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = "organization_example"; // String | Name of the organization
String pipeline = "pipeline_example"; // String | Name of the pipeline
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
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |

### Return type

[**Pipeline**](Pipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineActivities"></a>
# **getPipelineActivities**
> PipelineActivities getPipelineActivities(organization, pipeline)



Retrieve all activities details for an organization pipeline

### Example
```java
// Import classes:
//import com.cliffano.swaggyjenkins.ApiClient;
//import com.cliffano.swaggyjenkins.ApiException;
//import com.cliffano.swaggyjenkins.Configuration;
//import com.cliffano.swaggyjenkins.auth.*;
//import com.cliffano.swaggyjenkins.api.BlueOceanApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
jenkins_auth.setUsername("YOUR USERNAME");
jenkins_auth.setPassword("YOUR PASSWORD");

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = "organization_example"; // String | Name of the organization
String pipeline = "pipeline_example"; // String | Name of the pipeline
try {
    PipelineActivities result = apiInstance.getPipelineActivities(organization, pipeline);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getPipelineActivities");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |

### Return type

[**PipelineActivities**](PipelineActivities.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineBranch"></a>
# **getPipelineBranch**
> BranchImpl getPipelineBranch(organization, pipeline, branch)



Retrieve branch details for an organization pipeline

### Example
```java
// Import classes:
//import com.cliffano.swaggyjenkins.ApiClient;
//import com.cliffano.swaggyjenkins.ApiException;
//import com.cliffano.swaggyjenkins.Configuration;
//import com.cliffano.swaggyjenkins.auth.*;
//import com.cliffano.swaggyjenkins.api.BlueOceanApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
jenkins_auth.setUsername("YOUR USERNAME");
jenkins_auth.setPassword("YOUR PASSWORD");

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = "organization_example"; // String | Name of the organization
String pipeline = "pipeline_example"; // String | Name of the pipeline
String branch = "branch_example"; // String | Name of the branch
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
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |
 **branch** | **String**| Name of the branch |

### Return type

[**BranchImpl**](BranchImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineBranchRun"></a>
# **getPipelineBranchRun**
> PipelineRun getPipelineBranchRun(organization, pipeline, branch, run)



Retrieve branch run details for an organization pipeline

### Example
```java
// Import classes:
//import com.cliffano.swaggyjenkins.ApiClient;
//import com.cliffano.swaggyjenkins.ApiException;
//import com.cliffano.swaggyjenkins.Configuration;
//import com.cliffano.swaggyjenkins.auth.*;
//import com.cliffano.swaggyjenkins.api.BlueOceanApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
jenkins_auth.setUsername("YOUR USERNAME");
jenkins_auth.setPassword("YOUR PASSWORD");

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = "organization_example"; // String | Name of the organization
String pipeline = "pipeline_example"; // String | Name of the pipeline
String branch = "branch_example"; // String | Name of the branch
String run = "run_example"; // String | Name of the run
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
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |
 **branch** | **String**| Name of the branch |
 **run** | **String**| Name of the run |

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineBranches"></a>
# **getPipelineBranches**
> MultibranchPipeline getPipelineBranches(organization, pipeline)



Retrieve all branches details for an organization pipeline

### Example
```java
// Import classes:
//import com.cliffano.swaggyjenkins.ApiClient;
//import com.cliffano.swaggyjenkins.ApiException;
//import com.cliffano.swaggyjenkins.Configuration;
//import com.cliffano.swaggyjenkins.auth.*;
//import com.cliffano.swaggyjenkins.api.BlueOceanApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
jenkins_auth.setUsername("YOUR USERNAME");
jenkins_auth.setPassword("YOUR PASSWORD");

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = "organization_example"; // String | Name of the organization
String pipeline = "pipeline_example"; // String | Name of the pipeline
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
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |

### Return type

[**MultibranchPipeline**](MultibranchPipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineFolder"></a>
# **getPipelineFolder**
> PipelineFolderImpl getPipelineFolder(organization, folder)



Retrieve pipeline folder for an organization

### Example
```java
// Import classes:
//import com.cliffano.swaggyjenkins.ApiClient;
//import com.cliffano.swaggyjenkins.ApiException;
//import com.cliffano.swaggyjenkins.Configuration;
//import com.cliffano.swaggyjenkins.auth.*;
//import com.cliffano.swaggyjenkins.api.BlueOceanApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
jenkins_auth.setUsername("YOUR USERNAME");
jenkins_auth.setPassword("YOUR PASSWORD");

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = "organization_example"; // String | Name of the organization
String folder = "folder_example"; // String | Name of the folder
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
 **organization** | **String**| Name of the organization |
 **folder** | **String**| Name of the folder |

### Return type

[**PipelineFolderImpl**](PipelineFolderImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineFolderPipeline"></a>
# **getPipelineFolderPipeline**
> PipelineImpl getPipelineFolderPipeline(organization, pipeline, folder)



Retrieve pipeline details for an organization folder

### Example
```java
// Import classes:
//import com.cliffano.swaggyjenkins.ApiClient;
//import com.cliffano.swaggyjenkins.ApiException;
//import com.cliffano.swaggyjenkins.Configuration;
//import com.cliffano.swaggyjenkins.auth.*;
//import com.cliffano.swaggyjenkins.api.BlueOceanApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
jenkins_auth.setUsername("YOUR USERNAME");
jenkins_auth.setPassword("YOUR PASSWORD");

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = "organization_example"; // String | Name of the organization
String pipeline = "pipeline_example"; // String | Name of the pipeline
String folder = "folder_example"; // String | Name of the folder
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
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |
 **folder** | **String**| Name of the folder |

### Return type

[**PipelineImpl**](PipelineImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineQueue"></a>
# **getPipelineQueue**
> PipelineQueue getPipelineQueue(organization, pipeline)



Retrieve queue details for an organization pipeline

### Example
```java
// Import classes:
//import com.cliffano.swaggyjenkins.ApiClient;
//import com.cliffano.swaggyjenkins.ApiException;
//import com.cliffano.swaggyjenkins.Configuration;
//import com.cliffano.swaggyjenkins.auth.*;
//import com.cliffano.swaggyjenkins.api.BlueOceanApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
jenkins_auth.setUsername("YOUR USERNAME");
jenkins_auth.setPassword("YOUR PASSWORD");

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = "organization_example"; // String | Name of the organization
String pipeline = "pipeline_example"; // String | Name of the pipeline
try {
    PipelineQueue result = apiInstance.getPipelineQueue(organization, pipeline);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getPipelineQueue");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |

### Return type

[**PipelineQueue**](PipelineQueue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineRun"></a>
# **getPipelineRun**
> PipelineRun getPipelineRun(organization, pipeline, run)



Retrieve run details for an organization pipeline

### Example
```java
// Import classes:
//import com.cliffano.swaggyjenkins.ApiClient;
//import com.cliffano.swaggyjenkins.ApiException;
//import com.cliffano.swaggyjenkins.Configuration;
//import com.cliffano.swaggyjenkins.auth.*;
//import com.cliffano.swaggyjenkins.api.BlueOceanApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
jenkins_auth.setUsername("YOUR USERNAME");
jenkins_auth.setPassword("YOUR PASSWORD");

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = "organization_example"; // String | Name of the organization
String pipeline = "pipeline_example"; // String | Name of the pipeline
String run = "run_example"; // String | Name of the run
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
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |
 **run** | **String**| Name of the run |

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineRunLog"></a>
# **getPipelineRunLog**
> String getPipelineRunLog(organization, pipeline, run, start, download)



Get log for a pipeline run

### Example
```java
// Import classes:
//import com.cliffano.swaggyjenkins.ApiClient;
//import com.cliffano.swaggyjenkins.ApiException;
//import com.cliffano.swaggyjenkins.Configuration;
//import com.cliffano.swaggyjenkins.auth.*;
//import com.cliffano.swaggyjenkins.api.BlueOceanApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
jenkins_auth.setUsername("YOUR USERNAME");
jenkins_auth.setPassword("YOUR PASSWORD");

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = "organization_example"; // String | Name of the organization
String pipeline = "pipeline_example"; // String | Name of the pipeline
String run = "run_example"; // String | Name of the run
Integer start = 56; // Integer | Start position of the log
Boolean download = true; // Boolean | Set to true in order to download the file, otherwise it's passed as a response body
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
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |
 **run** | **String**| Name of the run |
 **start** | **Integer**| Start position of the log | [optional]
 **download** | **Boolean**| Set to true in order to download the file, otherwise it&#39;s passed as a response body | [optional]

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

### Example
```java
// Import classes:
//import com.cliffano.swaggyjenkins.ApiClient;
//import com.cliffano.swaggyjenkins.ApiException;
//import com.cliffano.swaggyjenkins.Configuration;
//import com.cliffano.swaggyjenkins.auth.*;
//import com.cliffano.swaggyjenkins.api.BlueOceanApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
jenkins_auth.setUsername("YOUR USERNAME");
jenkins_auth.setPassword("YOUR PASSWORD");

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = "organization_example"; // String | Name of the organization
String pipeline = "pipeline_example"; // String | Name of the pipeline
String run = "run_example"; // String | Name of the run
String node = "node_example"; // String | Name of the node
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
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |
 **run** | **String**| Name of the run |
 **node** | **String**| Name of the node |

### Return type

[**PipelineRunNode**](PipelineRunNode.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineRunNodeStep"></a>
# **getPipelineRunNodeStep**
> PipelineStepImpl getPipelineRunNodeStep(organization, pipeline, run, node, step)



Retrieve run node details for an organization pipeline

### Example
```java
// Import classes:
//import com.cliffano.swaggyjenkins.ApiClient;
//import com.cliffano.swaggyjenkins.ApiException;
//import com.cliffano.swaggyjenkins.Configuration;
//import com.cliffano.swaggyjenkins.auth.*;
//import com.cliffano.swaggyjenkins.api.BlueOceanApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
jenkins_auth.setUsername("YOUR USERNAME");
jenkins_auth.setPassword("YOUR PASSWORD");

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = "organization_example"; // String | Name of the organization
String pipeline = "pipeline_example"; // String | Name of the pipeline
String run = "run_example"; // String | Name of the run
String node = "node_example"; // String | Name of the node
String step = "step_example"; // String | Name of the step
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
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |
 **run** | **String**| Name of the run |
 **node** | **String**| Name of the node |
 **step** | **String**| Name of the step |

### Return type

[**PipelineStepImpl**](PipelineStepImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineRunNodeStepLog"></a>
# **getPipelineRunNodeStepLog**
> String getPipelineRunNodeStepLog(organization, pipeline, run, node, step)



Get log for a pipeline run node step

### Example
```java
// Import classes:
//import com.cliffano.swaggyjenkins.ApiClient;
//import com.cliffano.swaggyjenkins.ApiException;
//import com.cliffano.swaggyjenkins.Configuration;
//import com.cliffano.swaggyjenkins.auth.*;
//import com.cliffano.swaggyjenkins.api.BlueOceanApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
jenkins_auth.setUsername("YOUR USERNAME");
jenkins_auth.setPassword("YOUR PASSWORD");

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = "organization_example"; // String | Name of the organization
String pipeline = "pipeline_example"; // String | Name of the pipeline
String run = "run_example"; // String | Name of the run
String node = "node_example"; // String | Name of the node
String step = "step_example"; // String | Name of the step
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

<a name="getPipelineRunNodeSteps"></a>
# **getPipelineRunNodeSteps**
> PipelineRunNodeSteps getPipelineRunNodeSteps(organization, pipeline, run, node)



Retrieve run node steps details for an organization pipeline

### Example
```java
// Import classes:
//import com.cliffano.swaggyjenkins.ApiClient;
//import com.cliffano.swaggyjenkins.ApiException;
//import com.cliffano.swaggyjenkins.Configuration;
//import com.cliffano.swaggyjenkins.auth.*;
//import com.cliffano.swaggyjenkins.api.BlueOceanApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
jenkins_auth.setUsername("YOUR USERNAME");
jenkins_auth.setPassword("YOUR PASSWORD");

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = "organization_example"; // String | Name of the organization
String pipeline = "pipeline_example"; // String | Name of the pipeline
String run = "run_example"; // String | Name of the run
String node = "node_example"; // String | Name of the node
try {
    PipelineRunNodeSteps result = apiInstance.getPipelineRunNodeSteps(organization, pipeline, run, node);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getPipelineRunNodeSteps");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |
 **run** | **String**| Name of the run |
 **node** | **String**| Name of the node |

### Return type

[**PipelineRunNodeSteps**](PipelineRunNodeSteps.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineRunNodes"></a>
# **getPipelineRunNodes**
> PipelineRunNodes getPipelineRunNodes(organization, pipeline, run)



Retrieve run nodes details for an organization pipeline

### Example
```java
// Import classes:
//import com.cliffano.swaggyjenkins.ApiClient;
//import com.cliffano.swaggyjenkins.ApiException;
//import com.cliffano.swaggyjenkins.Configuration;
//import com.cliffano.swaggyjenkins.auth.*;
//import com.cliffano.swaggyjenkins.api.BlueOceanApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
jenkins_auth.setUsername("YOUR USERNAME");
jenkins_auth.setPassword("YOUR PASSWORD");

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = "organization_example"; // String | Name of the organization
String pipeline = "pipeline_example"; // String | Name of the pipeline
String run = "run_example"; // String | Name of the run
try {
    PipelineRunNodes result = apiInstance.getPipelineRunNodes(organization, pipeline, run);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getPipelineRunNodes");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |
 **run** | **String**| Name of the run |

### Return type

[**PipelineRunNodes**](PipelineRunNodes.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineRuns"></a>
# **getPipelineRuns**
> PipelineRuns getPipelineRuns(organization, pipeline)



Retrieve all runs details for an organization pipeline

### Example
```java
// Import classes:
//import com.cliffano.swaggyjenkins.ApiClient;
//import com.cliffano.swaggyjenkins.ApiException;
//import com.cliffano.swaggyjenkins.Configuration;
//import com.cliffano.swaggyjenkins.auth.*;
//import com.cliffano.swaggyjenkins.api.BlueOceanApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
jenkins_auth.setUsername("YOUR USERNAME");
jenkins_auth.setPassword("YOUR PASSWORD");

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = "organization_example"; // String | Name of the organization
String pipeline = "pipeline_example"; // String | Name of the pipeline
try {
    PipelineRuns result = apiInstance.getPipelineRuns(organization, pipeline);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getPipelineRuns");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |

### Return type

[**PipelineRuns**](PipelineRuns.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelines"></a>
# **getPipelines**
> Pipelines getPipelines(organization)



Retrieve all pipelines details for an organization

### Example
```java
// Import classes:
//import com.cliffano.swaggyjenkins.ApiClient;
//import com.cliffano.swaggyjenkins.ApiException;
//import com.cliffano.swaggyjenkins.Configuration;
//import com.cliffano.swaggyjenkins.auth.*;
//import com.cliffano.swaggyjenkins.api.BlueOceanApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
jenkins_auth.setUsername("YOUR USERNAME");
jenkins_auth.setPassword("YOUR PASSWORD");

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = "organization_example"; // String | Name of the organization
try {
    Pipelines result = apiInstance.getPipelines(organization);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getPipelines");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |

### Return type

[**Pipelines**](Pipelines.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getSCM"></a>
# **getSCM**
> GithubScm getSCM(organization, scm)



Retrieve SCM details for an organization

### Example
```java
// Import classes:
//import com.cliffano.swaggyjenkins.ApiClient;
//import com.cliffano.swaggyjenkins.ApiException;
//import com.cliffano.swaggyjenkins.Configuration;
//import com.cliffano.swaggyjenkins.auth.*;
//import com.cliffano.swaggyjenkins.api.BlueOceanApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
jenkins_auth.setUsername("YOUR USERNAME");
jenkins_auth.setPassword("YOUR PASSWORD");

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = "organization_example"; // String | Name of the organization
String scm = "scm_example"; // String | Name of SCM
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
 **organization** | **String**| Name of the organization |
 **scm** | **String**| Name of SCM |

### Return type

[**GithubScm**](GithubScm.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getSCMOrganisationRepositories"></a>
# **getSCMOrganisationRepositories**
> ScmOrganisations getSCMOrganisationRepositories(organization, scm, scmOrganisation, credentialId, pageSize, pageNumber)



Retrieve SCM organization repositories details for an organization

### Example
```java
// Import classes:
//import com.cliffano.swaggyjenkins.ApiClient;
//import com.cliffano.swaggyjenkins.ApiException;
//import com.cliffano.swaggyjenkins.Configuration;
//import com.cliffano.swaggyjenkins.auth.*;
//import com.cliffano.swaggyjenkins.api.BlueOceanApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
jenkins_auth.setUsername("YOUR USERNAME");
jenkins_auth.setPassword("YOUR PASSWORD");

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = "organization_example"; // String | Name of the organization
String scm = "scm_example"; // String | Name of SCM
String scmOrganisation = "scmOrganisation_example"; // String | Name of the SCM organization
String credentialId = "credentialId_example"; // String | Credential ID
Integer pageSize = 56; // Integer | Number of items in a page
Integer pageNumber = 56; // Integer | Page number
try {
    ScmOrganisations result = apiInstance.getSCMOrganisationRepositories(organization, scm, scmOrganisation, credentialId, pageSize, pageNumber);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getSCMOrganisationRepositories");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **scm** | **String**| Name of SCM |
 **scmOrganisation** | **String**| Name of the SCM organization |
 **credentialId** | **String**| Credential ID | [optional]
 **pageSize** | **Integer**| Number of items in a page | [optional]
 **pageNumber** | **Integer**| Page number | [optional]

### Return type

[**ScmOrganisations**](ScmOrganisations.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getSCMOrganisationRepository"></a>
# **getSCMOrganisationRepository**
> ScmOrganisations getSCMOrganisationRepository(organization, scm, scmOrganisation, repository, credentialId)



Retrieve SCM organization repository details for an organization

### Example
```java
// Import classes:
//import com.cliffano.swaggyjenkins.ApiClient;
//import com.cliffano.swaggyjenkins.ApiException;
//import com.cliffano.swaggyjenkins.Configuration;
//import com.cliffano.swaggyjenkins.auth.*;
//import com.cliffano.swaggyjenkins.api.BlueOceanApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
jenkins_auth.setUsername("YOUR USERNAME");
jenkins_auth.setPassword("YOUR PASSWORD");

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = "organization_example"; // String | Name of the organization
String scm = "scm_example"; // String | Name of SCM
String scmOrganisation = "scmOrganisation_example"; // String | Name of the SCM organization
String repository = "repository_example"; // String | Name of the SCM repository
String credentialId = "credentialId_example"; // String | Credential ID
try {
    ScmOrganisations result = apiInstance.getSCMOrganisationRepository(organization, scm, scmOrganisation, repository, credentialId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getSCMOrganisationRepository");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **scm** | **String**| Name of SCM |
 **scmOrganisation** | **String**| Name of the SCM organization |
 **repository** | **String**| Name of the SCM repository |
 **credentialId** | **String**| Credential ID | [optional]

### Return type

[**ScmOrganisations**](ScmOrganisations.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getSCMOrganisations"></a>
# **getSCMOrganisations**
> ScmOrganisations getSCMOrganisations(organization, scm, credentialId)



Retrieve SCM organizations details for an organization

### Example
```java
// Import classes:
//import com.cliffano.swaggyjenkins.ApiClient;
//import com.cliffano.swaggyjenkins.ApiException;
//import com.cliffano.swaggyjenkins.Configuration;
//import com.cliffano.swaggyjenkins.auth.*;
//import com.cliffano.swaggyjenkins.api.BlueOceanApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
jenkins_auth.setUsername("YOUR USERNAME");
jenkins_auth.setPassword("YOUR PASSWORD");

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = "organization_example"; // String | Name of the organization
String scm = "scm_example"; // String | Name of SCM
String credentialId = "credentialId_example"; // String | Credential ID
try {
    ScmOrganisations result = apiInstance.getSCMOrganisations(organization, scm, credentialId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getSCMOrganisations");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **scm** | **String**| Name of SCM |
 **credentialId** | **String**| Credential ID | [optional]

### Return type

[**ScmOrganisations**](ScmOrganisations.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getUser"></a>
# **getUser**
> User getUser(organization, user)



Retrieve user details for an organization

### Example
```java
// Import classes:
//import com.cliffano.swaggyjenkins.ApiClient;
//import com.cliffano.swaggyjenkins.ApiException;
//import com.cliffano.swaggyjenkins.Configuration;
//import com.cliffano.swaggyjenkins.auth.*;
//import com.cliffano.swaggyjenkins.api.BlueOceanApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
jenkins_auth.setUsername("YOUR USERNAME");
jenkins_auth.setPassword("YOUR PASSWORD");

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = "organization_example"; // String | Name of the organization
String user = "user_example"; // String | Name of the user
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
 **organization** | **String**| Name of the organization |
 **user** | **String**| Name of the user |

### Return type

[**User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getUserFavorites"></a>
# **getUserFavorites**
> UserFavorites getUserFavorites(user)



Retrieve user favorites details for an organization

### Example
```java
// Import classes:
//import com.cliffano.swaggyjenkins.ApiClient;
//import com.cliffano.swaggyjenkins.ApiException;
//import com.cliffano.swaggyjenkins.Configuration;
//import com.cliffano.swaggyjenkins.auth.*;
//import com.cliffano.swaggyjenkins.api.BlueOceanApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
jenkins_auth.setUsername("YOUR USERNAME");
jenkins_auth.setPassword("YOUR PASSWORD");

BlueOceanApi apiInstance = new BlueOceanApi();
String user = "user_example"; // String | Name of the user
try {
    UserFavorites result = apiInstance.getUserFavorites(user);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling BlueOceanApi#getUserFavorites");
    e.printStackTrace();
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | **String**| Name of the user |

### Return type

[**UserFavorites**](UserFavorites.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getUsers"></a>
# **getUsers**
> User getUsers(organization)



Retrieve users details for an organization

### Example
```java
// Import classes:
//import com.cliffano.swaggyjenkins.ApiClient;
//import com.cliffano.swaggyjenkins.ApiException;
//import com.cliffano.swaggyjenkins.Configuration;
//import com.cliffano.swaggyjenkins.auth.*;
//import com.cliffano.swaggyjenkins.api.BlueOceanApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
jenkins_auth.setUsername("YOUR USERNAME");
jenkins_auth.setPassword("YOUR PASSWORD");

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = "organization_example"; // String | Name of the organization
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
 **organization** | **String**| Name of the organization |

### Return type

[**User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="postPipelineRun"></a>
# **postPipelineRun**
> QueueItemImpl postPipelineRun(organization, pipeline, run)



Replay an organization pipeline run

### Example
```java
// Import classes:
//import com.cliffano.swaggyjenkins.ApiClient;
//import com.cliffano.swaggyjenkins.ApiException;
//import com.cliffano.swaggyjenkins.Configuration;
//import com.cliffano.swaggyjenkins.auth.*;
//import com.cliffano.swaggyjenkins.api.BlueOceanApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
jenkins_auth.setUsername("YOUR USERNAME");
jenkins_auth.setPassword("YOUR PASSWORD");

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = "organization_example"; // String | Name of the organization
String pipeline = "pipeline_example"; // String | Name of the pipeline
String run = "run_example"; // String | Name of the run
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
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |
 **run** | **String**| Name of the run |

### Return type

[**QueueItemImpl**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="postPipelineRuns"></a>
# **postPipelineRuns**
> QueueItemImpl postPipelineRuns(organization, pipeline)



Start a build for an organization pipeline

### Example
```java
// Import classes:
//import com.cliffano.swaggyjenkins.ApiClient;
//import com.cliffano.swaggyjenkins.ApiException;
//import com.cliffano.swaggyjenkins.Configuration;
//import com.cliffano.swaggyjenkins.auth.*;
//import com.cliffano.swaggyjenkins.api.BlueOceanApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
jenkins_auth.setUsername("YOUR USERNAME");
jenkins_auth.setPassword("YOUR PASSWORD");

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = "organization_example"; // String | Name of the organization
String pipeline = "pipeline_example"; // String | Name of the pipeline
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
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |

### Return type

[**QueueItemImpl**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="putPipelineFavorite"></a>
# **putPipelineFavorite**
> FavoriteImpl putPipelineFavorite(organization, pipeline, body)



Favorite/unfavorite a pipeline

### Example
```java
// Import classes:
//import com.cliffano.swaggyjenkins.ApiClient;
//import com.cliffano.swaggyjenkins.ApiException;
//import com.cliffano.swaggyjenkins.Configuration;
//import com.cliffano.swaggyjenkins.auth.*;
//import com.cliffano.swaggyjenkins.api.BlueOceanApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
jenkins_auth.setUsername("YOUR USERNAME");
jenkins_auth.setPassword("YOUR PASSWORD");

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = "organization_example"; // String | Name of the organization
String pipeline = "pipeline_example"; // String | Name of the pipeline
String body = "body_example"; // String | Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite
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
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |
 **body** | [**String**](String.md)| Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite |

### Return type

[**FavoriteImpl**](FavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="putPipelineRun"></a>
# **putPipelineRun**
> PipelineRun putPipelineRun(organization, pipeline, run, blocking, timeOutInSecs)



Stop a build of an organization pipeline

### Example
```java
// Import classes:
//import com.cliffano.swaggyjenkins.ApiClient;
//import com.cliffano.swaggyjenkins.ApiException;
//import com.cliffano.swaggyjenkins.Configuration;
//import com.cliffano.swaggyjenkins.auth.*;
//import com.cliffano.swaggyjenkins.api.BlueOceanApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
jenkins_auth.setUsername("YOUR USERNAME");
jenkins_auth.setPassword("YOUR PASSWORD");

BlueOceanApi apiInstance = new BlueOceanApi();
String organization = "organization_example"; // String | Name of the organization
String pipeline = "pipeline_example"; // String | Name of the pipeline
String run = "run_example"; // String | Name of the run
String blocking = "blocking_example"; // String | Set to true to make blocking stop, default: false
Integer timeOutInSecs = 56; // Integer | Timeout in seconds, default: 10 seconds
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
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |
 **run** | **String**| Name of the run |
 **blocking** | **String**| Set to true to make blocking stop, default: false | [optional]
 **timeOutInSecs** | **Integer**| Timeout in seconds, default: 10 seconds | [optional]

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="search"></a>
# **search**
> String search(q)



Search for any resource details

### Example
```java
// Import classes:
//import com.cliffano.swaggyjenkins.ApiClient;
//import com.cliffano.swaggyjenkins.ApiException;
//import com.cliffano.swaggyjenkins.Configuration;
//import com.cliffano.swaggyjenkins.auth.*;
//import com.cliffano.swaggyjenkins.api.BlueOceanApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
jenkins_auth.setUsername("YOUR USERNAME");
jenkins_auth.setPassword("YOUR PASSWORD");

BlueOceanApi apiInstance = new BlueOceanApi();
String q = "q_example"; // String | Query string
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
 **q** | **String**| Query string |

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

### Example
```java
// Import classes:
//import com.cliffano.swaggyjenkins.ApiClient;
//import com.cliffano.swaggyjenkins.ApiException;
//import com.cliffano.swaggyjenkins.Configuration;
//import com.cliffano.swaggyjenkins.auth.*;
//import com.cliffano.swaggyjenkins.api.BlueOceanApi;

ApiClient defaultClient = Configuration.getDefaultApiClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
jenkins_auth.setUsername("YOUR USERNAME");
jenkins_auth.setPassword("YOUR PASSWORD");

BlueOceanApi apiInstance = new BlueOceanApi();
String q = "q_example"; // String | Query string containing an array of class names
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
 **q** | **String**| Query string containing an array of class names |

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

