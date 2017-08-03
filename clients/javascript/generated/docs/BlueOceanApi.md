# SwaggyJenkins.BlueOceanApi

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
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
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
 - **Accept**: application/json

<a name="getAuthenticatedUser"></a>
# **getAuthenticatedUser**
> User getAuthenticatedUser(organization, )



Retrieve authenticated user details for an organization

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;

// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();

let organization = "organization_example"; // String | Name of the organization


apiInstance.getAuthenticatedUser(organization, , (error, data, response) => {
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

<a name="getClasses"></a>
# **getClasses**
> &#39;String&#39; getClasses(_class)



Get a list of class names supported by a given class

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
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

**&#39;String&#39;**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getOrganisation"></a>
# **getOrganisation**
> Organisation getOrganisation(organization, )



Retrieve organization details

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;

// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();

let organization = "organization_example"; // String | Name of the organization


apiInstance.getOrganisation(organization, , (error, data, response) => {
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

<a name="getOrganisations"></a>
# **getOrganisations**
> Organisations getOrganisations()



Retrieve all organizations details

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
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

[**Organisations**](Organisations.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipeline"></a>
# **getPipeline**
> Pipeline getPipeline(organization, pipeline, )



Retrieve pipeline details for an organization

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;

// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();

let organization = "organization_example"; // String | Name of the organization

let pipeline = "pipeline_example"; // String | Name of the pipeline


apiInstance.getPipeline(organization, pipeline, , (error, data, response) => {
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

<a name="getPipelineActivities"></a>
# **getPipelineActivities**
> PipelineActivities getPipelineActivities(organization, pipeline, )



Retrieve all activities details for an organization pipeline

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;

// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();

let organization = "organization_example"; // String | Name of the organization

let pipeline = "pipeline_example"; // String | Name of the pipeline


apiInstance.getPipelineActivities(organization, pipeline, , (error, data, response) => {
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

[**PipelineActivities**](PipelineActivities.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineBranch"></a>
# **getPipelineBranch**
> BranchImpl getPipelineBranch(organization, pipeline, branch, )



Retrieve branch details for an organization pipeline

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;

// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();

let organization = "organization_example"; // String | Name of the organization

let pipeline = "pipeline_example"; // String | Name of the pipeline

let branch = "branch_example"; // String | Name of the branch


apiInstance.getPipelineBranch(organization, pipeline, branch, , (error, data, response) => {
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

<a name="getPipelineBranchRun"></a>
# **getPipelineBranchRun**
> PipelineRun getPipelineBranchRun(organization, pipeline, branch, run)



Retrieve branch run details for an organization pipeline

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
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

<a name="getPipelineBranches"></a>
# **getPipelineBranches**
> MultibranchPipeline getPipelineBranches(organization, pipeline, )



Retrieve all branches details for an organization pipeline

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;

// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();

let organization = "organization_example"; // String | Name of the organization

let pipeline = "pipeline_example"; // String | Name of the pipeline


apiInstance.getPipelineBranches(organization, pipeline, , (error, data, response) => {
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

<a name="getPipelineFolder"></a>
# **getPipelineFolder**
> PipelineFolderImpl getPipelineFolder(organization, folder)



Retrieve pipeline folder for an organization

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
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

<a name="getPipelineFolderPipeline"></a>
# **getPipelineFolderPipeline**
> PipelineImpl getPipelineFolderPipeline(organization, pipeline, folder)



Retrieve pipeline details for an organization folder

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
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

<a name="getPipelineQueue"></a>
# **getPipelineQueue**
> PipelineQueue getPipelineQueue(organization, pipeline, )



Retrieve queue details for an organization pipeline

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;

// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();

let organization = "organization_example"; // String | Name of the organization

let pipeline = "pipeline_example"; // String | Name of the pipeline


apiInstance.getPipelineQueue(organization, pipeline, , (error, data, response) => {
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
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
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

<a name="getPipelineRunLog"></a>
# **getPipelineRunLog**
> &#39;String&#39; getPipelineRunLog(organization, pipeline, run, opts)



Get log for a pipeline run

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
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

**&#39;String&#39;**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineRunNode"></a>
# **getPipelineRunNode**
> PipelineRunNode getPipelineRunNode(organization, pipeline, runnode, )



Retrieve run node details for an organization pipeline

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
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


apiInstance.getPipelineRunNode(organization, pipeline, runnode, , (error, data, response) => {
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

<a name="getPipelineRunNodeStep"></a>
# **getPipelineRunNodeStep**
> PipelineStepImpl getPipelineRunNodeStep(organization, pipeline, runnode, step)



Retrieve run node details for an organization pipeline

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
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


apiInstance.getPipelineRunNodeStep(organization, pipeline, runnode, step, (error, data, response) => {
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

<a name="getPipelineRunNodeStepLog"></a>
# **getPipelineRunNodeStepLog**
> &#39;String&#39; getPipelineRunNodeStepLog(organization, pipeline, runnode, step)



Get log for a pipeline run node step

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
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


apiInstance.getPipelineRunNodeStepLog(organization, pipeline, runnode, step, (error, data, response) => {
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

**&#39;String&#39;**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineRunNodeSteps"></a>
# **getPipelineRunNodeSteps**
> PipelineRunNodeSteps getPipelineRunNodeSteps(organization, pipeline, runnode, )



Retrieve run node steps details for an organization pipeline

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
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


apiInstance.getPipelineRunNodeSteps(organization, pipeline, runnode, , (error, data, response) => {
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
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
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

[**PipelineRunNodes**](PipelineRunNodes.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineRuns"></a>
# **getPipelineRuns**
> PipelineRuns getPipelineRuns(organization, pipeline, )



Retrieve all runs details for an organization pipeline

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;

// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();

let organization = "organization_example"; // String | Name of the organization

let pipeline = "pipeline_example"; // String | Name of the pipeline


apiInstance.getPipelineRuns(organization, pipeline, , (error, data, response) => {
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

[**PipelineRuns**](PipelineRuns.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelines"></a>
# **getPipelines**
> Pipelines getPipelines(organization, )



Retrieve all pipelines details for an organization

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;

// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();

let organization = "organization_example"; // String | Name of the organization


apiInstance.getPipelines(organization, , (error, data, response) => {
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

[**Pipelines**](Pipelines.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getSCM"></a>
# **getSCM**
> GithubScm getSCM(organization, scm, )



Retrieve SCM details for an organization

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;

// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();

let organization = "organization_example"; // String | Name of the organization

let scm = "scm_example"; // String | Name of SCM


apiInstance.getSCM(organization, scm, , (error, data, response) => {
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

<a name="getSCMOrganisationRepositories"></a>
# **getSCMOrganisationRepositories**
> ScmOrganisations getSCMOrganisationRepositories(organization, scm, scmOrganisation, , opts)



Retrieve SCM organization repositories details for an organization

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
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

apiInstance.getSCMOrganisationRepositories(organization, scm, scmOrganisation, , opts, (error, data, response) => {
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

[**ScmOrganisations**](ScmOrganisations.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getSCMOrganisationRepository"></a>
# **getSCMOrganisationRepository**
> ScmOrganisations getSCMOrganisationRepository(organization, scm, scmOrganisation, repository, opts)



Retrieve SCM organization repository details for an organization

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
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

[**ScmOrganisations**](ScmOrganisations.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getSCMOrganisations"></a>
# **getSCMOrganisations**
> ScmOrganisations getSCMOrganisations(organization, scm, , opts)



Retrieve SCM organizations details for an organization

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
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

apiInstance.getSCMOrganisations(organization, scm, , opts, (error, data, response) => {
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
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
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

<a name="getUserFavorites"></a>
# **getUserFavorites**
> UserFavorites getUserFavorites(user)



Retrieve user favorites details for an organization

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
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

[**UserFavorites**](UserFavorites.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getUsers"></a>
# **getUsers**
> User getUsers(organization, )



Retrieve users details for an organization

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;

// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();

let organization = "organization_example"; // String | Name of the organization


apiInstance.getUsers(organization, , (error, data, response) => {
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

<a name="postPipelineRun"></a>
# **postPipelineRun**
> QueueItemImpl postPipelineRun(organization, pipeline, run)



Replay an organization pipeline run

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
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

<a name="postPipelineRuns"></a>
# **postPipelineRuns**
> QueueItemImpl postPipelineRuns(organization, pipeline, )



Start a build for an organization pipeline

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;

// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();

let organization = "organization_example"; // String | Name of the organization

let pipeline = "pipeline_example"; // String | Name of the pipeline


apiInstance.postPipelineRuns(organization, pipeline, , (error, data, response) => {
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

<a name="putPipelineFavorite"></a>
# **putPipelineFavorite**
> FavoriteImpl putPipelineFavorite(organization, pipeline, body)



Favorite/unfavorite a pipeline

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
let defaultClient = SwaggyJenkins.ApiClient.instance;

// Configure HTTP basic authorization: jenkins_auth
let jenkins_auth = defaultClient.authentications['jenkins_auth'];
jenkins_auth.username = 'YOUR USERNAME';
jenkins_auth.password = 'YOUR PASSWORD';

let apiInstance = new SwaggyJenkins.BlueOceanApi();

let organization = "organization_example"; // String | Name of the organization

let pipeline = "pipeline_example"; // String | Name of the pipeline

let body = new SwaggyJenkins.Body(); // Body | Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite


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
 **body** | [**Body**](Body.md)| Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite | 

### Return type

[**FavoriteImpl**](FavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="putPipelineRun"></a>
# **putPipelineRun**
> PipelineRun putPipelineRun(organization, pipeline, run, opts)



Stop a build of an organization pipeline

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
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

<a name="search"></a>
# **search**
> &#39;String&#39; search(q)



Search for any resource details

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
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

**&#39;String&#39;**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="searchClasses"></a>
# **searchClasses**
> &#39;String&#39; searchClasses(q)



Get classes details

### Example
```javascript
import SwaggyJenkins from 'swaggy_jenkins';
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

**&#39;String&#39;**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

