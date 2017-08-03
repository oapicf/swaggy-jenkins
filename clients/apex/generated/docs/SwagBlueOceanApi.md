# SwagBlueOceanApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callSearch**](SwagBlueOceanApi.md#callSearch) | **GET** /blue/rest/search/ | 
[**deletePipelineQueueItem**](SwagBlueOceanApi.md#deletePipelineQueueItem) | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | 
[**getAuthenticatedUser**](SwagBlueOceanApi.md#getAuthenticatedUser) | **GET** /blue/rest/organizations/{organization}/user/ | 
[**getClasses**](SwagBlueOceanApi.md#getClasses) | **GET** /blue/rest/classes/{class} | 
[**getOrganisation**](SwagBlueOceanApi.md#getOrganisation) | **GET** /blue/rest/organizations/{organization} | 
[**getOrganisations**](SwagBlueOceanApi.md#getOrganisations) | **GET** /blue/rest/organizations/ | 
[**getPipeline**](SwagBlueOceanApi.md#getPipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline} | 
[**getPipelineActivities**](SwagBlueOceanApi.md#getPipelineActivities) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities | 
[**getPipelineBranch**](SwagBlueOceanApi.md#getPipelineBranch) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ | 
[**getPipelineBranchRun**](SwagBlueOceanApi.md#getPipelineBranchRun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} | 
[**getPipelineBranches**](SwagBlueOceanApi.md#getPipelineBranches) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches | 
[**getPipelineFolder**](SwagBlueOceanApi.md#getPipelineFolder) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/ | 
[**getPipelineFolderPipeline**](SwagBlueOceanApi.md#getPipelineFolderPipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} | 
[**getPipelineQueue**](SwagBlueOceanApi.md#getPipelineQueue) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue | 
[**getPipelineRun**](SwagBlueOceanApi.md#getPipelineRun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} | 
[**getPipelineRunLog**](SwagBlueOceanApi.md#getPipelineRunLog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log | 
[**getPipelineRunNode**](SwagBlueOceanApi.md#getPipelineRunNode) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} | 
[**getPipelineRunNodeStep**](SwagBlueOceanApi.md#getPipelineRunNodeStep) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} | 
[**getPipelineRunNodeStepLog**](SwagBlueOceanApi.md#getPipelineRunNodeStepLog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log | 
[**getPipelineRunNodeSteps**](SwagBlueOceanApi.md#getPipelineRunNodeSteps) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps | 
[**getPipelineRunNodes**](SwagBlueOceanApi.md#getPipelineRunNodes) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes | 
[**getPipelineRuns**](SwagBlueOceanApi.md#getPipelineRuns) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**getPipelines**](SwagBlueOceanApi.md#getPipelines) | **GET** /blue/rest/organizations/{organization}/pipelines/ | 
[**getSCM**](SwagBlueOceanApi.md#getSCM) | **GET** /blue/rest/organizations/{organization}/scm/{scm} | 
[**getSCMOrganisationRepositories**](SwagBlueOceanApi.md#getSCMOrganisationRepositories) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories | 
[**getSCMOrganisationRepository**](SwagBlueOceanApi.md#getSCMOrganisationRepository) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} | 
[**getSCMOrganisations**](SwagBlueOceanApi.md#getSCMOrganisations) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations | 
[**getUser**](SwagBlueOceanApi.md#getUser) | **GET** /blue/rest/organizations/{organization}/users/{user} | 
[**getUserFavorites**](SwagBlueOceanApi.md#getUserFavorites) | **GET** /blue/rest/users/{user}/favorites | 
[**getUsers**](SwagBlueOceanApi.md#getUsers) | **GET** /blue/rest/organizations/{organization}/users/ | 
[**postPipelineRun**](SwagBlueOceanApi.md#postPipelineRun) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay | 
[**postPipelineRuns**](SwagBlueOceanApi.md#postPipelineRuns) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**putPipelineFavorite**](SwagBlueOceanApi.md#putPipelineFavorite) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite | 
[**putPipelineRun**](SwagBlueOceanApi.md#putPipelineRun) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop | 
[**searchClasses**](SwagBlueOceanApi.md#searchClasses) | **GET** /blue/rest/classes/ | 


<a name="callSearch"></a>
# **callSearch**
> String callSearch(q)



Search for any resource details

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'q' => 'q_example'
};

try {
    // cross your fingers
    String result = api.callSearch(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
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

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="deletePipelineQueueItem"></a>
# **deletePipelineQueueItem**
> deletePipelineQueueItem(organization, pipeline, queue)



Delete queue item from an organization pipeline queue

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'organization' => 'organization_example',
    'pipeline' => 'pipeline_example',
    'queue' => 'queue_example'
};

try {
    // cross your fingers
    api.deletePipelineQueueItem(params);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
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

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getAuthenticatedUser"></a>
# **getAuthenticatedUser**
> SwagUser getAuthenticatedUser(organization)



Retrieve authenticated user details for an organization

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'organization' => 'organization_example'
};

try {
    // cross your fingers
    SwagUser result = api.getAuthenticatedUser(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |

### Return type

[**SwagUser**](SwagUser.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getClasses"></a>
# **getClasses**
> String getClasses(propertyClass)



Get a list of class names supported by a given class

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'propertyClass' => 'propertyClass_example'
};

try {
    // cross your fingers
    String result = api.getClasses(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
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

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getOrganisation"></a>
# **getOrganisation**
> SwagOrganisation getOrganisation(organization)



Retrieve organization details

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'organization' => 'organization_example'
};

try {
    // cross your fingers
    SwagOrganisation result = api.getOrganisation(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |

### Return type

[**SwagOrganisation**](SwagOrganisation.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getOrganisations"></a>
# **getOrganisations**
> SwagOrganisations getOrganisations()



Retrieve all organizations details

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

try {
    // cross your fingers
    SwagOrganisations result = api.getOrganisations();
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SwagOrganisations**](SwagOrganisations.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPipeline"></a>
# **getPipeline**
> SwagPipeline getPipeline(organization, pipeline)



Retrieve pipeline details for an organization

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'organization' => 'organization_example',
    'pipeline' => 'pipeline_example'
};

try {
    // cross your fingers
    SwagPipeline result = api.getPipeline(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |

### Return type

[**SwagPipeline**](SwagPipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPipelineActivities"></a>
# **getPipelineActivities**
> SwagPipelineActivities getPipelineActivities(organization, pipeline)



Retrieve all activities details for an organization pipeline

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'organization' => 'organization_example',
    'pipeline' => 'pipeline_example'
};

try {
    // cross your fingers
    SwagPipelineActivities result = api.getPipelineActivities(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |

### Return type

[**SwagPipelineActivities**](SwagPipelineActivities.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPipelineBranch"></a>
# **getPipelineBranch**
> SwagBranchImpl getPipelineBranch(organization, pipeline, branch)



Retrieve branch details for an organization pipeline

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'organization' => 'organization_example',
    'pipeline' => 'pipeline_example',
    'branch' => 'branch_example'
};

try {
    // cross your fingers
    SwagBranchImpl result = api.getPipelineBranch(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |
 **branch** | **String**| Name of the branch |

### Return type

[**SwagBranchImpl**](SwagBranchImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPipelineBranchRun"></a>
# **getPipelineBranchRun**
> SwagPipelineRun getPipelineBranchRun(organization, pipeline, branch, run)



Retrieve branch run details for an organization pipeline

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'organization' => 'organization_example',
    'pipeline' => 'pipeline_example',
    'branch' => 'branch_example',
    'run' => 'run_example'
};

try {
    // cross your fingers
    SwagPipelineRun result = api.getPipelineBranchRun(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
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

[**SwagPipelineRun**](SwagPipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPipelineBranches"></a>
# **getPipelineBranches**
> SwagMultibranchPipeline getPipelineBranches(organization, pipeline)



Retrieve all branches details for an organization pipeline

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'organization' => 'organization_example',
    'pipeline' => 'pipeline_example'
};

try {
    // cross your fingers
    SwagMultibranchPipeline result = api.getPipelineBranches(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |

### Return type

[**SwagMultibranchPipeline**](SwagMultibranchPipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPipelineFolder"></a>
# **getPipelineFolder**
> SwagPipelineFolderImpl getPipelineFolder(organization, folder)



Retrieve pipeline folder for an organization

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'organization' => 'organization_example',
    'folder' => 'folder_example'
};

try {
    // cross your fingers
    SwagPipelineFolderImpl result = api.getPipelineFolder(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **folder** | **String**| Name of the folder |

### Return type

[**SwagPipelineFolderImpl**](SwagPipelineFolderImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPipelineFolderPipeline"></a>
# **getPipelineFolderPipeline**
> SwagPipelineImpl getPipelineFolderPipeline(organization, pipeline, folder)



Retrieve pipeline details for an organization folder

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'organization' => 'organization_example',
    'pipeline' => 'pipeline_example',
    'folder' => 'folder_example'
};

try {
    // cross your fingers
    SwagPipelineImpl result = api.getPipelineFolderPipeline(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |
 **folder** | **String**| Name of the folder |

### Return type

[**SwagPipelineImpl**](SwagPipelineImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPipelineQueue"></a>
# **getPipelineQueue**
> SwagPipelineQueue getPipelineQueue(organization, pipeline)



Retrieve queue details for an organization pipeline

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'organization' => 'organization_example',
    'pipeline' => 'pipeline_example'
};

try {
    // cross your fingers
    SwagPipelineQueue result = api.getPipelineQueue(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |

### Return type

[**SwagPipelineQueue**](SwagPipelineQueue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPipelineRun"></a>
# **getPipelineRun**
> SwagPipelineRun getPipelineRun(organization, pipeline, run)



Retrieve run details for an organization pipeline

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'organization' => 'organization_example',
    'pipeline' => 'pipeline_example',
    'run' => 'run_example'
};

try {
    // cross your fingers
    SwagPipelineRun result = api.getPipelineRun(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |
 **run** | **String**| Name of the run |

### Return type

[**SwagPipelineRun**](SwagPipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPipelineRunLog"></a>
# **getPipelineRunLog**
> String getPipelineRunLog(organization, pipeline, run, start, download)



Get log for a pipeline run

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'organization' => 'organization_example',
    'pipeline' => 'pipeline_example',
    'run' => 'run_example',
    'start' => 56,
    'download' => true
};

try {
    // cross your fingers
    String result = api.getPipelineRunLog(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |
 **run** | **String**| Name of the run |
 **start** | **Integer**| Start position of the log | [optional]
 **download** | **Boolean**| Set to true in order to download the file, otherwise it\&#39;s passed as a response body | [optional]

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPipelineRunNode"></a>
# **getPipelineRunNode**
> SwagPipelineRunNode getPipelineRunNode(organization, pipeline, run, node)



Retrieve run node details for an organization pipeline

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'organization' => 'organization_example',
    'pipeline' => 'pipeline_example',
    'run' => 'run_example',
    'node' => 'node_example'
};

try {
    // cross your fingers
    SwagPipelineRunNode result = api.getPipelineRunNode(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
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

[**SwagPipelineRunNode**](SwagPipelineRunNode.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPipelineRunNodeStep"></a>
# **getPipelineRunNodeStep**
> SwagPipelineStepImpl getPipelineRunNodeStep(organization, pipeline, run, node, step)



Retrieve run node details for an organization pipeline

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'organization' => 'organization_example',
    'pipeline' => 'pipeline_example',
    'run' => 'run_example',
    'node' => 'node_example',
    'step' => 'step_example'
};

try {
    // cross your fingers
    SwagPipelineStepImpl result = api.getPipelineRunNodeStep(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
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

[**SwagPipelineStepImpl**](SwagPipelineStepImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPipelineRunNodeStepLog"></a>
# **getPipelineRunNodeStepLog**
> String getPipelineRunNodeStepLog(organization, pipeline, run, node, step)



Get log for a pipeline run node step

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'organization' => 'organization_example',
    'pipeline' => 'pipeline_example',
    'run' => 'run_example',
    'node' => 'node_example',
    'step' => 'step_example'
};

try {
    // cross your fingers
    String result = api.getPipelineRunNodeStepLog(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
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

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPipelineRunNodeSteps"></a>
# **getPipelineRunNodeSteps**
> SwagPipelineRunNodeSteps getPipelineRunNodeSteps(organization, pipeline, run, node)



Retrieve run node steps details for an organization pipeline

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'organization' => 'organization_example',
    'pipeline' => 'pipeline_example',
    'run' => 'run_example',
    'node' => 'node_example'
};

try {
    // cross your fingers
    SwagPipelineRunNodeSteps result = api.getPipelineRunNodeSteps(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
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

[**SwagPipelineRunNodeSteps**](SwagPipelineRunNodeSteps.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPipelineRunNodes"></a>
# **getPipelineRunNodes**
> SwagPipelineRunNodes getPipelineRunNodes(organization, pipeline, run)



Retrieve run nodes details for an organization pipeline

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'organization' => 'organization_example',
    'pipeline' => 'pipeline_example',
    'run' => 'run_example'
};

try {
    // cross your fingers
    SwagPipelineRunNodes result = api.getPipelineRunNodes(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |
 **run** | **String**| Name of the run |

### Return type

[**SwagPipelineRunNodes**](SwagPipelineRunNodes.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPipelineRuns"></a>
# **getPipelineRuns**
> SwagPipelineRuns getPipelineRuns(organization, pipeline)



Retrieve all runs details for an organization pipeline

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'organization' => 'organization_example',
    'pipeline' => 'pipeline_example'
};

try {
    // cross your fingers
    SwagPipelineRuns result = api.getPipelineRuns(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |

### Return type

[**SwagPipelineRuns**](SwagPipelineRuns.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getPipelines"></a>
# **getPipelines**
> SwagPipelines getPipelines(organization)



Retrieve all pipelines details for an organization

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'organization' => 'organization_example'
};

try {
    // cross your fingers
    SwagPipelines result = api.getPipelines(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |

### Return type

[**SwagPipelines**](SwagPipelines.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getSCM"></a>
# **getSCM**
> SwagGithubScm getSCM(organization, scm)



Retrieve SCM details for an organization

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'organization' => 'organization_example',
    'scm' => 'scm_example'
};

try {
    // cross your fingers
    SwagGithubScm result = api.getSCM(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **scm** | **String**| Name of SCM |

### Return type

[**SwagGithubScm**](SwagGithubScm.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getSCMOrganisationRepositories"></a>
# **getSCMOrganisationRepositories**
> SwagScmOrganisations getSCMOrganisationRepositories(organization, scm, scmOrganisation, credentialId, pageSize, pageNumber)



Retrieve SCM organization repositories details for an organization

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'organization' => 'organization_example',
    'scm' => 'scm_example',
    'scmOrganisation' => 'scmOrganisation_example',
    'credentialId' => 'credentialId_example',
    'pageSize' => 56,
    'pageNumber' => 56
};

try {
    // cross your fingers
    SwagScmOrganisations result = api.getSCMOrganisationRepositories(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
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

[**SwagScmOrganisations**](SwagScmOrganisations.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getSCMOrganisationRepository"></a>
# **getSCMOrganisationRepository**
> SwagScmOrganisations getSCMOrganisationRepository(organization, scm, scmOrganisation, repository, credentialId)



Retrieve SCM organization repository details for an organization

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'organization' => 'organization_example',
    'scm' => 'scm_example',
    'scmOrganisation' => 'scmOrganisation_example',
    'repository' => 'repository_example',
    'credentialId' => 'credentialId_example'
};

try {
    // cross your fingers
    SwagScmOrganisations result = api.getSCMOrganisationRepository(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
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

[**SwagScmOrganisations**](SwagScmOrganisations.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getSCMOrganisations"></a>
# **getSCMOrganisations**
> SwagScmOrganisations getSCMOrganisations(organization, scm, credentialId)



Retrieve SCM organizations details for an organization

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'organization' => 'organization_example',
    'scm' => 'scm_example',
    'credentialId' => 'credentialId_example'
};

try {
    // cross your fingers
    SwagScmOrganisations result = api.getSCMOrganisations(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **scm** | **String**| Name of SCM |
 **credentialId** | **String**| Credential ID | [optional]

### Return type

[**SwagScmOrganisations**](SwagScmOrganisations.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getUser"></a>
# **getUser**
> SwagUser getUser(organization, user)



Retrieve user details for an organization

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'organization' => 'organization_example',
    'user' => 'user_example'
};

try {
    // cross your fingers
    SwagUser result = api.getUser(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **user** | **String**| Name of the user |

### Return type

[**SwagUser**](SwagUser.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getUserFavorites"></a>
# **getUserFavorites**
> SwagUserFavorites getUserFavorites(user)



Retrieve user favorites details for an organization

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'user' => 'user_example'
};

try {
    // cross your fingers
    SwagUserFavorites result = api.getUserFavorites(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | **String**| Name of the user |

### Return type

[**SwagUserFavorites**](SwagUserFavorites.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="getUsers"></a>
# **getUsers**
> SwagUser getUsers(organization)



Retrieve users details for an organization

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'organization' => 'organization_example'
};

try {
    // cross your fingers
    SwagUser result = api.getUsers(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |

### Return type

[**SwagUser**](SwagUser.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postPipelineRun"></a>
# **postPipelineRun**
> SwagQueueItemImpl postPipelineRun(organization, pipeline, run)



Replay an organization pipeline run

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'organization' => 'organization_example',
    'pipeline' => 'pipeline_example',
    'run' => 'run_example'
};

try {
    // cross your fingers
    SwagQueueItemImpl result = api.postPipelineRun(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |
 **run** | **String**| Name of the run |

### Return type

[**SwagQueueItemImpl**](SwagQueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="postPipelineRuns"></a>
# **postPipelineRuns**
> SwagQueueItemImpl postPipelineRuns(organization, pipeline)



Start a build for an organization pipeline

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'organization' => 'organization_example',
    'pipeline' => 'pipeline_example'
};

try {
    // cross your fingers
    SwagQueueItemImpl result = api.postPipelineRuns(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |

### Return type

[**SwagQueueItemImpl**](SwagQueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putPipelineFavorite"></a>
# **putPipelineFavorite**
> SwagFavoriteImpl putPipelineFavorite(organization, pipeline, body)



Favorite/unfavorite a pipeline

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'organization' => 'organization_example',
    'pipeline' => 'pipeline_example',
    'body' => String.getExample()
};

try {
    // cross your fingers
    SwagFavoriteImpl result = api.putPipelineFavorite(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |
 **body** | [**String**](String.md)| Set JSON string body to {&quot;favorite&quot;: true} to favorite, set value to false to unfavorite |

### Return type

[**SwagFavoriteImpl**](SwagFavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="putPipelineRun"></a>
# **putPipelineRun**
> SwagPipelineRun putPipelineRun(organization, pipeline, run, blocking, timeOutInSecs)



Stop a build of an organization pipeline

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'organization' => 'organization_example',
    'pipeline' => 'pipeline_example',
    'run' => 'run_example',
    'blocking' => 'blocking_example',
    'timeOutInSecs' => 56
};

try {
    // cross your fingers
    SwagPipelineRun result = api.putPipelineRun(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
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

[**SwagPipelineRun**](SwagPipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

<a name="searchClasses"></a>
# **searchClasses**
> String searchClasses(q)



Get classes details

### Example
```java
SwagBlueOceanApi api = new SwagBlueOceanApi();
SwagClient client = api.getClient();

// Configure HTTP basic authorization: jenkins_auth
HttpBasicAuth jenkins_auth = (HttpBasicAuth) client.getAuthentication('jenkins_auth');
jenkins_auth.setUsername('YOUR USERNAME');
jenkins_auth.setPassword('YOUR PASSWORD');

// You can also set your username and password in one line
jenkins_auth.setCredentials('YOUR USERNAME', 'YOUR PASSWORD');

Map<String, Object> params = new Map<String, Object>{
    'q' => 'q_example'
};

try {
    // cross your fingers
    String result = api.searchClasses(params);
    System.debug(result);
} catch (Swagger.ApiException e) {
    // ...handle your exceptions
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

 - **Content-Type**: application/json
 - **Accept**: application/json

