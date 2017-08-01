# SwaggyJenkins.BlueOceanApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deletePipelineQueueItemByOrg**](BlueOceanApi.md#deletePipelineQueueItemByOrg) | **DELETE** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/queue/{queue} | 
[**getAuthenticatedUser**](BlueOceanApi.md#getAuthenticatedUser) | **GET** /blue/rest/organizations/{organisation}/user/ | 
[**getClasses**](BlueOceanApi.md#getClasses) | **GET** /blue/rest/classes/{class} | 
[**getOrganisation**](BlueOceanApi.md#getOrganisation) | **GET** /blue/rest/organizations/{organisation} | 
[**getOrganisations**](BlueOceanApi.md#getOrganisations) | **GET** /blue/rest/organizations/ | 
[**getPipelineActivitiesByOrg**](BlueOceanApi.md#getPipelineActivitiesByOrg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/activities | 
[**getPipelineBranchByOrg**](BlueOceanApi.md#getPipelineBranchByOrg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches/{branch}/ | 
[**getPipelineBranchRunByOrg**](BlueOceanApi.md#getPipelineBranchRunByOrg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches/{branch}/runs/{run} | 
[**getPipelineBranchesByOrg**](BlueOceanApi.md#getPipelineBranchesByOrg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/branches | 
[**getPipelineByOrg**](BlueOceanApi.md#getPipelineByOrg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline} | 
[**getPipelineFolderByOrg**](BlueOceanApi.md#getPipelineFolderByOrg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{folder}/ | 
[**getPipelineFolderByOrg_0**](BlueOceanApi.md#getPipelineFolderByOrg_0) | **GET** /blue/rest/organizations/{organisation}/pipelines/{folder}/pipelines/{pipeline} | 
[**getPipelineQueueByOrg**](BlueOceanApi.md#getPipelineQueueByOrg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/queue | 
[**getPipelineRunByOrg**](BlueOceanApi.md#getPipelineRunByOrg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/runs/{run} | 
[**getPipelineRunLogByOrg**](BlueOceanApi.md#getPipelineRunLogByOrg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/runs/{run}/log | 
[**getPipelineRunNodeByOrg**](BlueOceanApi.md#getPipelineRunNodeByOrg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/runs/{run}/nodes/{node} | 
[**getPipelineRunNodeStepByOrg**](BlueOceanApi.md#getPipelineRunNodeStepByOrg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} | 
[**getPipelineRunNodeStepLogByOrg**](BlueOceanApi.md#getPipelineRunNodeStepLogByOrg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log | 
[**getPipelineRunNodeStepsByOrg**](BlueOceanApi.md#getPipelineRunNodeStepsByOrg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps | 
[**getPipelineRunNodesByOrg**](BlueOceanApi.md#getPipelineRunNodesByOrg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/runs/{run}/nodes | 
[**getPipelineRunsByOrg**](BlueOceanApi.md#getPipelineRunsByOrg) | **GET** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/runs | 
[**getPipelinesByOrg**](BlueOceanApi.md#getPipelinesByOrg) | **GET** /blue/rest/organizations/{organisation}/pipelines/ | 
[**getSCM**](BlueOceanApi.md#getSCM) | **GET** /blue/rest/organizations/{organisation}/scm/{scm} | 
[**getSCMOrganisationRepositories**](BlueOceanApi.md#getSCMOrganisationRepositories) | **GET** /blue/rest/organizations/{organisation}/scm/{scm}/organizations/{scmOrganisation}/repositories | 
[**getSCMOrganisationRepository**](BlueOceanApi.md#getSCMOrganisationRepository) | **GET** /blue/rest/organizations/{organisation}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} | 
[**getSCMOrganisations**](BlueOceanApi.md#getSCMOrganisations) | **GET** /blue/rest/organizations/{organisation}/scm/{scm}/organizations | 
[**getUser**](BlueOceanApi.md#getUser) | **GET** /blue/rest/organizations/{organisation}/users/{user} | 
[**getUserFavorites**](BlueOceanApi.md#getUserFavorites) | **GET** /blue/rest/users/{user}/favorites | 
[**getUsers**](BlueOceanApi.md#getUsers) | **GET** /blue/rest/organizations/{organisation}/users/ | 
[**postPipelineRunByOrg**](BlueOceanApi.md#postPipelineRunByOrg) | **POST** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/runs/{run}/replay | 
[**postPipelineRunsByOrg**](BlueOceanApi.md#postPipelineRunsByOrg) | **POST** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/runs | 
[**putPipelineFavoriteByOrg**](BlueOceanApi.md#putPipelineFavoriteByOrg) | **PUT** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/favorite | 
[**putPipelineRunByOrg**](BlueOceanApi.md#putPipelineRunByOrg) | **PUT** /blue/rest/organizations/{organisation}/pipelines/{pipeline}/runs/{run}/stop | 
[**search**](BlueOceanApi.md#search) | **GET** /blue/rest/search/ | 
[**searchClasses**](BlueOceanApi.md#searchClasses) | **GET** /blue/rest/classes/ | 


<a name="deletePipelineQueueItemByOrg"></a>
# **deletePipelineQueueItemByOrg**
> deletePipelineQueueItemByOrg(organisation, pipeline, queue)



Delete queue item from an organisation pipeline queue

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.BlueOceanApi();

var organisation = "organisation_example"; // String | Name of the organisation

var pipeline = "pipeline_example"; // String | Name of the pipeline

var queue = "queue_example"; // String | Name of the queue item


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully.');
  }
};
apiInstance.deletePipelineQueueItemByOrg(organisation, pipeline, queue, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 
 **pipeline** | **String**| Name of the pipeline | 
 **queue** | **String**| Name of the queue item | 

### Return type

null (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getAuthenticatedUser"></a>
# **getAuthenticatedUser**
> SwaggyjenkinsUser getAuthenticatedUser(organisation, )



Retrieve authenticated user details for an organisation

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.BlueOceanApi();

var organisation = "organisation_example"; // String | Name of the organisation


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getAuthenticatedUser(organisation, , callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 

### Return type

[**SwaggyjenkinsUser**](SwaggyjenkinsUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getClasses"></a>
# **getClasses**
> &#39;String&#39; getClasses(_class)



Get a list of class names supported by a given class

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.BlueOceanApi();

var _class = "_class_example"; // String | Name of the class


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getClasses(_class, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_class** | **String**| Name of the class | 

### Return type

**&#39;String&#39;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getOrganisation"></a>
# **getOrganisation**
> SwaggyjenkinsOrganisation getOrganisation(organisation, )



Retrieve organisation details

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.BlueOceanApi();

var organisation = "organisation_example"; // String | Name of the organisation


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getOrganisation(organisation, , callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 

### Return type

[**SwaggyjenkinsOrganisation**](SwaggyjenkinsOrganisation.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getOrganisations"></a>
# **getOrganisations**
> GetOrganisations getOrganisations()



Retrieve all organisations details

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.BlueOceanApi();

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getOrganisations(callback);
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetOrganisations**](GetOrganisations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineActivitiesByOrg"></a>
# **getPipelineActivitiesByOrg**
> GetPipelineActivities getPipelineActivitiesByOrg(organisation, pipeline, )



Retrieve all activities details for an organisation pipeline

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.BlueOceanApi();

var organisation = "organisation_example"; // String | Name of the organisation

var pipeline = "pipeline_example"; // String | Name of the pipeline


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getPipelineActivitiesByOrg(organisation, pipeline, , callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 
 **pipeline** | **String**| Name of the pipeline | 

### Return type

[**GetPipelineActivities**](GetPipelineActivities.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineBranchByOrg"></a>
# **getPipelineBranchByOrg**
> IojenkinsblueoceanrestimplpipelineBranchImpl getPipelineBranchByOrg(organisation, pipeline, branch, )



Retrieve branch details for an organisation pipeline

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.BlueOceanApi();

var organisation = "organisation_example"; // String | Name of the organisation

var pipeline = "pipeline_example"; // String | Name of the pipeline

var branch = "branch_example"; // String | Name of the branch


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getPipelineBranchByOrg(organisation, pipeline, branch, , callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 
 **pipeline** | **String**| Name of the pipeline | 
 **branch** | **String**| Name of the branch | 

### Return type

[**IojenkinsblueoceanrestimplpipelineBranchImpl**](IojenkinsblueoceanrestimplpipelineBranchImpl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineBranchRunByOrg"></a>
# **getPipelineBranchRunByOrg**
> SwaggyjenkinsPipelineRun getPipelineBranchRunByOrg(organisation, pipeline, branch, run)



Retrieve branch run details for an organisation pipeline

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.BlueOceanApi();

var organisation = "organisation_example"; // String | Name of the organisation

var pipeline = "pipeline_example"; // String | Name of the pipeline

var branch = "branch_example"; // String | Name of the branch

var run = "run_example"; // String | Name of the run


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getPipelineBranchRunByOrg(organisation, pipeline, branch, run, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 
 **pipeline** | **String**| Name of the pipeline | 
 **branch** | **String**| Name of the branch | 
 **run** | **String**| Name of the run | 

### Return type

[**SwaggyjenkinsPipelineRun**](SwaggyjenkinsPipelineRun.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineBranchesByOrg"></a>
# **getPipelineBranchesByOrg**
> GetMultibranchPipeline getPipelineBranchesByOrg(organisation, pipeline, )



Retrieve all branches details for an organisation pipeline

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.BlueOceanApi();

var organisation = "organisation_example"; // String | Name of the organisation

var pipeline = "pipeline_example"; // String | Name of the pipeline


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getPipelineBranchesByOrg(organisation, pipeline, , callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 
 **pipeline** | **String**| Name of the pipeline | 

### Return type

[**GetMultibranchPipeline**](GetMultibranchPipeline.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineByOrg"></a>
# **getPipelineByOrg**
> SwaggyjenkinsPipeline getPipelineByOrg(organisation, pipeline, )



Retrieve pipeline details for an organisation

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.BlueOceanApi();

var organisation = "organisation_example"; // String | Name of the organisation

var pipeline = "pipeline_example"; // String | Name of the pipeline


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getPipelineByOrg(organisation, pipeline, , callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 
 **pipeline** | **String**| Name of the pipeline | 

### Return type

[**SwaggyjenkinsPipeline**](SwaggyjenkinsPipeline.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineFolderByOrg"></a>
# **getPipelineFolderByOrg**
> IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl getPipelineFolderByOrg(organisation, folder)



Retrieve pipeline folder for an organisation

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.BlueOceanApi();

var organisation = "organisation_example"; // String | Name of the organisation

var folder = "folder_example"; // String | Name of the folder


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getPipelineFolderByOrg(organisation, folder, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 
 **folder** | **String**| Name of the folder | 

### Return type

[**IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl**](IojenkinsblueoceanserviceembeddedrestPipelineFolderImpl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineFolderByOrg_0"></a>
# **getPipelineFolderByOrg_0**
> IojenkinsblueoceanserviceembeddedrestPipelineImpl getPipelineFolderByOrg_0(organisation, pipeline, folder)



Retrieve pipeline details for an organisation folder

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.BlueOceanApi();

var organisation = "organisation_example"; // String | Name of the organisation

var pipeline = "pipeline_example"; // String | Name of the pipeline

var folder = "folder_example"; // String | Name of the folder


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getPipelineFolderByOrg_0(organisation, pipeline, folder, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 
 **pipeline** | **String**| Name of the pipeline | 
 **folder** | **String**| Name of the folder | 

### Return type

[**IojenkinsblueoceanserviceembeddedrestPipelineImpl**](IojenkinsblueoceanserviceembeddedrestPipelineImpl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineQueueByOrg"></a>
# **getPipelineQueueByOrg**
> GetPipelineQueue getPipelineQueueByOrg(organisation, pipeline, )



Retrieve queue details for an organisation pipeline

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.BlueOceanApi();

var organisation = "organisation_example"; // String | Name of the organisation

var pipeline = "pipeline_example"; // String | Name of the pipeline


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getPipelineQueueByOrg(organisation, pipeline, , callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 
 **pipeline** | **String**| Name of the pipeline | 

### Return type

[**GetPipelineQueue**](GetPipelineQueue.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineRunByOrg"></a>
# **getPipelineRunByOrg**
> SwaggyjenkinsPipelineRun getPipelineRunByOrg(organisation, pipeline, run)



Retrieve run details for an organisation pipeline

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.BlueOceanApi();

var organisation = "organisation_example"; // String | Name of the organisation

var pipeline = "pipeline_example"; // String | Name of the pipeline

var run = "run_example"; // String | Name of the run


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getPipelineRunByOrg(organisation, pipeline, run, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 
 **pipeline** | **String**| Name of the pipeline | 
 **run** | **String**| Name of the run | 

### Return type

[**SwaggyjenkinsPipelineRun**](SwaggyjenkinsPipelineRun.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineRunLogByOrg"></a>
# **getPipelineRunLogByOrg**
> &#39;String&#39; getPipelineRunLogByOrg(organisation, pipeline, run, opts)



Get log for a pipeline run

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.BlueOceanApi();

var organisation = "organisation_example"; // String | Name of the organisation

var pipeline = "pipeline_example"; // String | Name of the pipeline

var run = "run_example"; // String | Name of the run

var opts = { 
  'start': 56, // Number | Start position of the log
  'download': true // Boolean | Set to true in order to download the file, otherwise it's passed as a response body
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getPipelineRunLogByOrg(organisation, pipeline, run, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 
 **pipeline** | **String**| Name of the pipeline | 
 **run** | **String**| Name of the run | 
 **start** | **Number**| Start position of the log | [optional] 
 **download** | **Boolean**| Set to true in order to download the file, otherwise it&#39;s passed as a response body | [optional] 

### Return type

**&#39;String&#39;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineRunNodeByOrg"></a>
# **getPipelineRunNodeByOrg**
> SwaggyjenkinsPipelineRunNode getPipelineRunNodeByOrg(organisation, pipeline, runnode, )



Retrieve run node details for an organisation pipeline

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.BlueOceanApi();

var organisation = "organisation_example"; // String | Name of the organisation

var pipeline = "pipeline_example"; // String | Name of the pipeline

var run = "run_example"; // String | Name of the run

var node = "node_example"; // String | Name of the node


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getPipelineRunNodeByOrg(organisation, pipeline, runnode, , callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 
 **pipeline** | **String**| Name of the pipeline | 
 **run** | **String**| Name of the run | 
 **node** | **String**| Name of the node | 

### Return type

[**SwaggyjenkinsPipelineRunNode**](SwaggyjenkinsPipelineRunNode.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineRunNodeStepByOrg"></a>
# **getPipelineRunNodeStepByOrg**
> IojenkinsblueoceanrestimplpipelinePipelineStepImpl getPipelineRunNodeStepByOrg(organisation, pipeline, runnode, step)



Retrieve run node details for an organisation pipeline

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.BlueOceanApi();

var organisation = "organisation_example"; // String | Name of the organisation

var pipeline = "pipeline_example"; // String | Name of the pipeline

var run = "run_example"; // String | Name of the run

var node = "node_example"; // String | Name of the node

var step = "step_example"; // String | Name of the step


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getPipelineRunNodeStepByOrg(organisation, pipeline, runnode, step, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 
 **pipeline** | **String**| Name of the pipeline | 
 **run** | **String**| Name of the run | 
 **node** | **String**| Name of the node | 
 **step** | **String**| Name of the step | 

### Return type

[**IojenkinsblueoceanrestimplpipelinePipelineStepImpl**](IojenkinsblueoceanrestimplpipelinePipelineStepImpl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineRunNodeStepLogByOrg"></a>
# **getPipelineRunNodeStepLogByOrg**
> &#39;String&#39; getPipelineRunNodeStepLogByOrg(organisation, pipeline, runnode, step)



Get log for a pipeline run node step

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.BlueOceanApi();

var organisation = "organisation_example"; // String | Name of the organisation

var pipeline = "pipeline_example"; // String | Name of the pipeline

var run = "run_example"; // String | Name of the run

var node = "node_example"; // String | Name of the node

var step = "step_example"; // String | Name of the step


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getPipelineRunNodeStepLogByOrg(organisation, pipeline, runnode, step, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 
 **pipeline** | **String**| Name of the pipeline | 
 **run** | **String**| Name of the run | 
 **node** | **String**| Name of the node | 
 **step** | **String**| Name of the step | 

### Return type

**&#39;String&#39;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineRunNodeStepsByOrg"></a>
# **getPipelineRunNodeStepsByOrg**
> GetPipelineRunNodeSteps getPipelineRunNodeStepsByOrg(organisation, pipeline, runnode, )



Retrieve run node steps details for an organisation pipeline

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.BlueOceanApi();

var organisation = "organisation_example"; // String | Name of the organisation

var pipeline = "pipeline_example"; // String | Name of the pipeline

var run = "run_example"; // String | Name of the run

var node = "node_example"; // String | Name of the node


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getPipelineRunNodeStepsByOrg(organisation, pipeline, runnode, , callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 
 **pipeline** | **String**| Name of the pipeline | 
 **run** | **String**| Name of the run | 
 **node** | **String**| Name of the node | 

### Return type

[**GetPipelineRunNodeSteps**](GetPipelineRunNodeSteps.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineRunNodesByOrg"></a>
# **getPipelineRunNodesByOrg**
> GetPipelineRunNodes getPipelineRunNodesByOrg(organisation, pipeline, run)



Retrieve run nodes details for an organisation pipeline

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.BlueOceanApi();

var organisation = "organisation_example"; // String | Name of the organisation

var pipeline = "pipeline_example"; // String | Name of the pipeline

var run = "run_example"; // String | Name of the run


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getPipelineRunNodesByOrg(organisation, pipeline, run, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 
 **pipeline** | **String**| Name of the pipeline | 
 **run** | **String**| Name of the run | 

### Return type

[**GetPipelineRunNodes**](GetPipelineRunNodes.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelineRunsByOrg"></a>
# **getPipelineRunsByOrg**
> GetPipelineRuns getPipelineRunsByOrg(organisation, pipeline, )



Retrieve all runs details for an organisation pipeline

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.BlueOceanApi();

var organisation = "organisation_example"; // String | Name of the organisation

var pipeline = "pipeline_example"; // String | Name of the pipeline


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getPipelineRunsByOrg(organisation, pipeline, , callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 
 **pipeline** | **String**| Name of the pipeline | 

### Return type

[**GetPipelineRuns**](GetPipelineRuns.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getPipelinesByOrg"></a>
# **getPipelinesByOrg**
> GetPipelines getPipelinesByOrg(organisation, )



Retrieve all pipelines details for an organisation

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.BlueOceanApi();

var organisation = "organisation_example"; // String | Name of the organisation


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getPipelinesByOrg(organisation, , callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 

### Return type

[**GetPipelines**](GetPipelines.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getSCM"></a>
# **getSCM**
> IojenkinsblueoceanblueoceanGithubPipelineGithubScm getSCM(organisation, step, )



Retrieve SCM details for an organisation

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.BlueOceanApi();

var organisation = "organisation_example"; // String | Name of the organisation

var step = "step_example"; // String | Name of SCM


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getSCM(organisation, step, , callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 
 **step** | **String**| Name of SCM | 

### Return type

[**IojenkinsblueoceanblueoceanGithubPipelineGithubScm**](IojenkinsblueoceanblueoceanGithubPipelineGithubScm.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getSCMOrganisationRepositories"></a>
# **getSCMOrganisationRepositories**
> GetScmOrganisations getSCMOrganisationRepositories(organisation, step, scmOrganisation, , opts)



Retrieve SCM organisation repositories details for an organisation

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.BlueOceanApi();

var organisation = "organisation_example"; // String | Name of the organisation

var step = "step_example"; // String | Name of SCM

var scmOrganisation = "scmOrganisation_example"; // String | Name of the SCM organisation

var opts = { 
  'credentialId': "credentialId_example", // String | Credential ID
  'pageSize': 56, // Number | Number of items in a page
  'pageNumber': 56 // Number | Page number
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getSCMOrganisationRepositories(organisation, step, scmOrganisation, , opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 
 **step** | **String**| Name of SCM | 
 **scmOrganisation** | **String**| Name of the SCM organisation | 
 **credentialId** | **String**| Credential ID | [optional] 
 **pageSize** | **Number**| Number of items in a page | [optional] 
 **pageNumber** | **Number**| Page number | [optional] 

### Return type

[**GetScmOrganisations**](GetScmOrganisations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getSCMOrganisationRepository"></a>
# **getSCMOrganisationRepository**
> GetScmOrganisations getSCMOrganisationRepository(organisation, step, scmOrganisation, repository, opts)



Retrieve SCM organisation repository details for an organisation

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.BlueOceanApi();

var organisation = "organisation_example"; // String | Name of the organisation

var step = "step_example"; // String | Name of SCM

var scmOrganisation = "scmOrganisation_example"; // String | Name of the SCM organisation

var repository = "repository_example"; // String | Name of the SCM repository

var opts = { 
  'credentialId': "credentialId_example" // String | Credential ID
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getSCMOrganisationRepository(organisation, step, scmOrganisation, repository, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 
 **step** | **String**| Name of SCM | 
 **scmOrganisation** | **String**| Name of the SCM organisation | 
 **repository** | **String**| Name of the SCM repository | 
 **credentialId** | **String**| Credential ID | [optional] 

### Return type

[**GetScmOrganisations**](GetScmOrganisations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getSCMOrganisations"></a>
# **getSCMOrganisations**
> GetScmOrganisations getSCMOrganisations(organisation, step, , opts)



Retrieve SCM organisations details for an organisation

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.BlueOceanApi();

var organisation = "organisation_example"; // String | Name of the organisation

var step = "step_example"; // String | Name of SCM

var opts = { 
  'credentialId': "credentialId_example" // String | Credential ID
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getSCMOrganisations(organisation, step, , opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 
 **step** | **String**| Name of SCM | 
 **credentialId** | **String**| Credential ID | [optional] 

### Return type

[**GetScmOrganisations**](GetScmOrganisations.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getUser"></a>
# **getUser**
> SwaggyjenkinsUser getUser(organisation, user)



Retrieve user details for an organisation

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.BlueOceanApi();

var organisation = "organisation_example"; // String | Name of the organisation

var user = "user_example"; // String | Name of the user


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getUser(organisation, user, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 
 **user** | **String**| Name of the user | 

### Return type

[**SwaggyjenkinsUser**](SwaggyjenkinsUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getUserFavorites"></a>
# **getUserFavorites**
> GetUserFavorites getUserFavorites(user)



Retrieve user favorites details for an organisation

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.BlueOceanApi();

var user = "user_example"; // String | Name of the user


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getUserFavorites(user, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | **String**| Name of the user | 

### Return type

[**GetUserFavorites**](GetUserFavorites.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getUsers"></a>
# **getUsers**
> SwaggyjenkinsUser getUsers(organisation, )



Retrieve users details for an organisation

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.BlueOceanApi();

var organisation = "organisation_example"; // String | Name of the organisation


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.getUsers(organisation, , callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 

### Return type

[**SwaggyjenkinsUser**](SwaggyjenkinsUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="postPipelineRunByOrg"></a>
# **postPipelineRunByOrg**
> IojenkinsblueoceanserviceembeddedrestQueueItemImpl postPipelineRunByOrg(organisation, pipeline, run)



Replay an organisation pipeline run

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.BlueOceanApi();

var organisation = "organisation_example"; // String | Name of the organisation

var pipeline = "pipeline_example"; // String | Name of the pipeline

var run = "run_example"; // String | Name of the run


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.postPipelineRunByOrg(organisation, pipeline, run, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 
 **pipeline** | **String**| Name of the pipeline | 
 **run** | **String**| Name of the run | 

### Return type

[**IojenkinsblueoceanserviceembeddedrestQueueItemImpl**](IojenkinsblueoceanserviceembeddedrestQueueItemImpl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="postPipelineRunsByOrg"></a>
# **postPipelineRunsByOrg**
> IojenkinsblueoceanserviceembeddedrestQueueItemImpl postPipelineRunsByOrg(organisation, pipeline, )



Start a build for an organisation pipeline

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.BlueOceanApi();

var organisation = "organisation_example"; // String | Name of the organisation

var pipeline = "pipeline_example"; // String | Name of the pipeline


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.postPipelineRunsByOrg(organisation, pipeline, , callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 
 **pipeline** | **String**| Name of the pipeline | 

### Return type

[**IojenkinsblueoceanserviceembeddedrestQueueItemImpl**](IojenkinsblueoceanserviceembeddedrestQueueItemImpl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="putPipelineFavoriteByOrg"></a>
# **putPipelineFavoriteByOrg**
> IojenkinsblueoceanserviceembeddedrestFavoriteImpl putPipelineFavoriteByOrg(organisation, pipeline, body)



Favorite/unfavorite a pipeline

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.BlueOceanApi();

var organisation = "organisation_example"; // String | Name of the organisation

var pipeline = "pipeline_example"; // String | Name of the pipeline

var body = new SwaggyJenkins.body(); // Body | Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.putPipelineFavoriteByOrg(organisation, pipeline, body, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 
 **pipeline** | **String**| Name of the pipeline | 
 **body** | [**Body**](body.md)| Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite | 

### Return type

[**IojenkinsblueoceanserviceembeddedrestFavoriteImpl**](IojenkinsblueoceanserviceembeddedrestFavoriteImpl.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="putPipelineRunByOrg"></a>
# **putPipelineRunByOrg**
> SwaggyjenkinsPipelineRun putPipelineRunByOrg(organisation, pipeline, run, opts)



Stop a build of an organisation pipeline

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.BlueOceanApi();

var organisation = "organisation_example"; // String | Name of the organisation

var pipeline = "pipeline_example"; // String | Name of the pipeline

var run = "run_example"; // String | Name of the run

var opts = { 
  'blocking': "blocking_example", // String | Set to true to make blocking stop, default: false
  'timeOutInSecs': 56 // Number | Timeout in seconds, default: 10 seconds
};

var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.putPipelineRunByOrg(organisation, pipeline, run, opts, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organisation** | **String**| Name of the organisation | 
 **pipeline** | **String**| Name of the pipeline | 
 **run** | **String**| Name of the run | 
 **blocking** | **String**| Set to true to make blocking stop, default: false | [optional] 
 **timeOutInSecs** | **Number**| Timeout in seconds, default: 10 seconds | [optional] 

### Return type

[**SwaggyjenkinsPipelineRun**](SwaggyjenkinsPipelineRun.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="search"></a>
# **search**
> &#39;String&#39; search(q)



Search for any resource details

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.BlueOceanApi();

var q = "q_example"; // String | Query string


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.search(q, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Query string | 

### Return type

**&#39;String&#39;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="searchClasses"></a>
# **searchClasses**
> &#39;String&#39; searchClasses(q)



Get classes details

### Example
```javascript
var SwaggyJenkins = require('swaggy_jenkins');

var apiInstance = new SwaggyJenkins.BlueOceanApi();

var q = "q_example"; // String | Query string containing an array of class names


var callback = function(error, data, response) {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
};
apiInstance.searchClasses(q, callback);
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String**| Query string containing an array of class names | 

### Return type

**&#39;String&#39;**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

