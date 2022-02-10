# openapi.api.BlueOceanApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deletePipelineQueueItem**](BlueOceanApi.md#deletepipelinequeueitem) | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | 
[**getAuthenticatedUser**](BlueOceanApi.md#getauthenticateduser) | **GET** /blue/rest/organizations/{organization}/user/ | 
[**getClasses**](BlueOceanApi.md#getclasses) | **GET** /blue/rest/classes/{class} | 
[**getJsonWebKey**](BlueOceanApi.md#getjsonwebkey) | **GET** /jwt-auth/jwks/{key} | 
[**getJsonWebToken**](BlueOceanApi.md#getjsonwebtoken) | **GET** /jwt-auth/token | 
[**getOrganisation**](BlueOceanApi.md#getorganisation) | **GET** /blue/rest/organizations/{organization} | 
[**getOrganisations**](BlueOceanApi.md#getorganisations) | **GET** /blue/rest/organizations/ | 
[**getPipeline**](BlueOceanApi.md#getpipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline} | 
[**getPipelineActivities**](BlueOceanApi.md#getpipelineactivities) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities | 
[**getPipelineBranch**](BlueOceanApi.md#getpipelinebranch) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ | 
[**getPipelineBranchRun**](BlueOceanApi.md#getpipelinebranchrun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} | 
[**getPipelineBranches**](BlueOceanApi.md#getpipelinebranches) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches | 
[**getPipelineFolder**](BlueOceanApi.md#getpipelinefolder) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/ | 
[**getPipelineFolderPipeline**](BlueOceanApi.md#getpipelinefolderpipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} | 
[**getPipelineQueue**](BlueOceanApi.md#getpipelinequeue) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue | 
[**getPipelineRun**](BlueOceanApi.md#getpipelinerun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} | 
[**getPipelineRunLog**](BlueOceanApi.md#getpipelinerunlog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log | 
[**getPipelineRunNode**](BlueOceanApi.md#getpipelinerunnode) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} | 
[**getPipelineRunNodeStep**](BlueOceanApi.md#getpipelinerunnodestep) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} | 
[**getPipelineRunNodeStepLog**](BlueOceanApi.md#getpipelinerunnodesteplog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log | 
[**getPipelineRunNodeSteps**](BlueOceanApi.md#getpipelinerunnodesteps) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps | 
[**getPipelineRunNodes**](BlueOceanApi.md#getpipelinerunnodes) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes | 
[**getPipelineRuns**](BlueOceanApi.md#getpipelineruns) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**getPipelines**](BlueOceanApi.md#getpipelines) | **GET** /blue/rest/organizations/{organization}/pipelines/ | 
[**getSCM**](BlueOceanApi.md#getscm) | **GET** /blue/rest/organizations/{organization}/scm/{scm} | 
[**getSCMOrganisationRepositories**](BlueOceanApi.md#getscmorganisationrepositories) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories | 
[**getSCMOrganisationRepository**](BlueOceanApi.md#getscmorganisationrepository) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} | 
[**getSCMOrganisations**](BlueOceanApi.md#getscmorganisations) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations | 
[**getUser**](BlueOceanApi.md#getuser) | **GET** /blue/rest/organizations/{organization}/users/{user} | 
[**getUserFavorites**](BlueOceanApi.md#getuserfavorites) | **GET** /blue/rest/users/{user}/favorites | 
[**getUsers**](BlueOceanApi.md#getusers) | **GET** /blue/rest/organizations/{organization}/users/ | 
[**postPipelineRun**](BlueOceanApi.md#postpipelinerun) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay | 
[**postPipelineRuns**](BlueOceanApi.md#postpipelineruns) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**putPipelineFavorite**](BlueOceanApi.md#putpipelinefavorite) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite | 
[**putPipelineRun**](BlueOceanApi.md#putpipelinerun) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop | 
[**search**](BlueOceanApi.md#search) | **GET** /blue/rest/search/ | 
[**searchClasses**](BlueOceanApi.md#searchclasses) | **GET** /blue/rest/classes/ | 


# **deletePipelineQueueItem**
> deletePipelineQueueItem(organization, pipeline, queue)



Delete queue item from an organization pipeline queue

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

var api_instance = new BlueOceanApi();
var organization = organization_example; // String | Name of the organization
var pipeline = pipeline_example; // String | Name of the pipeline
var queue = queue_example; // String | Name of the queue item

try {
    api_instance.deletePipelineQueueItem(organization, pipeline, queue);
} catch (e) {
    print('Exception when calling BlueOceanApi->deletePipelineQueueItem: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **pipeline** | **String**| Name of the pipeline | 
 **queue** | **String**| Name of the queue item | 

### Return type

void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAuthenticatedUser**
> User getAuthenticatedUser(organization)



Retrieve authenticated user details for an organization

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

var api_instance = new BlueOceanApi();
var organization = organization_example; // String | Name of the organization

try {
    var result = api_instance.getAuthenticatedUser(organization);
    print(result);
} catch (e) {
    print('Exception when calling BlueOceanApi->getAuthenticatedUser: $e\n');
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClasses**
> String getClasses(class_)



Get a list of class names supported by a given class

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

var api_instance = new BlueOceanApi();
var class_ = class__example; // String | Name of the class

try {
    var result = api_instance.getClasses(class_);
    print(result);
} catch (e) {
    print('Exception when calling BlueOceanApi->getClasses: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **class_** | **String**| Name of the class | 

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJsonWebKey**
> String getJsonWebKey(key)



Retrieve JSON Web Key

### Example
```dart
import 'package:openapi/api.dart';

var api_instance = new BlueOceanApi();
var key = 56; // int | Key ID received as part of JWT header field kid

try {
    var result = api_instance.getJsonWebKey(key);
    print(result);
} catch (e) {
    print('Exception when calling BlueOceanApi->getJsonWebKey: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **int**| Key ID received as part of JWT header field kid | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJsonWebToken**
> String getJsonWebToken(expiryTimeInMins, maxExpiryTimeInMins)



Retrieve JSON Web Token

### Example
```dart
import 'package:openapi/api.dart';

var api_instance = new BlueOceanApi();
var expiryTimeInMins = 56; // int | Token expiry time in minutes, default: 30 minutes
var maxExpiryTimeInMins = 56; // int | Maximum token expiry time in minutes, default: 480 minutes

try {
    var result = api_instance.getJsonWebToken(expiryTimeInMins, maxExpiryTimeInMins);
    print(result);
} catch (e) {
    print('Exception when calling BlueOceanApi->getJsonWebToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expiryTimeInMins** | **int**| Token expiry time in minutes, default: 30 minutes | [optional] 
 **maxExpiryTimeInMins** | **int**| Maximum token expiry time in minutes, default: 480 minutes | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganisation**
> Organisation getOrganisation(organization)



Retrieve organization details

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

var api_instance = new BlueOceanApi();
var organization = organization_example; // String | Name of the organization

try {
    var result = api_instance.getOrganisation(organization);
    print(result);
} catch (e) {
    print('Exception when calling BlueOceanApi->getOrganisation: $e\n');
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganisations**
> BuiltList<Organisation> getOrganisations()



Retrieve all organizations details

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

var api_instance = new BlueOceanApi();

try {
    var result = api_instance.getOrganisations();
    print(result);
} catch (e) {
    print('Exception when calling BlueOceanApi->getOrganisations: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**BuiltList<Organisation>**](Organisation.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipeline**
> Pipeline getPipeline(organization, pipeline)



Retrieve pipeline details for an organization

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

var api_instance = new BlueOceanApi();
var organization = organization_example; // String | Name of the organization
var pipeline = pipeline_example; // String | Name of the pipeline

try {
    var result = api_instance.getPipeline(organization, pipeline);
    print(result);
} catch (e) {
    print('Exception when calling BlueOceanApi->getPipeline: $e\n');
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineActivities**
> BuiltList<PipelineActivity> getPipelineActivities(organization, pipeline)



Retrieve all activities details for an organization pipeline

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

var api_instance = new BlueOceanApi();
var organization = organization_example; // String | Name of the organization
var pipeline = pipeline_example; // String | Name of the pipeline

try {
    var result = api_instance.getPipelineActivities(organization, pipeline);
    print(result);
} catch (e) {
    print('Exception when calling BlueOceanApi->getPipelineActivities: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **pipeline** | **String**| Name of the pipeline | 

### Return type

[**BuiltList<PipelineActivity>**](PipelineActivity.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineBranch**
> BranchImpl getPipelineBranch(organization, pipeline, branch)



Retrieve branch details for an organization pipeline

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

var api_instance = new BlueOceanApi();
var organization = organization_example; // String | Name of the organization
var pipeline = pipeline_example; // String | Name of the pipeline
var branch = branch_example; // String | Name of the branch

try {
    var result = api_instance.getPipelineBranch(organization, pipeline, branch);
    print(result);
} catch (e) {
    print('Exception when calling BlueOceanApi->getPipelineBranch: $e\n');
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineBranchRun**
> PipelineRun getPipelineBranchRun(organization, pipeline, branch, run)



Retrieve branch run details for an organization pipeline

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

var api_instance = new BlueOceanApi();
var organization = organization_example; // String | Name of the organization
var pipeline = pipeline_example; // String | Name of the pipeline
var branch = branch_example; // String | Name of the branch
var run = run_example; // String | Name of the run

try {
    var result = api_instance.getPipelineBranchRun(organization, pipeline, branch, run);
    print(result);
} catch (e) {
    print('Exception when calling BlueOceanApi->getPipelineBranchRun: $e\n');
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineBranches**
> MultibranchPipeline getPipelineBranches(organization, pipeline)



Retrieve all branches details for an organization pipeline

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

var api_instance = new BlueOceanApi();
var organization = organization_example; // String | Name of the organization
var pipeline = pipeline_example; // String | Name of the pipeline

try {
    var result = api_instance.getPipelineBranches(organization, pipeline);
    print(result);
} catch (e) {
    print('Exception when calling BlueOceanApi->getPipelineBranches: $e\n');
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineFolder**
> PipelineFolderImpl getPipelineFolder(organization, folder)



Retrieve pipeline folder for an organization

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

var api_instance = new BlueOceanApi();
var organization = organization_example; // String | Name of the organization
var folder = folder_example; // String | Name of the folder

try {
    var result = api_instance.getPipelineFolder(organization, folder);
    print(result);
} catch (e) {
    print('Exception when calling BlueOceanApi->getPipelineFolder: $e\n');
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineFolderPipeline**
> PipelineImpl getPipelineFolderPipeline(organization, pipeline, folder)



Retrieve pipeline details for an organization folder

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

var api_instance = new BlueOceanApi();
var organization = organization_example; // String | Name of the organization
var pipeline = pipeline_example; // String | Name of the pipeline
var folder = folder_example; // String | Name of the folder

try {
    var result = api_instance.getPipelineFolderPipeline(organization, pipeline, folder);
    print(result);
} catch (e) {
    print('Exception when calling BlueOceanApi->getPipelineFolderPipeline: $e\n');
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineQueue**
> BuiltList<QueueItemImpl> getPipelineQueue(organization, pipeline)



Retrieve queue details for an organization pipeline

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

var api_instance = new BlueOceanApi();
var organization = organization_example; // String | Name of the organization
var pipeline = pipeline_example; // String | Name of the pipeline

try {
    var result = api_instance.getPipelineQueue(organization, pipeline);
    print(result);
} catch (e) {
    print('Exception when calling BlueOceanApi->getPipelineQueue: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **pipeline** | **String**| Name of the pipeline | 

### Return type

[**BuiltList<QueueItemImpl>**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRun**
> PipelineRun getPipelineRun(organization, pipeline, run)



Retrieve run details for an organization pipeline

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

var api_instance = new BlueOceanApi();
var organization = organization_example; // String | Name of the organization
var pipeline = pipeline_example; // String | Name of the pipeline
var run = run_example; // String | Name of the run

try {
    var result = api_instance.getPipelineRun(organization, pipeline, run);
    print(result);
} catch (e) {
    print('Exception when calling BlueOceanApi->getPipelineRun: $e\n');
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRunLog**
> String getPipelineRunLog(organization, pipeline, run, start, download)



Get log for a pipeline run

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

var api_instance = new BlueOceanApi();
var organization = organization_example; // String | Name of the organization
var pipeline = pipeline_example; // String | Name of the pipeline
var run = run_example; // String | Name of the run
var start = 56; // int | Start position of the log
var download = true; // bool | Set to true in order to download the file, otherwise it's passed as a response body

try {
    var result = api_instance.getPipelineRunLog(organization, pipeline, run, start, download);
    print(result);
} catch (e) {
    print('Exception when calling BlueOceanApi->getPipelineRunLog: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **pipeline** | **String**| Name of the pipeline | 
 **run** | **String**| Name of the run | 
 **start** | **int**| Start position of the log | [optional] 
 **download** | **bool**| Set to true in order to download the file, otherwise it's passed as a response body | [optional] 

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRunNode**
> PipelineRunNode getPipelineRunNode(organization, pipeline, run, node)



Retrieve run node details for an organization pipeline

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

var api_instance = new BlueOceanApi();
var organization = organization_example; // String | Name of the organization
var pipeline = pipeline_example; // String | Name of the pipeline
var run = run_example; // String | Name of the run
var node = node_example; // String | Name of the node

try {
    var result = api_instance.getPipelineRunNode(organization, pipeline, run, node);
    print(result);
} catch (e) {
    print('Exception when calling BlueOceanApi->getPipelineRunNode: $e\n');
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRunNodeStep**
> PipelineStepImpl getPipelineRunNodeStep(organization, pipeline, run, node, step)



Retrieve run node details for an organization pipeline

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

var api_instance = new BlueOceanApi();
var organization = organization_example; // String | Name of the organization
var pipeline = pipeline_example; // String | Name of the pipeline
var run = run_example; // String | Name of the run
var node = node_example; // String | Name of the node
var step = step_example; // String | Name of the step

try {
    var result = api_instance.getPipelineRunNodeStep(organization, pipeline, run, node, step);
    print(result);
} catch (e) {
    print('Exception when calling BlueOceanApi->getPipelineRunNodeStep: $e\n');
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRunNodeStepLog**
> String getPipelineRunNodeStepLog(organization, pipeline, run, node, step)



Get log for a pipeline run node step

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

var api_instance = new BlueOceanApi();
var organization = organization_example; // String | Name of the organization
var pipeline = pipeline_example; // String | Name of the pipeline
var run = run_example; // String | Name of the run
var node = node_example; // String | Name of the node
var step = step_example; // String | Name of the step

try {
    var result = api_instance.getPipelineRunNodeStepLog(organization, pipeline, run, node, step);
    print(result);
} catch (e) {
    print('Exception when calling BlueOceanApi->getPipelineRunNodeStepLog: $e\n');
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRunNodeSteps**
> BuiltList<PipelineStepImpl> getPipelineRunNodeSteps(organization, pipeline, run, node)



Retrieve run node steps details for an organization pipeline

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

var api_instance = new BlueOceanApi();
var organization = organization_example; // String | Name of the organization
var pipeline = pipeline_example; // String | Name of the pipeline
var run = run_example; // String | Name of the run
var node = node_example; // String | Name of the node

try {
    var result = api_instance.getPipelineRunNodeSteps(organization, pipeline, run, node);
    print(result);
} catch (e) {
    print('Exception when calling BlueOceanApi->getPipelineRunNodeSteps: $e\n');
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

[**BuiltList<PipelineStepImpl>**](PipelineStepImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRunNodes**
> BuiltList<PipelineRunNode> getPipelineRunNodes(organization, pipeline, run)



Retrieve run nodes details for an organization pipeline

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

var api_instance = new BlueOceanApi();
var organization = organization_example; // String | Name of the organization
var pipeline = pipeline_example; // String | Name of the pipeline
var run = run_example; // String | Name of the run

try {
    var result = api_instance.getPipelineRunNodes(organization, pipeline, run);
    print(result);
} catch (e) {
    print('Exception when calling BlueOceanApi->getPipelineRunNodes: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **pipeline** | **String**| Name of the pipeline | 
 **run** | **String**| Name of the run | 

### Return type

[**BuiltList<PipelineRunNode>**](PipelineRunNode.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRuns**
> BuiltList<PipelineRun> getPipelineRuns(organization, pipeline)



Retrieve all runs details for an organization pipeline

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

var api_instance = new BlueOceanApi();
var organization = organization_example; // String | Name of the organization
var pipeline = pipeline_example; // String | Name of the pipeline

try {
    var result = api_instance.getPipelineRuns(organization, pipeline);
    print(result);
} catch (e) {
    print('Exception when calling BlueOceanApi->getPipelineRuns: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **pipeline** | **String**| Name of the pipeline | 

### Return type

[**BuiltList<PipelineRun>**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelines**
> BuiltList<Pipeline> getPipelines(organization)



Retrieve all pipelines details for an organization

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

var api_instance = new BlueOceanApi();
var organization = organization_example; // String | Name of the organization

try {
    var result = api_instance.getPipelines(organization);
    print(result);
} catch (e) {
    print('Exception when calling BlueOceanApi->getPipelines: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 

### Return type

[**BuiltList<Pipeline>**](Pipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSCM**
> GithubScm getSCM(organization, scm)



Retrieve SCM details for an organization

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

var api_instance = new BlueOceanApi();
var organization = organization_example; // String | Name of the organization
var scm = scm_example; // String | Name of SCM

try {
    var result = api_instance.getSCM(organization, scm);
    print(result);
} catch (e) {
    print('Exception when calling BlueOceanApi->getSCM: $e\n');
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSCMOrganisationRepositories**
> BuiltList<GithubOrganization> getSCMOrganisationRepositories(organization, scm, scmOrganisation, credentialId, pageSize, pageNumber)



Retrieve SCM organization repositories details for an organization

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

var api_instance = new BlueOceanApi();
var organization = organization_example; // String | Name of the organization
var scm = scm_example; // String | Name of SCM
var scmOrganisation = scmOrganisation_example; // String | Name of the SCM organization
var credentialId = credentialId_example; // String | Credential ID
var pageSize = 56; // int | Number of items in a page
var pageNumber = 56; // int | Page number

try {
    var result = api_instance.getSCMOrganisationRepositories(organization, scm, scmOrganisation, credentialId, pageSize, pageNumber);
    print(result);
} catch (e) {
    print('Exception when calling BlueOceanApi->getSCMOrganisationRepositories: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **scm** | **String**| Name of SCM | 
 **scmOrganisation** | **String**| Name of the SCM organization | 
 **credentialId** | **String**| Credential ID | [optional] 
 **pageSize** | **int**| Number of items in a page | [optional] 
 **pageNumber** | **int**| Page number | [optional] 

### Return type

[**BuiltList<GithubOrganization>**](GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSCMOrganisationRepository**
> BuiltList<GithubOrganization> getSCMOrganisationRepository(organization, scm, scmOrganisation, repository, credentialId)



Retrieve SCM organization repository details for an organization

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

var api_instance = new BlueOceanApi();
var organization = organization_example; // String | Name of the organization
var scm = scm_example; // String | Name of SCM
var scmOrganisation = scmOrganisation_example; // String | Name of the SCM organization
var repository = repository_example; // String | Name of the SCM repository
var credentialId = credentialId_example; // String | Credential ID

try {
    var result = api_instance.getSCMOrganisationRepository(organization, scm, scmOrganisation, repository, credentialId);
    print(result);
} catch (e) {
    print('Exception when calling BlueOceanApi->getSCMOrganisationRepository: $e\n');
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

[**BuiltList<GithubOrganization>**](GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSCMOrganisations**
> BuiltList<GithubOrganization> getSCMOrganisations(organization, scm, credentialId)



Retrieve SCM organizations details for an organization

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

var api_instance = new BlueOceanApi();
var organization = organization_example; // String | Name of the organization
var scm = scm_example; // String | Name of SCM
var credentialId = credentialId_example; // String | Credential ID

try {
    var result = api_instance.getSCMOrganisations(organization, scm, credentialId);
    print(result);
} catch (e) {
    print('Exception when calling BlueOceanApi->getSCMOrganisations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **scm** | **String**| Name of SCM | 
 **credentialId** | **String**| Credential ID | [optional] 

### Return type

[**BuiltList<GithubOrganization>**](GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUser**
> User getUser(organization, user)



Retrieve user details for an organization

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

var api_instance = new BlueOceanApi();
var organization = organization_example; // String | Name of the organization
var user = user_example; // String | Name of the user

try {
    var result = api_instance.getUser(organization, user);
    print(result);
} catch (e) {
    print('Exception when calling BlueOceanApi->getUser: $e\n');
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserFavorites**
> BuiltList<FavoriteImpl> getUserFavorites(user)



Retrieve user favorites details for an organization

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

var api_instance = new BlueOceanApi();
var user = user_example; // String | Name of the user

try {
    var result = api_instance.getUserFavorites(user);
    print(result);
} catch (e) {
    print('Exception when calling BlueOceanApi->getUserFavorites: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | **String**| Name of the user | 

### Return type

[**BuiltList<FavoriteImpl>**](FavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsers**
> User getUsers(organization)



Retrieve users details for an organization

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

var api_instance = new BlueOceanApi();
var organization = organization_example; // String | Name of the organization

try {
    var result = api_instance.getUsers(organization);
    print(result);
} catch (e) {
    print('Exception when calling BlueOceanApi->getUsers: $e\n');
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postPipelineRun**
> QueueItemImpl postPipelineRun(organization, pipeline, run)



Replay an organization pipeline run

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

var api_instance = new BlueOceanApi();
var organization = organization_example; // String | Name of the organization
var pipeline = pipeline_example; // String | Name of the pipeline
var run = run_example; // String | Name of the run

try {
    var result = api_instance.postPipelineRun(organization, pipeline, run);
    print(result);
} catch (e) {
    print('Exception when calling BlueOceanApi->postPipelineRun: $e\n');
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postPipelineRuns**
> QueueItemImpl postPipelineRuns(organization, pipeline)



Start a build for an organization pipeline

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

var api_instance = new BlueOceanApi();
var organization = organization_example; // String | Name of the organization
var pipeline = pipeline_example; // String | Name of the pipeline

try {
    var result = api_instance.postPipelineRuns(organization, pipeline);
    print(result);
} catch (e) {
    print('Exception when calling BlueOceanApi->postPipelineRuns: $e\n');
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putPipelineFavorite**
> FavoriteImpl putPipelineFavorite(organization, pipeline, UNKNOWN_BASE_TYPE)



Favorite/unfavorite a pipeline

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

var api_instance = new BlueOceanApi();
var organization = organization_example; // String | Name of the organization
var pipeline = pipeline_example; // String | Name of the pipeline
var UNKNOWN_BASE_TYPE = new UNKNOWN_BASE_TYPE(); // UNKNOWN_BASE_TYPE | Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite

try {
    var result = api_instance.putPipelineFavorite(organization, pipeline, UNKNOWN_BASE_TYPE);
    print(result);
} catch (e) {
    print('Exception when calling BlueOceanApi->putPipelineFavorite: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **pipeline** | **String**| Name of the pipeline | 
 **UNKNOWN_BASE_TYPE** | [**UNKNOWN_BASE_TYPE**](UNKNOWN_BASE_TYPE.md)| Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite | 

### Return type

[**FavoriteImpl**](FavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putPipelineRun**
> PipelineRun putPipelineRun(organization, pipeline, run, blocking, timeOutInSecs)



Stop a build of an organization pipeline

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

var api_instance = new BlueOceanApi();
var organization = organization_example; // String | Name of the organization
var pipeline = pipeline_example; // String | Name of the pipeline
var run = run_example; // String | Name of the run
var blocking = blocking_example; // String | Set to true to make blocking stop, default: false
var timeOutInSecs = 56; // int | Timeout in seconds, default: 10 seconds

try {
    var result = api_instance.putPipelineRun(organization, pipeline, run, blocking, timeOutInSecs);
    print(result);
} catch (e) {
    print('Exception when calling BlueOceanApi->putPipelineRun: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization | 
 **pipeline** | **String**| Name of the pipeline | 
 **run** | **String**| Name of the run | 
 **blocking** | **String**| Set to true to make blocking stop, default: false | [optional] 
 **timeOutInSecs** | **int**| Timeout in seconds, default: 10 seconds | [optional] 

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search**
> String search(q)



Search for any resource details

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

var api_instance = new BlueOceanApi();
var q = q_example; // String | Query string

try {
    var result = api_instance.search(q);
    print(result);
} catch (e) {
    print('Exception when calling BlueOceanApi->search: $e\n');
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchClasses**
> String searchClasses(q)



Get classes details

### Example
```dart
import 'package:openapi/api.dart';
// TODO Configure HTTP basic authorization: jenkins_auth
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').username = 'YOUR_USERNAME'
//defaultApiClient.getAuthentication<HttpBasicAuth>('jenkins_auth').password = 'YOUR_PASSWORD';

var api_instance = new BlueOceanApi();
var q = q_example; // String | Query string containing an array of class names

try {
    var result = api_instance.searchClasses(q);
    print(result);
} catch (e) {
    print('Exception when calling BlueOceanApi->searchClasses: $e\n');
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

