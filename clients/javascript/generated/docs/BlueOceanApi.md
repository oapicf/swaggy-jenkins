# SwaggyJenkins.BlueOceanApi

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

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();
let organization = "organization_example"; // String | Name of the organization
let pipeline = "pipeline_example"; // String | Name of the pipeline
let queue = "queue_example"; // String | Name of the queue item
apiInstance.deletePipelineQueueItem(organization, pipeline, queue, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
});
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
- **Accept**: Not defined


## getAuthenticatedUser

> User getAuthenticatedUser(organization)



Retrieve authenticated user details for an organization

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();
let organization = "organization_example"; // String | Name of the organization
apiInstance.getAuthenticatedUser(organization, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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


## getClasses

> String getClasses(_class)



Get a list of class names supported by a given class

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();
let _class = "_class_example"; // String | Name of the class
apiInstance.getClasses(_class, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_class** | **String**| Name of the class | 

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

```javascript
import SwaggyJenkins from 'swaggy-jenkins';

let apiInstance = new SwaggyJenkins.BlueOceanApi();
let key = 56; // Number | Key ID received as part of JWT header field kid
apiInstance.getJsonWebKey(key, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **Number**| Key ID received as part of JWT header field kid | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getJsonWebToken

> String getJsonWebToken(opts)



Retrieve JSON Web Token

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';

let apiInstance = new SwaggyJenkins.BlueOceanApi();
let opts = {
  'expiryTimeInMins': 56, // Number | Token expiry time in minutes, default: 30 minutes
  'maxExpiryTimeInMins': 56 // Number | Maximum token expiry time in minutes, default: 480 minutes
};
apiInstance.getJsonWebToken(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expiryTimeInMins** | **Number**| Token expiry time in minutes, default: 30 minutes | [optional] 
 **maxExpiryTimeInMins** | **Number**| Maximum token expiry time in minutes, default: 480 minutes | [optional] 

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

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();
let organization = "organization_example"; // String | Name of the organization
apiInstance.getOrganisation(organization, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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


## getOrganisations

> [Organisation] getOrganisations()



Retrieve all organizations details

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();
apiInstance.getOrganisations((error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**[Organisation]**](Organisation.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getPipeline

> Pipeline getPipeline(organization, pipeline)



Retrieve pipeline details for an organization

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();
let organization = "organization_example"; // String | Name of the organization
let pipeline = "pipeline_example"; // String | Name of the pipeline
apiInstance.getPipeline(organization, pipeline, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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


## getPipelineActivities

> [PipelineActivity] getPipelineActivities(organization, pipeline)



Retrieve all activities details for an organization pipeline

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();
let organization = "organization_example"; // String | Name of the organization
let pipeline = "pipeline_example"; // String | Name of the pipeline
apiInstance.getPipelineActivities(organization, pipeline, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **pipeline** | **String**| Name of the pipeline | 

### Return type

[**[PipelineActivity]**](PipelineActivity.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getPipelineBranch

> BranchImpl getPipelineBranch(organization, pipeline, branch)



Retrieve branch details for an organization pipeline

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();
let organization = "organization_example"; // String | Name of the organization
let pipeline = "pipeline_example"; // String | Name of the pipeline
let branch = "branch_example"; // String | Name of the branch
apiInstance.getPipelineBranch(organization, pipeline, branch, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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


## getPipelineBranchRun

> PipelineRun getPipelineBranchRun(organization, pipeline, branch, run)



Retrieve branch run details for an organization pipeline

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();
let organization = "organization_example"; // String | Name of the organization
let pipeline = "pipeline_example"; // String | Name of the pipeline
let branch = "branch_example"; // String | Name of the branch
let run = "run_example"; // String | Name of the run
apiInstance.getPipelineBranchRun(organization, pipeline, branch, run, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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


## getPipelineBranches

> MultibranchPipeline getPipelineBranches(organization, pipeline)



Retrieve all branches details for an organization pipeline

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();
let organization = "organization_example"; // String | Name of the organization
let pipeline = "pipeline_example"; // String | Name of the pipeline
apiInstance.getPipelineBranches(organization, pipeline, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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


## getPipelineFolder

> PipelineFolderImpl getPipelineFolder(organization, folder)



Retrieve pipeline folder for an organization

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();
let organization = "organization_example"; // String | Name of the organization
let folder = "folder_example"; // String | Name of the folder
apiInstance.getPipelineFolder(organization, folder, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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


## getPipelineFolderPipeline

> PipelineImpl getPipelineFolderPipeline(organization, pipeline, folder)



Retrieve pipeline details for an organization folder

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();
let organization = "organization_example"; // String | Name of the organization
let pipeline = "pipeline_example"; // String | Name of the pipeline
let folder = "folder_example"; // String | Name of the folder
apiInstance.getPipelineFolderPipeline(organization, pipeline, folder, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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


## getPipelineQueue

> [QueueItemImpl] getPipelineQueue(organization, pipeline)



Retrieve queue details for an organization pipeline

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();
let organization = "organization_example"; // String | Name of the organization
let pipeline = "pipeline_example"; // String | Name of the pipeline
apiInstance.getPipelineQueue(organization, pipeline, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **pipeline** | **String**| Name of the pipeline | 

### Return type

[**[QueueItemImpl]**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getPipelineRun

> PipelineRun getPipelineRun(organization, pipeline, run)



Retrieve run details for an organization pipeline

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();
let organization = "organization_example"; // String | Name of the organization
let pipeline = "pipeline_example"; // String | Name of the pipeline
let run = "run_example"; // String | Name of the run
apiInstance.getPipelineRun(organization, pipeline, run, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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


## getPipelineRunLog

> String getPipelineRunLog(organization, pipeline, run, opts)



Get log for a pipeline run

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();
let organization = "organization_example"; // String | Name of the organization
let pipeline = "pipeline_example"; // String | Name of the pipeline
let run = "run_example"; // String | Name of the run
let opts = {
  'start': 56, // Number | Start position of the log
  'download': true // Boolean | Set to true in order to download the file, otherwise it's passed as a response body
};
apiInstance.getPipelineRunLog(organization, pipeline, run, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **pipeline** | **String**| Name of the pipeline | 
 **run** | **String**| Name of the run | 
 **start** | **Number**| Start position of the log | [optional] 
 **download** | **Boolean**| Set to true in order to download the file, otherwise it&#39;s passed as a response body | [optional] 

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

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();
let organization = "organization_example"; // String | Name of the organization
let pipeline = "pipeline_example"; // String | Name of the pipeline
let run = "run_example"; // String | Name of the run
let node = "node_example"; // String | Name of the node
apiInstance.getPipelineRunNode(organization, pipeline, run, node, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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


## getPipelineRunNodeStep

> PipelineStepImpl getPipelineRunNodeStep(organization, pipeline, run, node, step)



Retrieve run node details for an organization pipeline

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();
let organization = "organization_example"; // String | Name of the organization
let pipeline = "pipeline_example"; // String | Name of the pipeline
let run = "run_example"; // String | Name of the run
let node = "node_example"; // String | Name of the node
let step = "step_example"; // String | Name of the step
apiInstance.getPipelineRunNodeStep(organization, pipeline, run, node, step, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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


## getPipelineRunNodeStepLog

> String getPipelineRunNodeStepLog(organization, pipeline, run, node, step)



Get log for a pipeline run node step

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();
let organization = "organization_example"; // String | Name of the organization
let pipeline = "pipeline_example"; // String | Name of the pipeline
let run = "run_example"; // String | Name of the run
let node = "node_example"; // String | Name of the node
let step = "step_example"; // String | Name of the step
apiInstance.getPipelineRunNodeStepLog(organization, pipeline, run, node, step, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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


## getPipelineRunNodeSteps

> [PipelineStepImpl] getPipelineRunNodeSteps(organization, pipeline, run, node)



Retrieve run node steps details for an organization pipeline

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();
let organization = "organization_example"; // String | Name of the organization
let pipeline = "pipeline_example"; // String | Name of the pipeline
let run = "run_example"; // String | Name of the run
let node = "node_example"; // String | Name of the node
apiInstance.getPipelineRunNodeSteps(organization, pipeline, run, node, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **pipeline** | **String**| Name of the pipeline | 
 **run** | **String**| Name of the run | 
 **node** | **String**| Name of the node | 

### Return type

[**[PipelineStepImpl]**](PipelineStepImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getPipelineRunNodes

> [PipelineRunNode] getPipelineRunNodes(organization, pipeline, run)



Retrieve run nodes details for an organization pipeline

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();
let organization = "organization_example"; // String | Name of the organization
let pipeline = "pipeline_example"; // String | Name of the pipeline
let run = "run_example"; // String | Name of the run
apiInstance.getPipelineRunNodes(organization, pipeline, run, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **pipeline** | **String**| Name of the pipeline | 
 **run** | **String**| Name of the run | 

### Return type

[**[PipelineRunNode]**](PipelineRunNode.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getPipelineRuns

> [PipelineRun] getPipelineRuns(organization, pipeline)



Retrieve all runs details for an organization pipeline

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();
let organization = "organization_example"; // String | Name of the organization
let pipeline = "pipeline_example"; // String | Name of the pipeline
apiInstance.getPipelineRuns(organization, pipeline, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **pipeline** | **String**| Name of the pipeline | 

### Return type

[**[PipelineRun]**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getPipelines

> [Pipeline] getPipelines(organization)



Retrieve all pipelines details for an organization

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();
let organization = "organization_example"; // String | Name of the organization
apiInstance.getPipelines(organization, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 

### Return type

[**[Pipeline]**](Pipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getSCM

> GithubScm getSCM(organization, scm)



Retrieve SCM details for an organization

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();
let organization = "organization_example"; // String | Name of the organization
let scm = "scm_example"; // String | Name of SCM
apiInstance.getSCM(organization, scm, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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


## getSCMOrganisationRepositories

> [GithubOrganization] getSCMOrganisationRepositories(organization, scm, scmOrganisation, opts)



Retrieve SCM organization repositories details for an organization

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();
let organization = "organization_example"; // String | Name of the organization
let scm = "scm_example"; // String | Name of SCM
let scmOrganisation = "scmOrganisation_example"; // String | Name of the SCM organization
let opts = {
  'credentialId': "credentialId_example", // String | Credential ID
  'pageSize': 56, // Number | Number of items in a page
  'pageNumber': 56 // Number | Page number
};
apiInstance.getSCMOrganisationRepositories(organization, scm, scmOrganisation, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **scm** | **String**| Name of SCM | 
 **scmOrganisation** | **String**| Name of the SCM organization | 
 **credentialId** | **String**| Credential ID | [optional] 
 **pageSize** | **Number**| Number of items in a page | [optional] 
 **pageNumber** | **Number**| Page number | [optional] 

### Return type

[**[GithubOrganization]**](GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getSCMOrganisationRepository

> [GithubOrganization] getSCMOrganisationRepository(organization, scm, scmOrganisation, repository, opts)



Retrieve SCM organization repository details for an organization

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();
let organization = "organization_example"; // String | Name of the organization
let scm = "scm_example"; // String | Name of SCM
let scmOrganisation = "scmOrganisation_example"; // String | Name of the SCM organization
let repository = "repository_example"; // String | Name of the SCM repository
let opts = {
  'credentialId': "credentialId_example" // String | Credential ID
};
apiInstance.getSCMOrganisationRepository(organization, scm, scmOrganisation, repository, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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

[**[GithubOrganization]**](GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getSCMOrganisations

> [GithubOrganization] getSCMOrganisations(organization, scm, opts)



Retrieve SCM organizations details for an organization

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();
let organization = "organization_example"; // String | Name of the organization
let scm = "scm_example"; // String | Name of SCM
let opts = {
  'credentialId': "credentialId_example" // String | Credential ID
};
apiInstance.getSCMOrganisations(organization, scm, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **scm** | **String**| Name of SCM | 
 **credentialId** | **String**| Credential ID | [optional] 

### Return type

[**[GithubOrganization]**](GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getUser

> User getUser(organization, user)



Retrieve user details for an organization

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();
let organization = "organization_example"; // String | Name of the organization
let user = "user_example"; // String | Name of the user
apiInstance.getUser(organization, user, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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


## getUserFavorites

> [FavoriteImpl] getUserFavorites(user)



Retrieve user favorites details for an organization

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();
let user = "user_example"; // String | Name of the user
apiInstance.getUserFavorites(user, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | **String**| Name of the user | 

### Return type

[**[FavoriteImpl]**](FavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## getUsers

> User getUsers(organization)



Retrieve users details for an organization

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();
let organization = "organization_example"; // String | Name of the organization
apiInstance.getUsers(organization, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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


## postPipelineRun

> QueueItemImpl postPipelineRun(organization, pipeline, run)



Replay an organization pipeline run

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();
let organization = "organization_example"; // String | Name of the organization
let pipeline = "pipeline_example"; // String | Name of the pipeline
let run = "run_example"; // String | Name of the run
apiInstance.postPipelineRun(organization, pipeline, run, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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


## postPipelineRuns

> QueueItemImpl postPipelineRuns(organization, pipeline)



Start a build for an organization pipeline

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();
let organization = "organization_example"; // String | Name of the organization
let pipeline = "pipeline_example"; // String | Name of the pipeline
apiInstance.postPipelineRuns(organization, pipeline, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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


## putPipelineFavorite

> FavoriteImpl putPipelineFavorite(organization, pipeline, body)



Favorite/unfavorite a pipeline

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();
let organization = "organization_example"; // String | Name of the organization
let pipeline = "pipeline_example"; // String | Name of the pipeline
let body = true; // Boolean | Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite
apiInstance.putPipelineFavorite(organization, pipeline, body, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **pipeline** | **String**| Name of the pipeline | 
 **body** | **Boolean**| Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite | 

### Return type

[**FavoriteImpl**](FavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## putPipelineRun

> PipelineRun putPipelineRun(organization, pipeline, run, opts)



Stop a build of an organization pipeline

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();
let organization = "organization_example"; // String | Name of the organization
let pipeline = "pipeline_example"; // String | Name of the pipeline
let run = "run_example"; // String | Name of the run
let opts = {
  'blocking': "blocking_example", // String | Set to true to make blocking stop, default: false
  'timeOutInSecs': 56 // Number | Timeout in seconds, default: 10 seconds
};
apiInstance.putPipelineRun(organization, pipeline, run, opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **pipeline** | **String**| Name of the pipeline | 
 **run** | **String**| Name of the run | 
 **blocking** | **String**| Set to true to make blocking stop, default: false | [optional] 
 **timeOutInSecs** | **Number**| Timeout in seconds, default: 10 seconds | [optional] 

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

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();
let q = "q_example"; // String | Query string
apiInstance.search(q, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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


## searchClasses

> String searchClasses(q)



Get classes details

### Example

```javascript
import SwaggyJenkins from 'swaggy-jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;
// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();
let q = "q_example"; // String | Query string containing an array of class names
apiInstance.searchClasses(q, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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

