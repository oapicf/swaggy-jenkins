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


## Creating BlueOceanApi

To initiate an instance of `BlueOceanApi`, you can use micronaut's `ApplicationContext`:
```java
/* imports
import io.micronaut.runtime.Micronaut;
import io.micronaut.context.ApplicationContext;
import org.openapitools.api.BlueOceanApi;
*/

ApplicationContext context = Micronaut.run(/* ... */);
PetApi apiInstance = context.getBean(BlueOceanApi.class);
```

Or the `@Inject` annotation:
```java
@Singleton
class MyClass {
    @Inject
    BlueOceanApi blueOceanApi;

    /* ... use the injected variable */
}
```
Note that the class needs to be annotated with one of Micronaut's [scope annotations](https://docs.micronaut.io/latest/guide/#scopes) like `Singleton` in order to be processed.

More information can be found inside [Inversion of Control guide section](https://docs.micronaut.io/latest/guide/#ioc).

<a name="deletePipelineQueueItem"></a>
# **deletePipelineQueueItem**
```java
Mono<Void> BlueOceanApi.deletePipelineQueueItem(organizationpipelinequeue)
```



Delete queue item from an organization pipeline queue

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | `String`| Name of the organization |
 **pipeline** | `String`| Name of the pipeline |
 **queue** | `String`| Name of the queue item |




### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: Not defined

<a name="getAuthenticatedUser"></a>
# **getAuthenticatedUser**
```java
Mono<User> BlueOceanApi.getAuthenticatedUser(organization)
```



Retrieve authenticated user details for an organization

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | `String`| Name of the organization |


### Return type
[**User**](User.md)

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="getClasses"></a>
# **getClasses**
```java
Mono<String> BlueOceanApi.getClasses(propertyClass)
```



Get a list of class names supported by a given class

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **propertyClass** | `String`| Name of the class |


### Return type
`String`

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="getJsonWebKey"></a>
# **getJsonWebKey**
```java
Mono<String> BlueOceanApi.getJsonWebKey(key)
```



Retrieve JSON Web Key

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | `Integer`| Key ID received as part of JWT header field kid |


### Return type
`String`



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="getJsonWebToken"></a>
# **getJsonWebToken**
```java
Mono<String> BlueOceanApi.getJsonWebToken(expiryTimeInMinsmaxExpiryTimeInMins)
```



Retrieve JSON Web Token

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expiryTimeInMins** | `Integer`| Token expiry time in minutes, default: 30 minutes | [optional parameter]
 **maxExpiryTimeInMins** | `Integer`| Maximum token expiry time in minutes, default: 480 minutes | [optional parameter]


### Return type
`String`



### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="getOrganisation"></a>
# **getOrganisation**
```java
Mono<Organisation> BlueOceanApi.getOrganisation(organization)
```



Retrieve organization details

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | `String`| Name of the organization |


### Return type
[**Organisation**](Organisation.md)

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="getOrganisations"></a>
# **getOrganisations**
```java
Mono<List<Organisation>> BlueOceanApi.getOrganisations()
```



Retrieve all organizations details



### Return type
[**List&lt;Organisation&gt;**](Organisation.md)

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="getPipeline"></a>
# **getPipeline**
```java
Mono<Pipeline> BlueOceanApi.getPipeline(organizationpipeline)
```



Retrieve pipeline details for an organization

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | `String`| Name of the organization |
 **pipeline** | `String`| Name of the pipeline |


### Return type
[**Pipeline**](Pipeline.md)

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="getPipelineActivities"></a>
# **getPipelineActivities**
```java
Mono<List<PipelineActivity>> BlueOceanApi.getPipelineActivities(organizationpipeline)
```



Retrieve all activities details for an organization pipeline

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | `String`| Name of the organization |
 **pipeline** | `String`| Name of the pipeline |


### Return type
[**List&lt;PipelineActivity&gt;**](PipelineActivity.md)

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="getPipelineBranch"></a>
# **getPipelineBranch**
```java
Mono<BranchImpl> BlueOceanApi.getPipelineBranch(organizationpipelinebranch)
```



Retrieve branch details for an organization pipeline

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | `String`| Name of the organization |
 **pipeline** | `String`| Name of the pipeline |
 **branch** | `String`| Name of the branch |


### Return type
[**BranchImpl**](BranchImpl.md)

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="getPipelineBranchRun"></a>
# **getPipelineBranchRun**
```java
Mono<PipelineRun> BlueOceanApi.getPipelineBranchRun(organizationpipelinebranchrun)
```



Retrieve branch run details for an organization pipeline

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | `String`| Name of the organization |
 **pipeline** | `String`| Name of the pipeline |
 **branch** | `String`| Name of the branch |
 **run** | `String`| Name of the run |


### Return type
[**PipelineRun**](PipelineRun.md)

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="getPipelineBranches"></a>
# **getPipelineBranches**
```java
Mono<MultibranchPipeline> BlueOceanApi.getPipelineBranches(organizationpipeline)
```



Retrieve all branches details for an organization pipeline

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | `String`| Name of the organization |
 **pipeline** | `String`| Name of the pipeline |


### Return type
[**MultibranchPipeline**](MultibranchPipeline.md)

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="getPipelineFolder"></a>
# **getPipelineFolder**
```java
Mono<PipelineFolderImpl> BlueOceanApi.getPipelineFolder(organizationfolder)
```



Retrieve pipeline folder for an organization

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | `String`| Name of the organization |
 **folder** | `String`| Name of the folder |


### Return type
[**PipelineFolderImpl**](PipelineFolderImpl.md)

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="getPipelineFolderPipeline"></a>
# **getPipelineFolderPipeline**
```java
Mono<PipelineImpl> BlueOceanApi.getPipelineFolderPipeline(organizationpipelinefolder)
```



Retrieve pipeline details for an organization folder

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | `String`| Name of the organization |
 **pipeline** | `String`| Name of the pipeline |
 **folder** | `String`| Name of the folder |


### Return type
[**PipelineImpl**](PipelineImpl.md)

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="getPipelineQueue"></a>
# **getPipelineQueue**
```java
Mono<List<QueueItemImpl>> BlueOceanApi.getPipelineQueue(organizationpipeline)
```



Retrieve queue details for an organization pipeline

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | `String`| Name of the organization |
 **pipeline** | `String`| Name of the pipeline |


### Return type
[**List&lt;QueueItemImpl&gt;**](QueueItemImpl.md)

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="getPipelineRun"></a>
# **getPipelineRun**
```java
Mono<PipelineRun> BlueOceanApi.getPipelineRun(organizationpipelinerun)
```



Retrieve run details for an organization pipeline

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | `String`| Name of the organization |
 **pipeline** | `String`| Name of the pipeline |
 **run** | `String`| Name of the run |


### Return type
[**PipelineRun**](PipelineRun.md)

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="getPipelineRunLog"></a>
# **getPipelineRunLog**
```java
Mono<String> BlueOceanApi.getPipelineRunLog(organizationpipelinerunstartdownload)
```



Get log for a pipeline run

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | `String`| Name of the organization |
 **pipeline** | `String`| Name of the pipeline |
 **run** | `String`| Name of the run |
 **start** | `Integer`| Start position of the log | [optional parameter]
 **download** | `Boolean`| Set to true in order to download the file, otherwise it&#39;s passed as a response body | [optional parameter]


### Return type
`String`

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="getPipelineRunNode"></a>
# **getPipelineRunNode**
```java
Mono<PipelineRunNode> BlueOceanApi.getPipelineRunNode(organizationpipelinerunnode)
```



Retrieve run node details for an organization pipeline

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | `String`| Name of the organization |
 **pipeline** | `String`| Name of the pipeline |
 **run** | `String`| Name of the run |
 **node** | `String`| Name of the node |


### Return type
[**PipelineRunNode**](PipelineRunNode.md)

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="getPipelineRunNodeStep"></a>
# **getPipelineRunNodeStep**
```java
Mono<PipelineStepImpl> BlueOceanApi.getPipelineRunNodeStep(organizationpipelinerunnodestep)
```



Retrieve run node details for an organization pipeline

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | `String`| Name of the organization |
 **pipeline** | `String`| Name of the pipeline |
 **run** | `String`| Name of the run |
 **node** | `String`| Name of the node |
 **step** | `String`| Name of the step |


### Return type
[**PipelineStepImpl**](PipelineStepImpl.md)

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="getPipelineRunNodeStepLog"></a>
# **getPipelineRunNodeStepLog**
```java
Mono<String> BlueOceanApi.getPipelineRunNodeStepLog(organizationpipelinerunnodestep)
```



Get log for a pipeline run node step

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | `String`| Name of the organization |
 **pipeline** | `String`| Name of the pipeline |
 **run** | `String`| Name of the run |
 **node** | `String`| Name of the node |
 **step** | `String`| Name of the step |


### Return type
`String`

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="getPipelineRunNodeSteps"></a>
# **getPipelineRunNodeSteps**
```java
Mono<List<PipelineStepImpl>> BlueOceanApi.getPipelineRunNodeSteps(organizationpipelinerunnode)
```



Retrieve run node steps details for an organization pipeline

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | `String`| Name of the organization |
 **pipeline** | `String`| Name of the pipeline |
 **run** | `String`| Name of the run |
 **node** | `String`| Name of the node |


### Return type
[**List&lt;PipelineStepImpl&gt;**](PipelineStepImpl.md)

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="getPipelineRunNodes"></a>
# **getPipelineRunNodes**
```java
Mono<List<PipelineRunNode>> BlueOceanApi.getPipelineRunNodes(organizationpipelinerun)
```



Retrieve run nodes details for an organization pipeline

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | `String`| Name of the organization |
 **pipeline** | `String`| Name of the pipeline |
 **run** | `String`| Name of the run |


### Return type
[**List&lt;PipelineRunNode&gt;**](PipelineRunNode.md)

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="getPipelineRuns"></a>
# **getPipelineRuns**
```java
Mono<List<PipelineRun>> BlueOceanApi.getPipelineRuns(organizationpipeline)
```



Retrieve all runs details for an organization pipeline

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | `String`| Name of the organization |
 **pipeline** | `String`| Name of the pipeline |


### Return type
[**List&lt;PipelineRun&gt;**](PipelineRun.md)

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="getPipelines"></a>
# **getPipelines**
```java
Mono<List<Pipeline>> BlueOceanApi.getPipelines(organization)
```



Retrieve all pipelines details for an organization

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | `String`| Name of the organization |


### Return type
[**List&lt;Pipeline&gt;**](Pipeline.md)

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="getSCM"></a>
# **getSCM**
```java
Mono<GithubScm> BlueOceanApi.getSCM(organizationscm)
```



Retrieve SCM details for an organization

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | `String`| Name of the organization |
 **scm** | `String`| Name of SCM |


### Return type
[**GithubScm**](GithubScm.md)

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="getSCMOrganisationRepositories"></a>
# **getSCMOrganisationRepositories**
```java
Mono<List<GithubOrganization>> BlueOceanApi.getSCMOrganisationRepositories(organizationscmscmOrganisationcredentialIdpageSizepageNumber)
```



Retrieve SCM organization repositories details for an organization

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | `String`| Name of the organization |
 **scm** | `String`| Name of SCM |
 **scmOrganisation** | `String`| Name of the SCM organization |
 **credentialId** | `String`| Credential ID | [optional parameter]
 **pageSize** | `Integer`| Number of items in a page | [optional parameter]
 **pageNumber** | `Integer`| Page number | [optional parameter]


### Return type
[**List&lt;GithubOrganization&gt;**](GithubOrganization.md)

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="getSCMOrganisationRepository"></a>
# **getSCMOrganisationRepository**
```java
Mono<List<GithubOrganization>> BlueOceanApi.getSCMOrganisationRepository(organizationscmscmOrganisationrepositorycredentialId)
```



Retrieve SCM organization repository details for an organization

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | `String`| Name of the organization |
 **scm** | `String`| Name of SCM |
 **scmOrganisation** | `String`| Name of the SCM organization |
 **repository** | `String`| Name of the SCM repository |
 **credentialId** | `String`| Credential ID | [optional parameter]


### Return type
[**List&lt;GithubOrganization&gt;**](GithubOrganization.md)

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="getSCMOrganisations"></a>
# **getSCMOrganisations**
```java
Mono<List<GithubOrganization>> BlueOceanApi.getSCMOrganisations(organizationscmcredentialId)
```



Retrieve SCM organizations details for an organization

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | `String`| Name of the organization |
 **scm** | `String`| Name of SCM |
 **credentialId** | `String`| Credential ID | [optional parameter]


### Return type
[**List&lt;GithubOrganization&gt;**](GithubOrganization.md)

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="getUser"></a>
# **getUser**
```java
Mono<User> BlueOceanApi.getUser(organizationuser)
```



Retrieve user details for an organization

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | `String`| Name of the organization |
 **user** | `String`| Name of the user |


### Return type
[**User**](User.md)

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="getUserFavorites"></a>
# **getUserFavorites**
```java
Mono<List<FavoriteImpl>> BlueOceanApi.getUserFavorites(user)
```



Retrieve user favorites details for an organization

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | `String`| Name of the user |


### Return type
[**List&lt;FavoriteImpl&gt;**](FavoriteImpl.md)

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="getUsers"></a>
# **getUsers**
```java
Mono<User> BlueOceanApi.getUsers(organization)
```



Retrieve users details for an organization

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | `String`| Name of the organization |


### Return type
[**User**](User.md)

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="postPipelineRun"></a>
# **postPipelineRun**
```java
Mono<QueueItemImpl> BlueOceanApi.postPipelineRun(organizationpipelinerun)
```



Replay an organization pipeline run

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | `String`| Name of the organization |
 **pipeline** | `String`| Name of the pipeline |
 **run** | `String`| Name of the run |


### Return type
[**QueueItemImpl**](QueueItemImpl.md)

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="postPipelineRuns"></a>
# **postPipelineRuns**
```java
Mono<QueueItemImpl> BlueOceanApi.postPipelineRuns(organizationpipeline)
```



Start a build for an organization pipeline

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | `String`| Name of the organization |
 **pipeline** | `String`| Name of the pipeline |


### Return type
[**QueueItemImpl**](QueueItemImpl.md)

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="putPipelineFavorite"></a>
# **putPipelineFavorite**
```java
Mono<FavoriteImpl> BlueOceanApi.putPipelineFavorite(organizationpipelineUNKNOWN_BASE_TYPE)
```



Favorite/unfavorite a pipeline

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | `String`| Name of the organization |
 **pipeline** | `String`| Name of the pipeline |
 **UNKNOWN_BASE_TYPE** | [**UNKNOWN_BASE_TYPE**](UNKNOWN_BASE_TYPE.md)| Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite |


### Return type
[**FavoriteImpl**](FavoriteImpl.md)

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: `application/json`
 - **Accept**: `application/json`

<a name="putPipelineRun"></a>
# **putPipelineRun**
```java
Mono<PipelineRun> BlueOceanApi.putPipelineRun(organizationpipelinerunblockingtimeOutInSecs)
```



Stop a build of an organization pipeline

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | `String`| Name of the organization |
 **pipeline** | `String`| Name of the pipeline |
 **run** | `String`| Name of the run |
 **blocking** | `String`| Set to true to make blocking stop, default: false | [optional parameter]
 **timeOutInSecs** | `Integer`| Timeout in seconds, default: 10 seconds | [optional parameter]


### Return type
[**PipelineRun**](PipelineRun.md)

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="search"></a>
# **search**
```java
Mono<String> BlueOceanApi.search(q)
```



Search for any resource details

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | `String`| Query string |


### Return type
`String`

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

<a name="searchClasses"></a>
# **searchClasses**
```java
Mono<String> BlueOceanApi.searchClasses(q)
```



Get classes details

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **q** | `String`| Query string containing an array of class names |


### Return type
`String`

### Authorization
* **[jenkins_auth](auth.md#jenkins_auth)**

### HTTP request headers
 - **Content-Type**: Not defined
 - **Accept**: `application/json`

