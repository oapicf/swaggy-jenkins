# BlueOceanController

All URIs are relative to `""`

The controller class is defined in **[BlueOceanController.java](../../src/main/java/org/openapitools/controller/BlueOceanController.java)**

Method | HTTP request | Description
------------- | ------------- | -------------
[**deletePipelineQueueItem**](#deletePipelineQueueItem) | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | 
[**getAuthenticatedUser**](#getAuthenticatedUser) | **GET** /blue/rest/organizations/{organization}/user/ | 
[**getClasses**](#getClasses) | **GET** /blue/rest/classes/{class} | 
[**getJsonWebKey**](#getJsonWebKey) | **GET** /jwt-auth/jwks/{key} | 
[**getJsonWebToken**](#getJsonWebToken) | **GET** /jwt-auth/token | 
[**getOrganisation**](#getOrganisation) | **GET** /blue/rest/organizations/{organization} | 
[**getOrganisations**](#getOrganisations) | **GET** /blue/rest/organizations/ | 
[**getPipeline**](#getPipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline} | 
[**getPipelineActivities**](#getPipelineActivities) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities | 
[**getPipelineBranch**](#getPipelineBranch) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ | 
[**getPipelineBranchRun**](#getPipelineBranchRun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} | 
[**getPipelineBranches**](#getPipelineBranches) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches | 
[**getPipelineFolder**](#getPipelineFolder) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/ | 
[**getPipelineFolderPipeline**](#getPipelineFolderPipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} | 
[**getPipelineQueue**](#getPipelineQueue) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue | 
[**getPipelineRun**](#getPipelineRun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} | 
[**getPipelineRunLog**](#getPipelineRunLog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log | 
[**getPipelineRunNode**](#getPipelineRunNode) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} | 
[**getPipelineRunNodeStep**](#getPipelineRunNodeStep) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} | 
[**getPipelineRunNodeStepLog**](#getPipelineRunNodeStepLog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log | 
[**getPipelineRunNodeSteps**](#getPipelineRunNodeSteps) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps | 
[**getPipelineRunNodes**](#getPipelineRunNodes) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes | 
[**getPipelineRuns**](#getPipelineRuns) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**getPipelines**](#getPipelines) | **GET** /blue/rest/organizations/{organization}/pipelines/ | 
[**getSCM**](#getSCM) | **GET** /blue/rest/organizations/{organization}/scm/{scm} | 
[**getSCMOrganisationRepositories**](#getSCMOrganisationRepositories) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories | 
[**getSCMOrganisationRepository**](#getSCMOrganisationRepository) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} | 
[**getSCMOrganisations**](#getSCMOrganisations) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations | 
[**getUser**](#getUser) | **GET** /blue/rest/organizations/{organization}/users/{user} | 
[**getUserFavorites**](#getUserFavorites) | **GET** /blue/rest/users/{user}/favorites | 
[**getUsers**](#getUsers) | **GET** /blue/rest/organizations/{organization}/users/ | 
[**postPipelineRun**](#postPipelineRun) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay | 
[**postPipelineRuns**](#postPipelineRuns) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**putPipelineFavorite**](#putPipelineFavorite) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite | 
[**putPipelineRun**](#putPipelineRun) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop | 
[**search**](#search) | **GET** /blue/rest/search/ | 
[**searchClasses**](#searchClasses) | **GET** /blue/rest/classes/ | 

<a name="deletePipelineQueueItem"></a>
# **deletePipelineQueueItem**
```java
Mono<Object> BlueOceanController.deletePipelineQueueItem(organizationpipelinequeue)
```



Delete queue item from an organization pipeline queue

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**organization** | `String` | Name of the organization |
**pipeline** | `String` | Name of the pipeline |
**queue** | `String` | Name of the queue item |


### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: Not defined

<a name="getAuthenticatedUser"></a>
# **getAuthenticatedUser**
```java
Mono<User> BlueOceanController.getAuthenticatedUser(organization)
```



Retrieve authenticated user details for an organization

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**organization** | `String` | Name of the organization |

### Return type
[**User**](../../docs/models/User.md)

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="getClasses"></a>
# **getClasses**
```java
Mono<String> BlueOceanController.getClasses(propertyClass)
```



Get a list of class names supported by a given class

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**propertyClass** | `String` | Name of the class |

### Return type
`String`

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="getJsonWebKey"></a>
# **getJsonWebKey**
```java
Mono<String> BlueOceanController.getJsonWebKey(key)
```



Retrieve JSON Web Key

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**key** | `Integer` | Key ID received as part of JWT header field kid |

### Return type
`String`


### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="getJsonWebToken"></a>
# **getJsonWebToken**
```java
Mono<String> BlueOceanController.getJsonWebToken(expiryTimeInMinsmaxExpiryTimeInMins)
```



Retrieve JSON Web Token

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**expiryTimeInMins** | `Integer` | Token expiry time in minutes, default: 30 minutes | [optional parameter]
**maxExpiryTimeInMins** | `Integer` | Maximum token expiry time in minutes, default: 480 minutes | [optional parameter]

### Return type
`String`


### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="getOrganisation"></a>
# **getOrganisation**
```java
Mono<Organisation> BlueOceanController.getOrganisation(organization)
```



Retrieve organization details

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**organization** | `String` | Name of the organization |

### Return type
[**Organisation**](../../docs/models/Organisation.md)

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="getOrganisations"></a>
# **getOrganisations**
```java
Mono<List<Organisation>> BlueOceanController.getOrganisations()
```



Retrieve all organizations details


### Return type
[**List&lt;Organisation&gt;**](../../docs/models/Organisation.md)

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="getPipeline"></a>
# **getPipeline**
```java
Mono<Pipeline> BlueOceanController.getPipeline(organizationpipeline)
```



Retrieve pipeline details for an organization

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**organization** | `String` | Name of the organization |
**pipeline** | `String` | Name of the pipeline |

### Return type
[**Pipeline**](../../docs/models/Pipeline.md)

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="getPipelineActivities"></a>
# **getPipelineActivities**
```java
Mono<List<PipelineActivity>> BlueOceanController.getPipelineActivities(organizationpipeline)
```



Retrieve all activities details for an organization pipeline

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**organization** | `String` | Name of the organization |
**pipeline** | `String` | Name of the pipeline |

### Return type
[**List&lt;PipelineActivity&gt;**](../../docs/models/PipelineActivity.md)

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="getPipelineBranch"></a>
# **getPipelineBranch**
```java
Mono<BranchImpl> BlueOceanController.getPipelineBranch(organizationpipelinebranch)
```



Retrieve branch details for an organization pipeline

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**organization** | `String` | Name of the organization |
**pipeline** | `String` | Name of the pipeline |
**branch** | `String` | Name of the branch |

### Return type
[**BranchImpl**](../../docs/models/BranchImpl.md)

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="getPipelineBranchRun"></a>
# **getPipelineBranchRun**
```java
Mono<PipelineRun> BlueOceanController.getPipelineBranchRun(organizationpipelinebranchrun)
```



Retrieve branch run details for an organization pipeline

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**organization** | `String` | Name of the organization |
**pipeline** | `String` | Name of the pipeline |
**branch** | `String` | Name of the branch |
**run** | `String` | Name of the run |

### Return type
[**PipelineRun**](../../docs/models/PipelineRun.md)

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="getPipelineBranches"></a>
# **getPipelineBranches**
```java
Mono<MultibranchPipeline> BlueOceanController.getPipelineBranches(organizationpipeline)
```



Retrieve all branches details for an organization pipeline

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**organization** | `String` | Name of the organization |
**pipeline** | `String` | Name of the pipeline |

### Return type
[**MultibranchPipeline**](../../docs/models/MultibranchPipeline.md)

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="getPipelineFolder"></a>
# **getPipelineFolder**
```java
Mono<PipelineFolderImpl> BlueOceanController.getPipelineFolder(organizationfolder)
```



Retrieve pipeline folder for an organization

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**organization** | `String` | Name of the organization |
**folder** | `String` | Name of the folder |

### Return type
[**PipelineFolderImpl**](../../docs/models/PipelineFolderImpl.md)

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="getPipelineFolderPipeline"></a>
# **getPipelineFolderPipeline**
```java
Mono<PipelineImpl> BlueOceanController.getPipelineFolderPipeline(organizationpipelinefolder)
```



Retrieve pipeline details for an organization folder

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**organization** | `String` | Name of the organization |
**pipeline** | `String` | Name of the pipeline |
**folder** | `String` | Name of the folder |

### Return type
[**PipelineImpl**](../../docs/models/PipelineImpl.md)

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="getPipelineQueue"></a>
# **getPipelineQueue**
```java
Mono<List<QueueItemImpl>> BlueOceanController.getPipelineQueue(organizationpipeline)
```



Retrieve queue details for an organization pipeline

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**organization** | `String` | Name of the organization |
**pipeline** | `String` | Name of the pipeline |

### Return type
[**List&lt;QueueItemImpl&gt;**](../../docs/models/QueueItemImpl.md)

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="getPipelineRun"></a>
# **getPipelineRun**
```java
Mono<PipelineRun> BlueOceanController.getPipelineRun(organizationpipelinerun)
```



Retrieve run details for an organization pipeline

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**organization** | `String` | Name of the organization |
**pipeline** | `String` | Name of the pipeline |
**run** | `String` | Name of the run |

### Return type
[**PipelineRun**](../../docs/models/PipelineRun.md)

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="getPipelineRunLog"></a>
# **getPipelineRunLog**
```java
Mono<String> BlueOceanController.getPipelineRunLog(organizationpipelinerunstartdownload)
```



Get log for a pipeline run

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**organization** | `String` | Name of the organization |
**pipeline** | `String` | Name of the pipeline |
**run** | `String` | Name of the run |
**start** | `Integer` | Start position of the log | [optional parameter]
**download** | `Boolean` | Set to true in order to download the file, otherwise it&#39;s passed as a response body | [optional parameter]

### Return type
`String`

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="getPipelineRunNode"></a>
# **getPipelineRunNode**
```java
Mono<PipelineRunNode> BlueOceanController.getPipelineRunNode(organizationpipelinerunnode)
```



Retrieve run node details for an organization pipeline

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**organization** | `String` | Name of the organization |
**pipeline** | `String` | Name of the pipeline |
**run** | `String` | Name of the run |
**node** | `String` | Name of the node |

### Return type
[**PipelineRunNode**](../../docs/models/PipelineRunNode.md)

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="getPipelineRunNodeStep"></a>
# **getPipelineRunNodeStep**
```java
Mono<PipelineStepImpl> BlueOceanController.getPipelineRunNodeStep(organizationpipelinerunnodestep)
```



Retrieve run node details for an organization pipeline

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**organization** | `String` | Name of the organization |
**pipeline** | `String` | Name of the pipeline |
**run** | `String` | Name of the run |
**node** | `String` | Name of the node |
**step** | `String` | Name of the step |

### Return type
[**PipelineStepImpl**](../../docs/models/PipelineStepImpl.md)

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="getPipelineRunNodeStepLog"></a>
# **getPipelineRunNodeStepLog**
```java
Mono<String> BlueOceanController.getPipelineRunNodeStepLog(organizationpipelinerunnodestep)
```



Get log for a pipeline run node step

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**organization** | `String` | Name of the organization |
**pipeline** | `String` | Name of the pipeline |
**run** | `String` | Name of the run |
**node** | `String` | Name of the node |
**step** | `String` | Name of the step |

### Return type
`String`

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="getPipelineRunNodeSteps"></a>
# **getPipelineRunNodeSteps**
```java
Mono<List<PipelineStepImpl>> BlueOceanController.getPipelineRunNodeSteps(organizationpipelinerunnode)
```



Retrieve run node steps details for an organization pipeline

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**organization** | `String` | Name of the organization |
**pipeline** | `String` | Name of the pipeline |
**run** | `String` | Name of the run |
**node** | `String` | Name of the node |

### Return type
[**List&lt;PipelineStepImpl&gt;**](../../docs/models/PipelineStepImpl.md)

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="getPipelineRunNodes"></a>
# **getPipelineRunNodes**
```java
Mono<List<PipelineRunNode>> BlueOceanController.getPipelineRunNodes(organizationpipelinerun)
```



Retrieve run nodes details for an organization pipeline

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**organization** | `String` | Name of the organization |
**pipeline** | `String` | Name of the pipeline |
**run** | `String` | Name of the run |

### Return type
[**List&lt;PipelineRunNode&gt;**](../../docs/models/PipelineRunNode.md)

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="getPipelineRuns"></a>
# **getPipelineRuns**
```java
Mono<List<PipelineRun>> BlueOceanController.getPipelineRuns(organizationpipeline)
```



Retrieve all runs details for an organization pipeline

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**organization** | `String` | Name of the organization |
**pipeline** | `String` | Name of the pipeline |

### Return type
[**List&lt;PipelineRun&gt;**](../../docs/models/PipelineRun.md)

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="getPipelines"></a>
# **getPipelines**
```java
Mono<List<Pipeline>> BlueOceanController.getPipelines(organization)
```



Retrieve all pipelines details for an organization

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**organization** | `String` | Name of the organization |

### Return type
[**List&lt;Pipeline&gt;**](../../docs/models/Pipeline.md)

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="getSCM"></a>
# **getSCM**
```java
Mono<GithubScm> BlueOceanController.getSCM(organizationscm)
```



Retrieve SCM details for an organization

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**organization** | `String` | Name of the organization |
**scm** | `String` | Name of SCM |

### Return type
[**GithubScm**](../../docs/models/GithubScm.md)

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="getSCMOrganisationRepositories"></a>
# **getSCMOrganisationRepositories**
```java
Mono<List<GithubOrganization>> BlueOceanController.getSCMOrganisationRepositories(organizationscmscmOrganisationcredentialIdpageSizepageNumber)
```



Retrieve SCM organization repositories details for an organization

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**organization** | `String` | Name of the organization |
**scm** | `String` | Name of SCM |
**scmOrganisation** | `String` | Name of the SCM organization |
**credentialId** | `String` | Credential ID | [optional parameter]
**pageSize** | `Integer` | Number of items in a page | [optional parameter]
**pageNumber** | `Integer` | Page number | [optional parameter]

### Return type
[**List&lt;GithubOrganization&gt;**](../../docs/models/GithubOrganization.md)

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="getSCMOrganisationRepository"></a>
# **getSCMOrganisationRepository**
```java
Mono<List<GithubOrganization>> BlueOceanController.getSCMOrganisationRepository(organizationscmscmOrganisationrepositorycredentialId)
```



Retrieve SCM organization repository details for an organization

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**organization** | `String` | Name of the organization |
**scm** | `String` | Name of SCM |
**scmOrganisation** | `String` | Name of the SCM organization |
**repository** | `String` | Name of the SCM repository |
**credentialId** | `String` | Credential ID | [optional parameter]

### Return type
[**List&lt;GithubOrganization&gt;**](../../docs/models/GithubOrganization.md)

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="getSCMOrganisations"></a>
# **getSCMOrganisations**
```java
Mono<List<GithubOrganization>> BlueOceanController.getSCMOrganisations(organizationscmcredentialId)
```



Retrieve SCM organizations details for an organization

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**organization** | `String` | Name of the organization |
**scm** | `String` | Name of SCM |
**credentialId** | `String` | Credential ID | [optional parameter]

### Return type
[**List&lt;GithubOrganization&gt;**](../../docs/models/GithubOrganization.md)

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="getUser"></a>
# **getUser**
```java
Mono<User> BlueOceanController.getUser(organizationuser)
```



Retrieve user details for an organization

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**organization** | `String` | Name of the organization |
**user** | `String` | Name of the user |

### Return type
[**User**](../../docs/models/User.md)

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="getUserFavorites"></a>
# **getUserFavorites**
```java
Mono<List<FavoriteImpl>> BlueOceanController.getUserFavorites(user)
```



Retrieve user favorites details for an organization

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**user** | `String` | Name of the user |

### Return type
[**List&lt;FavoriteImpl&gt;**](../../docs/models/FavoriteImpl.md)

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="getUsers"></a>
# **getUsers**
```java
Mono<User> BlueOceanController.getUsers(organization)
```



Retrieve users details for an organization

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**organization** | `String` | Name of the organization |

### Return type
[**User**](../../docs/models/User.md)

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="postPipelineRun"></a>
# **postPipelineRun**
```java
Mono<QueueItemImpl> BlueOceanController.postPipelineRun(organizationpipelinerun)
```



Replay an organization pipeline run

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**organization** | `String` | Name of the organization |
**pipeline** | `String` | Name of the pipeline |
**run** | `String` | Name of the run |

### Return type
[**QueueItemImpl**](../../docs/models/QueueItemImpl.md)

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="postPipelineRuns"></a>
# **postPipelineRuns**
```java
Mono<QueueItemImpl> BlueOceanController.postPipelineRuns(organizationpipeline)
```



Start a build for an organization pipeline

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**organization** | `String` | Name of the organization |
**pipeline** | `String` | Name of the pipeline |

### Return type
[**QueueItemImpl**](../../docs/models/QueueItemImpl.md)

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="putPipelineFavorite"></a>
# **putPipelineFavorite**
```java
Mono<FavoriteImpl> BlueOceanController.putPipelineFavorite(organizationpipeline_body)
```



Favorite/unfavorite a pipeline

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**organization** | `String` | Name of the organization |
**pipeline** | `String` | Name of the pipeline |
**_body** | `Boolean` | Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite |

### Return type
[**FavoriteImpl**](../../docs/models/FavoriteImpl.md)

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: `application/json`
 - **Produces Content-Type**: `application/json`

<a name="putPipelineRun"></a>
# **putPipelineRun**
```java
Mono<PipelineRun> BlueOceanController.putPipelineRun(organizationpipelinerunblockingtimeOutInSecs)
```



Stop a build of an organization pipeline

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**organization** | `String` | Name of the organization |
**pipeline** | `String` | Name of the pipeline |
**run** | `String` | Name of the run |
**blocking** | `String` | Set to true to make blocking stop, default: false | [optional parameter]
**timeOutInSecs** | `Integer` | Timeout in seconds, default: 10 seconds | [optional parameter]

### Return type
[**PipelineRun**](../../docs/models/PipelineRun.md)

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="search"></a>
# **search**
```java
Mono<String> BlueOceanController.search(q)
```



Search for any resource details

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**q** | `String` | Query string |

### Return type
`String`

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

<a name="searchClasses"></a>
# **searchClasses**
```java
Mono<String> BlueOceanController.searchClasses(q)
```



Get classes details

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**q** | `String` | Query string containing an array of class names |

### Return type
`String`

### Authorization
* **jenkins_auth**

### HTTP request headers
 - **Accepts Content-Type**: Not defined
 - **Produces Content-Type**: `application/json`

