# BlueOceanAPI

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deletePipelineQueueItem**](BlueOceanAPI.md#deletepipelinequeueitem) | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | 
[**getAuthenticatedUser**](BlueOceanAPI.md#getauthenticateduser) | **GET** /blue/rest/organizations/{organization}/user/ | 
[**getClasses**](BlueOceanAPI.md#getclasses) | **GET** /blue/rest/classes/{class} | 
[**getJsonWebKey**](BlueOceanAPI.md#getjsonwebkey) | **GET** /jwt-auth/jwks/{key} | 
[**getJsonWebToken**](BlueOceanAPI.md#getjsonwebtoken) | **GET** /jwt-auth/token | 
[**getOrganisation**](BlueOceanAPI.md#getorganisation) | **GET** /blue/rest/organizations/{organization} | 
[**getOrganisations**](BlueOceanAPI.md#getorganisations) | **GET** /blue/rest/organizations/ | 
[**getPipeline**](BlueOceanAPI.md#getpipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline} | 
[**getPipelineActivities**](BlueOceanAPI.md#getpipelineactivities) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities | 
[**getPipelineBranch**](BlueOceanAPI.md#getpipelinebranch) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ | 
[**getPipelineBranchRun**](BlueOceanAPI.md#getpipelinebranchrun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} | 
[**getPipelineBranches**](BlueOceanAPI.md#getpipelinebranches) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches | 
[**getPipelineFolder**](BlueOceanAPI.md#getpipelinefolder) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/ | 
[**getPipelineFolderPipeline**](BlueOceanAPI.md#getpipelinefolderpipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} | 
[**getPipelineQueue**](BlueOceanAPI.md#getpipelinequeue) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue | 
[**getPipelineRun**](BlueOceanAPI.md#getpipelinerun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} | 
[**getPipelineRunLog**](BlueOceanAPI.md#getpipelinerunlog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log | 
[**getPipelineRunNode**](BlueOceanAPI.md#getpipelinerunnode) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} | 
[**getPipelineRunNodeStep**](BlueOceanAPI.md#getpipelinerunnodestep) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} | 
[**getPipelineRunNodeStepLog**](BlueOceanAPI.md#getpipelinerunnodesteplog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log | 
[**getPipelineRunNodeSteps**](BlueOceanAPI.md#getpipelinerunnodesteps) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps | 
[**getPipelineRunNodes**](BlueOceanAPI.md#getpipelinerunnodes) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes | 
[**getPipelineRuns**](BlueOceanAPI.md#getpipelineruns) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**getPipelines**](BlueOceanAPI.md#getpipelines) | **GET** /blue/rest/organizations/{organization}/pipelines/ | 
[**getSCM**](BlueOceanAPI.md#getscm) | **GET** /blue/rest/organizations/{organization}/scm/{scm} | 
[**getSCMOrganisationRepositories**](BlueOceanAPI.md#getscmorganisationrepositories) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories | 
[**getSCMOrganisationRepository**](BlueOceanAPI.md#getscmorganisationrepository) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} | 
[**getSCMOrganisations**](BlueOceanAPI.md#getscmorganisations) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations | 
[**getUser**](BlueOceanAPI.md#getuser) | **GET** /blue/rest/organizations/{organization}/users/{user} | 
[**getUserFavorites**](BlueOceanAPI.md#getuserfavorites) | **GET** /blue/rest/users/{user}/favorites | 
[**getUsers**](BlueOceanAPI.md#getusers) | **GET** /blue/rest/organizations/{organization}/users/ | 
[**postPipelineRun**](BlueOceanAPI.md#postpipelinerun) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay | 
[**postPipelineRuns**](BlueOceanAPI.md#postpipelineruns) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**putPipelineFavorite**](BlueOceanAPI.md#putpipelinefavorite) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite | 
[**putPipelineRun**](BlueOceanAPI.md#putpipelinerun) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop | 
[**search**](BlueOceanAPI.md#search) | **GET** /blue/rest/search/ | 
[**searchClasses**](BlueOceanAPI.md#searchclasses) | **GET** /blue/rest/classes/ | 


# **deletePipelineQueueItem**
```swift
    open class func deletePipelineQueueItem(organization: String, pipeline: String, queue: String, completion: @escaping (_ data: Void?, _ error: Error?) -> Void)
```



Delete queue item from an organization pipeline queue

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organization = "organization_example" // String | Name of the organization
let pipeline = "pipeline_example" // String | Name of the pipeline
let queue = "queue_example" // String | Name of the queue item

BlueOceanAPI.deletePipelineQueueItem(organization: organization, pipeline: pipeline, queue: queue) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String** | Name of the organization | 
 **pipeline** | **String** | Name of the pipeline | 
 **queue** | **String** | Name of the queue item | 

### Return type

Void (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAuthenticatedUser**
```swift
    open class func getAuthenticatedUser(organization: String, completion: @escaping (_ data: User?, _ error: Error?) -> Void)
```



Retrieve authenticated user details for an organization

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organization = "organization_example" // String | Name of the organization

BlueOceanAPI.getAuthenticatedUser(organization: organization) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String** | Name of the organization | 

### Return type

[**User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClasses**
```swift
    open class func getClasses(_class: String, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```



Get a list of class names supported by a given class

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let _class = "_class_example" // String | Name of the class

BlueOceanAPI.getClasses(_class: _class) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_class** | **String** | Name of the class | 

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJsonWebKey**
```swift
    open class func getJsonWebKey(key: Int, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```



Retrieve JSON Web Key

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let key = 987 // Int | Key ID received as part of JWT header field kid

BlueOceanAPI.getJsonWebKey(key: key) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **Int** | Key ID received as part of JWT header field kid | 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getJsonWebToken**
```swift
    open class func getJsonWebToken(expiryTimeInMins: Int? = nil, maxExpiryTimeInMins: Int? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```



Retrieve JSON Web Token

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let expiryTimeInMins = 987 // Int | Token expiry time in minutes, default: 30 minutes (optional)
let maxExpiryTimeInMins = 987 // Int | Maximum token expiry time in minutes, default: 480 minutes (optional)

BlueOceanAPI.getJsonWebToken(expiryTimeInMins: expiryTimeInMins, maxExpiryTimeInMins: maxExpiryTimeInMins) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expiryTimeInMins** | **Int** | Token expiry time in minutes, default: 30 minutes | [optional] 
 **maxExpiryTimeInMins** | **Int** | Maximum token expiry time in minutes, default: 480 minutes | [optional] 

### Return type

**String**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganisation**
```swift
    open class func getOrganisation(organization: String, completion: @escaping (_ data: Organisation?, _ error: Error?) -> Void)
```



Retrieve organization details

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organization = "organization_example" // String | Name of the organization

BlueOceanAPI.getOrganisation(organization: organization) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String** | Name of the organization | 

### Return type

[**Organisation**](Organisation.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrganisations**
```swift
    open class func getOrganisations(completion: @escaping (_ data: [Organisation]?, _ error: Error?) -> Void)
```



Retrieve all organizations details

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


BlueOceanAPI.getOrganisations() { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipeline**
```swift
    open class func getPipeline(organization: String, pipeline: String, completion: @escaping (_ data: Pipeline?, _ error: Error?) -> Void)
```



Retrieve pipeline details for an organization

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organization = "organization_example" // String | Name of the organization
let pipeline = "pipeline_example" // String | Name of the pipeline

BlueOceanAPI.getPipeline(organization: organization, pipeline: pipeline) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String** | Name of the organization | 
 **pipeline** | **String** | Name of the pipeline | 

### Return type

[**Pipeline**](Pipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineActivities**
```swift
    open class func getPipelineActivities(organization: String, pipeline: String, completion: @escaping (_ data: [PipelineActivity]?, _ error: Error?) -> Void)
```



Retrieve all activities details for an organization pipeline

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organization = "organization_example" // String | Name of the organization
let pipeline = "pipeline_example" // String | Name of the pipeline

BlueOceanAPI.getPipelineActivities(organization: organization, pipeline: pipeline) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String** | Name of the organization | 
 **pipeline** | **String** | Name of the pipeline | 

### Return type

[**[PipelineActivity]**](PipelineActivity.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineBranch**
```swift
    open class func getPipelineBranch(organization: String, pipeline: String, branch: String, completion: @escaping (_ data: BranchImpl?, _ error: Error?) -> Void)
```



Retrieve branch details for an organization pipeline

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organization = "organization_example" // String | Name of the organization
let pipeline = "pipeline_example" // String | Name of the pipeline
let branch = "branch_example" // String | Name of the branch

BlueOceanAPI.getPipelineBranch(organization: organization, pipeline: pipeline, branch: branch) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String** | Name of the organization | 
 **pipeline** | **String** | Name of the pipeline | 
 **branch** | **String** | Name of the branch | 

### Return type

[**BranchImpl**](BranchImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineBranchRun**
```swift
    open class func getPipelineBranchRun(organization: String, pipeline: String, branch: String, run: String, completion: @escaping (_ data: PipelineRun?, _ error: Error?) -> Void)
```



Retrieve branch run details for an organization pipeline

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organization = "organization_example" // String | Name of the organization
let pipeline = "pipeline_example" // String | Name of the pipeline
let branch = "branch_example" // String | Name of the branch
let run = "run_example" // String | Name of the run

BlueOceanAPI.getPipelineBranchRun(organization: organization, pipeline: pipeline, branch: branch, run: run) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String** | Name of the organization | 
 **pipeline** | **String** | Name of the pipeline | 
 **branch** | **String** | Name of the branch | 
 **run** | **String** | Name of the run | 

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineBranches**
```swift
    open class func getPipelineBranches(organization: String, pipeline: String, completion: @escaping (_ data: MultibranchPipeline?, _ error: Error?) -> Void)
```



Retrieve all branches details for an organization pipeline

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organization = "organization_example" // String | Name of the organization
let pipeline = "pipeline_example" // String | Name of the pipeline

BlueOceanAPI.getPipelineBranches(organization: organization, pipeline: pipeline) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String** | Name of the organization | 
 **pipeline** | **String** | Name of the pipeline | 

### Return type

[**MultibranchPipeline**](MultibranchPipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineFolder**
```swift
    open class func getPipelineFolder(organization: String, folder: String, completion: @escaping (_ data: PipelineFolderImpl?, _ error: Error?) -> Void)
```



Retrieve pipeline folder for an organization

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organization = "organization_example" // String | Name of the organization
let folder = "folder_example" // String | Name of the folder

BlueOceanAPI.getPipelineFolder(organization: organization, folder: folder) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String** | Name of the organization | 
 **folder** | **String** | Name of the folder | 

### Return type

[**PipelineFolderImpl**](PipelineFolderImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineFolderPipeline**
```swift
    open class func getPipelineFolderPipeline(organization: String, pipeline: String, folder: String, completion: @escaping (_ data: PipelineImpl?, _ error: Error?) -> Void)
```



Retrieve pipeline details for an organization folder

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organization = "organization_example" // String | Name of the organization
let pipeline = "pipeline_example" // String | Name of the pipeline
let folder = "folder_example" // String | Name of the folder

BlueOceanAPI.getPipelineFolderPipeline(organization: organization, pipeline: pipeline, folder: folder) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String** | Name of the organization | 
 **pipeline** | **String** | Name of the pipeline | 
 **folder** | **String** | Name of the folder | 

### Return type

[**PipelineImpl**](PipelineImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineQueue**
```swift
    open class func getPipelineQueue(organization: String, pipeline: String, completion: @escaping (_ data: [QueueItemImpl]?, _ error: Error?) -> Void)
```



Retrieve queue details for an organization pipeline

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organization = "organization_example" // String | Name of the organization
let pipeline = "pipeline_example" // String | Name of the pipeline

BlueOceanAPI.getPipelineQueue(organization: organization, pipeline: pipeline) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String** | Name of the organization | 
 **pipeline** | **String** | Name of the pipeline | 

### Return type

[**[QueueItemImpl]**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRun**
```swift
    open class func getPipelineRun(organization: String, pipeline: String, run: String, completion: @escaping (_ data: PipelineRun?, _ error: Error?) -> Void)
```



Retrieve run details for an organization pipeline

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organization = "organization_example" // String | Name of the organization
let pipeline = "pipeline_example" // String | Name of the pipeline
let run = "run_example" // String | Name of the run

BlueOceanAPI.getPipelineRun(organization: organization, pipeline: pipeline, run: run) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String** | Name of the organization | 
 **pipeline** | **String** | Name of the pipeline | 
 **run** | **String** | Name of the run | 

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRunLog**
```swift
    open class func getPipelineRunLog(organization: String, pipeline: String, run: String, start: Int? = nil, download: Bool? = nil, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```



Get log for a pipeline run

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organization = "organization_example" // String | Name of the organization
let pipeline = "pipeline_example" // String | Name of the pipeline
let run = "run_example" // String | Name of the run
let start = 987 // Int | Start position of the log (optional)
let download = true // Bool | Set to true in order to download the file, otherwise it's passed as a response body (optional)

BlueOceanAPI.getPipelineRunLog(organization: organization, pipeline: pipeline, run: run, start: start, download: download) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String** | Name of the organization | 
 **pipeline** | **String** | Name of the pipeline | 
 **run** | **String** | Name of the run | 
 **start** | **Int** | Start position of the log | [optional] 
 **download** | **Bool** | Set to true in order to download the file, otherwise it&#39;s passed as a response body | [optional] 

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRunNode**
```swift
    open class func getPipelineRunNode(organization: String, pipeline: String, run: String, node: String, completion: @escaping (_ data: PipelineRunNode?, _ error: Error?) -> Void)
```



Retrieve run node details for an organization pipeline

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organization = "organization_example" // String | Name of the organization
let pipeline = "pipeline_example" // String | Name of the pipeline
let run = "run_example" // String | Name of the run
let node = "node_example" // String | Name of the node

BlueOceanAPI.getPipelineRunNode(organization: organization, pipeline: pipeline, run: run, node: node) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String** | Name of the organization | 
 **pipeline** | **String** | Name of the pipeline | 
 **run** | **String** | Name of the run | 
 **node** | **String** | Name of the node | 

### Return type

[**PipelineRunNode**](PipelineRunNode.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRunNodeStep**
```swift
    open class func getPipelineRunNodeStep(organization: String, pipeline: String, run: String, node: String, step: String, completion: @escaping (_ data: PipelineStepImpl?, _ error: Error?) -> Void)
```



Retrieve run node details for an organization pipeline

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organization = "organization_example" // String | Name of the organization
let pipeline = "pipeline_example" // String | Name of the pipeline
let run = "run_example" // String | Name of the run
let node = "node_example" // String | Name of the node
let step = "step_example" // String | Name of the step

BlueOceanAPI.getPipelineRunNodeStep(organization: organization, pipeline: pipeline, run: run, node: node, step: step) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String** | Name of the organization | 
 **pipeline** | **String** | Name of the pipeline | 
 **run** | **String** | Name of the run | 
 **node** | **String** | Name of the node | 
 **step** | **String** | Name of the step | 

### Return type

[**PipelineStepImpl**](PipelineStepImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRunNodeStepLog**
```swift
    open class func getPipelineRunNodeStepLog(organization: String, pipeline: String, run: String, node: String, step: String, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```



Get log for a pipeline run node step

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organization = "organization_example" // String | Name of the organization
let pipeline = "pipeline_example" // String | Name of the pipeline
let run = "run_example" // String | Name of the run
let node = "node_example" // String | Name of the node
let step = "step_example" // String | Name of the step

BlueOceanAPI.getPipelineRunNodeStepLog(organization: organization, pipeline: pipeline, run: run, node: node, step: step) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String** | Name of the organization | 
 **pipeline** | **String** | Name of the pipeline | 
 **run** | **String** | Name of the run | 
 **node** | **String** | Name of the node | 
 **step** | **String** | Name of the step | 

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRunNodeSteps**
```swift
    open class func getPipelineRunNodeSteps(organization: String, pipeline: String, run: String, node: String, completion: @escaping (_ data: [PipelineStepImpl]?, _ error: Error?) -> Void)
```



Retrieve run node steps details for an organization pipeline

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organization = "organization_example" // String | Name of the organization
let pipeline = "pipeline_example" // String | Name of the pipeline
let run = "run_example" // String | Name of the run
let node = "node_example" // String | Name of the node

BlueOceanAPI.getPipelineRunNodeSteps(organization: organization, pipeline: pipeline, run: run, node: node) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String** | Name of the organization | 
 **pipeline** | **String** | Name of the pipeline | 
 **run** | **String** | Name of the run | 
 **node** | **String** | Name of the node | 

### Return type

[**[PipelineStepImpl]**](PipelineStepImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRunNodes**
```swift
    open class func getPipelineRunNodes(organization: String, pipeline: String, run: String, completion: @escaping (_ data: [PipelineRunNode]?, _ error: Error?) -> Void)
```



Retrieve run nodes details for an organization pipeline

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organization = "organization_example" // String | Name of the organization
let pipeline = "pipeline_example" // String | Name of the pipeline
let run = "run_example" // String | Name of the run

BlueOceanAPI.getPipelineRunNodes(organization: organization, pipeline: pipeline, run: run) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String** | Name of the organization | 
 **pipeline** | **String** | Name of the pipeline | 
 **run** | **String** | Name of the run | 

### Return type

[**[PipelineRunNode]**](PipelineRunNode.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelineRuns**
```swift
    open class func getPipelineRuns(organization: String, pipeline: String, completion: @escaping (_ data: [PipelineRun]?, _ error: Error?) -> Void)
```



Retrieve all runs details for an organization pipeline

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organization = "organization_example" // String | Name of the organization
let pipeline = "pipeline_example" // String | Name of the pipeline

BlueOceanAPI.getPipelineRuns(organization: organization, pipeline: pipeline) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String** | Name of the organization | 
 **pipeline** | **String** | Name of the pipeline | 

### Return type

[**[PipelineRun]**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPipelines**
```swift
    open class func getPipelines(organization: String, completion: @escaping (_ data: [Pipeline]?, _ error: Error?) -> Void)
```



Retrieve all pipelines details for an organization

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organization = "organization_example" // String | Name of the organization

BlueOceanAPI.getPipelines(organization: organization) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String** | Name of the organization | 

### Return type

[**[Pipeline]**](Pipeline.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSCM**
```swift
    open class func getSCM(organization: String, scm: String, completion: @escaping (_ data: GithubScm?, _ error: Error?) -> Void)
```



Retrieve SCM details for an organization

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organization = "organization_example" // String | Name of the organization
let scm = "scm_example" // String | Name of SCM

BlueOceanAPI.getSCM(organization: organization, scm: scm) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String** | Name of the organization | 
 **scm** | **String** | Name of SCM | 

### Return type

[**GithubScm**](GithubScm.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSCMOrganisationRepositories**
```swift
    open class func getSCMOrganisationRepositories(organization: String, scm: String, scmOrganisation: String, credentialId: String? = nil, pageSize: Int? = nil, pageNumber: Int? = nil, completion: @escaping (_ data: [GithubOrganization]?, _ error: Error?) -> Void)
```



Retrieve SCM organization repositories details for an organization

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organization = "organization_example" // String | Name of the organization
let scm = "scm_example" // String | Name of SCM
let scmOrganisation = "scmOrganisation_example" // String | Name of the SCM organization
let credentialId = "credentialId_example" // String | Credential ID (optional)
let pageSize = 987 // Int | Number of items in a page (optional)
let pageNumber = 987 // Int | Page number (optional)

BlueOceanAPI.getSCMOrganisationRepositories(organization: organization, scm: scm, scmOrganisation: scmOrganisation, credentialId: credentialId, pageSize: pageSize, pageNumber: pageNumber) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String** | Name of the organization | 
 **scm** | **String** | Name of SCM | 
 **scmOrganisation** | **String** | Name of the SCM organization | 
 **credentialId** | **String** | Credential ID | [optional] 
 **pageSize** | **Int** | Number of items in a page | [optional] 
 **pageNumber** | **Int** | Page number | [optional] 

### Return type

[**[GithubOrganization]**](GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSCMOrganisationRepository**
```swift
    open class func getSCMOrganisationRepository(organization: String, scm: String, scmOrganisation: String, repository: String, credentialId: String? = nil, completion: @escaping (_ data: [GithubOrganization]?, _ error: Error?) -> Void)
```



Retrieve SCM organization repository details for an organization

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organization = "organization_example" // String | Name of the organization
let scm = "scm_example" // String | Name of SCM
let scmOrganisation = "scmOrganisation_example" // String | Name of the SCM organization
let repository = "repository_example" // String | Name of the SCM repository
let credentialId = "credentialId_example" // String | Credential ID (optional)

BlueOceanAPI.getSCMOrganisationRepository(organization: organization, scm: scm, scmOrganisation: scmOrganisation, repository: repository, credentialId: credentialId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String** | Name of the organization | 
 **scm** | **String** | Name of SCM | 
 **scmOrganisation** | **String** | Name of the SCM organization | 
 **repository** | **String** | Name of the SCM repository | 
 **credentialId** | **String** | Credential ID | [optional] 

### Return type

[**[GithubOrganization]**](GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSCMOrganisations**
```swift
    open class func getSCMOrganisations(organization: String, scm: String, credentialId: String? = nil, completion: @escaping (_ data: [GithubOrganization]?, _ error: Error?) -> Void)
```



Retrieve SCM organizations details for an organization

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organization = "organization_example" // String | Name of the organization
let scm = "scm_example" // String | Name of SCM
let credentialId = "credentialId_example" // String | Credential ID (optional)

BlueOceanAPI.getSCMOrganisations(organization: organization, scm: scm, credentialId: credentialId) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String** | Name of the organization | 
 **scm** | **String** | Name of SCM | 
 **credentialId** | **String** | Credential ID | [optional] 

### Return type

[**[GithubOrganization]**](GithubOrganization.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUser**
```swift
    open class func getUser(organization: String, user: String, completion: @escaping (_ data: User?, _ error: Error?) -> Void)
```



Retrieve user details for an organization

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organization = "organization_example" // String | Name of the organization
let user = "user_example" // String | Name of the user

BlueOceanAPI.getUser(organization: organization, user: user) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String** | Name of the organization | 
 **user** | **String** | Name of the user | 

### Return type

[**User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserFavorites**
```swift
    open class func getUserFavorites(user: String, completion: @escaping (_ data: [FavoriteImpl]?, _ error: Error?) -> Void)
```



Retrieve user favorites details for an organization

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let user = "user_example" // String | Name of the user

BlueOceanAPI.getUserFavorites(user: user) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | **String** | Name of the user | 

### Return type

[**[FavoriteImpl]**](FavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUsers**
```swift
    open class func getUsers(organization: String, completion: @escaping (_ data: User?, _ error: Error?) -> Void)
```



Retrieve users details for an organization

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organization = "organization_example" // String | Name of the organization

BlueOceanAPI.getUsers(organization: organization) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String** | Name of the organization | 

### Return type

[**User**](User.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postPipelineRun**
```swift
    open class func postPipelineRun(organization: String, pipeline: String, run: String, completion: @escaping (_ data: QueueItemImpl?, _ error: Error?) -> Void)
```



Replay an organization pipeline run

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organization = "organization_example" // String | Name of the organization
let pipeline = "pipeline_example" // String | Name of the pipeline
let run = "run_example" // String | Name of the run

BlueOceanAPI.postPipelineRun(organization: organization, pipeline: pipeline, run: run) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String** | Name of the organization | 
 **pipeline** | **String** | Name of the pipeline | 
 **run** | **String** | Name of the run | 

### Return type

[**QueueItemImpl**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postPipelineRuns**
```swift
    open class func postPipelineRuns(organization: String, pipeline: String, completion: @escaping (_ data: QueueItemImpl?, _ error: Error?) -> Void)
```



Start a build for an organization pipeline

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organization = "organization_example" // String | Name of the organization
let pipeline = "pipeline_example" // String | Name of the pipeline

BlueOceanAPI.postPipelineRuns(organization: organization, pipeline: pipeline) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String** | Name of the organization | 
 **pipeline** | **String** | Name of the pipeline | 

### Return type

[**QueueItemImpl**](QueueItemImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putPipelineFavorite**
```swift
    open class func putPipelineFavorite(organization: String, pipeline: String, UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, completion: @escaping (_ data: FavoriteImpl?, _ error: Error?) -> Void)
```



Favorite/unfavorite a pipeline

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organization = "organization_example" // String | Name of the organization
let pipeline = "pipeline_example" // String | Name of the pipeline
let UNKNOWN_BASE_TYPE = TODO // UNKNOWN_BASE_TYPE | Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite

BlueOceanAPI.putPipelineFavorite(organization: organization, pipeline: pipeline, UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String** | Name of the organization | 
 **pipeline** | **String** | Name of the pipeline | 
 **UNKNOWN_BASE_TYPE** | [**UNKNOWN_BASE_TYPE**](UNKNOWN_BASE_TYPE.md) | Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite | 

### Return type

[**FavoriteImpl**](FavoriteImpl.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putPipelineRun**
```swift
    open class func putPipelineRun(organization: String, pipeline: String, run: String, blocking: String? = nil, timeOutInSecs: Int? = nil, completion: @escaping (_ data: PipelineRun?, _ error: Error?) -> Void)
```



Stop a build of an organization pipeline

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let organization = "organization_example" // String | Name of the organization
let pipeline = "pipeline_example" // String | Name of the pipeline
let run = "run_example" // String | Name of the run
let blocking = "blocking_example" // String | Set to true to make blocking stop, default: false (optional)
let timeOutInSecs = 987 // Int | Timeout in seconds, default: 10 seconds (optional)

BlueOceanAPI.putPipelineRun(organization: organization, pipeline: pipeline, run: run, blocking: blocking, timeOutInSecs: timeOutInSecs) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String** | Name of the organization | 
 **pipeline** | **String** | Name of the pipeline | 
 **run** | **String** | Name of the run | 
 **blocking** | **String** | Set to true to make blocking stop, default: false | [optional] 
 **timeOutInSecs** | **Int** | Timeout in seconds, default: 10 seconds | [optional] 

### Return type

[**PipelineRun**](PipelineRun.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **search**
```swift
    open class func search(q: String, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```



Search for any resource details

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let q = "q_example" // String | Query string

BlueOceanAPI.search(q: q) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String** | Query string | 

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchClasses**
```swift
    open class func searchClasses(q: String, completion: @escaping (_ data: String?, _ error: Error?) -> Void)
```



Get classes details

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let q = "q_example" // String | Query string containing an array of class names

BlueOceanAPI.searchClasses(q: q) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | **String** | Query string containing an array of class names | 

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

