# BlueOceanApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deletePipelineQueueItem**](BlueOceanApi.md#deletePipelineQueueItem) | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | 
[**deletePipelineQueueItemWithHttpInfo**](BlueOceanApi.md#deletePipelineQueueItemWithHttpInfo) | **DELETE** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue/{queue} | 
[**getAuthenticatedUser**](BlueOceanApi.md#getAuthenticatedUser) | **GET** /blue/rest/organizations/{organization}/user/ | 
[**getAuthenticatedUserWithHttpInfo**](BlueOceanApi.md#getAuthenticatedUserWithHttpInfo) | **GET** /blue/rest/organizations/{organization}/user/ | 
[**getClasses**](BlueOceanApi.md#getClasses) | **GET** /blue/rest/classes/{class} | 
[**getClassesWithHttpInfo**](BlueOceanApi.md#getClassesWithHttpInfo) | **GET** /blue/rest/classes/{class} | 
[**getJsonWebKey**](BlueOceanApi.md#getJsonWebKey) | **GET** /jwt-auth/jwks/{key} | 
[**getJsonWebKeyWithHttpInfo**](BlueOceanApi.md#getJsonWebKeyWithHttpInfo) | **GET** /jwt-auth/jwks/{key} | 
[**getJsonWebToken**](BlueOceanApi.md#getJsonWebToken) | **GET** /jwt-auth/token | 
[**getJsonWebTokenWithHttpInfo**](BlueOceanApi.md#getJsonWebTokenWithHttpInfo) | **GET** /jwt-auth/token | 
[**getOrganisation**](BlueOceanApi.md#getOrganisation) | **GET** /blue/rest/organizations/{organization} | 
[**getOrganisationWithHttpInfo**](BlueOceanApi.md#getOrganisationWithHttpInfo) | **GET** /blue/rest/organizations/{organization} | 
[**getOrganisations**](BlueOceanApi.md#getOrganisations) | **GET** /blue/rest/organizations/ | 
[**getOrganisationsWithHttpInfo**](BlueOceanApi.md#getOrganisationsWithHttpInfo) | **GET** /blue/rest/organizations/ | 
[**getPipeline**](BlueOceanApi.md#getPipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline} | 
[**getPipelineWithHttpInfo**](BlueOceanApi.md#getPipelineWithHttpInfo) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline} | 
[**getPipelineActivities**](BlueOceanApi.md#getPipelineActivities) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities | 
[**getPipelineActivitiesWithHttpInfo**](BlueOceanApi.md#getPipelineActivitiesWithHttpInfo) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/activities | 
[**getPipelineBranch**](BlueOceanApi.md#getPipelineBranch) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ | 
[**getPipelineBranchWithHttpInfo**](BlueOceanApi.md#getPipelineBranchWithHttpInfo) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/ | 
[**getPipelineBranchRun**](BlueOceanApi.md#getPipelineBranchRun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} | 
[**getPipelineBranchRunWithHttpInfo**](BlueOceanApi.md#getPipelineBranchRunWithHttpInfo) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches/{branch}/runs/{run} | 
[**getPipelineBranches**](BlueOceanApi.md#getPipelineBranches) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches | 
[**getPipelineBranchesWithHttpInfo**](BlueOceanApi.md#getPipelineBranchesWithHttpInfo) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/branches | 
[**getPipelineFolder**](BlueOceanApi.md#getPipelineFolder) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/ | 
[**getPipelineFolderWithHttpInfo**](BlueOceanApi.md#getPipelineFolderWithHttpInfo) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/ | 
[**getPipelineFolderPipeline**](BlueOceanApi.md#getPipelineFolderPipeline) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} | 
[**getPipelineFolderPipelineWithHttpInfo**](BlueOceanApi.md#getPipelineFolderPipelineWithHttpInfo) | **GET** /blue/rest/organizations/{organization}/pipelines/{folder}/pipelines/{pipeline} | 
[**getPipelineQueue**](BlueOceanApi.md#getPipelineQueue) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue | 
[**getPipelineQueueWithHttpInfo**](BlueOceanApi.md#getPipelineQueueWithHttpInfo) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/queue | 
[**getPipelineRun**](BlueOceanApi.md#getPipelineRun) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} | 
[**getPipelineRunWithHttpInfo**](BlueOceanApi.md#getPipelineRunWithHttpInfo) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run} | 
[**getPipelineRunLog**](BlueOceanApi.md#getPipelineRunLog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log | 
[**getPipelineRunLogWithHttpInfo**](BlueOceanApi.md#getPipelineRunLogWithHttpInfo) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/log | 
[**getPipelineRunNode**](BlueOceanApi.md#getPipelineRunNode) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} | 
[**getPipelineRunNodeWithHttpInfo**](BlueOceanApi.md#getPipelineRunNodeWithHttpInfo) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node} | 
[**getPipelineRunNodeStep**](BlueOceanApi.md#getPipelineRunNodeStep) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} | 
[**getPipelineRunNodeStepWithHttpInfo**](BlueOceanApi.md#getPipelineRunNodeStepWithHttpInfo) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step} | 
[**getPipelineRunNodeStepLog**](BlueOceanApi.md#getPipelineRunNodeStepLog) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log | 
[**getPipelineRunNodeStepLogWithHttpInfo**](BlueOceanApi.md#getPipelineRunNodeStepLogWithHttpInfo) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps/{step}/log | 
[**getPipelineRunNodeSteps**](BlueOceanApi.md#getPipelineRunNodeSteps) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps | 
[**getPipelineRunNodeStepsWithHttpInfo**](BlueOceanApi.md#getPipelineRunNodeStepsWithHttpInfo) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes/{node}/steps | 
[**getPipelineRunNodes**](BlueOceanApi.md#getPipelineRunNodes) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes | 
[**getPipelineRunNodesWithHttpInfo**](BlueOceanApi.md#getPipelineRunNodesWithHttpInfo) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/nodes | 
[**getPipelineRuns**](BlueOceanApi.md#getPipelineRuns) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**getPipelineRunsWithHttpInfo**](BlueOceanApi.md#getPipelineRunsWithHttpInfo) | **GET** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**getPipelines**](BlueOceanApi.md#getPipelines) | **GET** /blue/rest/organizations/{organization}/pipelines/ | 
[**getPipelinesWithHttpInfo**](BlueOceanApi.md#getPipelinesWithHttpInfo) | **GET** /blue/rest/organizations/{organization}/pipelines/ | 
[**getSCM**](BlueOceanApi.md#getSCM) | **GET** /blue/rest/organizations/{organization}/scm/{scm} | 
[**getSCMWithHttpInfo**](BlueOceanApi.md#getSCMWithHttpInfo) | **GET** /blue/rest/organizations/{organization}/scm/{scm} | 
[**getSCMOrganisationRepositories**](BlueOceanApi.md#getSCMOrganisationRepositories) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories | 
[**getSCMOrganisationRepositoriesWithHttpInfo**](BlueOceanApi.md#getSCMOrganisationRepositoriesWithHttpInfo) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories | 
[**getSCMOrganisationRepository**](BlueOceanApi.md#getSCMOrganisationRepository) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} | 
[**getSCMOrganisationRepositoryWithHttpInfo**](BlueOceanApi.md#getSCMOrganisationRepositoryWithHttpInfo) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations/{scmOrganisation}/repositories/{repository} | 
[**getSCMOrganisations**](BlueOceanApi.md#getSCMOrganisations) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations | 
[**getSCMOrganisationsWithHttpInfo**](BlueOceanApi.md#getSCMOrganisationsWithHttpInfo) | **GET** /blue/rest/organizations/{organization}/scm/{scm}/organizations | 
[**getUser**](BlueOceanApi.md#getUser) | **GET** /blue/rest/organizations/{organization}/users/{user} | 
[**getUserWithHttpInfo**](BlueOceanApi.md#getUserWithHttpInfo) | **GET** /blue/rest/organizations/{organization}/users/{user} | 
[**getUserFavorites**](BlueOceanApi.md#getUserFavorites) | **GET** /blue/rest/users/{user}/favorites | 
[**getUserFavoritesWithHttpInfo**](BlueOceanApi.md#getUserFavoritesWithHttpInfo) | **GET** /blue/rest/users/{user}/favorites | 
[**getUsers**](BlueOceanApi.md#getUsers) | **GET** /blue/rest/organizations/{organization}/users/ | 
[**getUsersWithHttpInfo**](BlueOceanApi.md#getUsersWithHttpInfo) | **GET** /blue/rest/organizations/{organization}/users/ | 
[**postPipelineRun**](BlueOceanApi.md#postPipelineRun) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay | 
[**postPipelineRunWithHttpInfo**](BlueOceanApi.md#postPipelineRunWithHttpInfo) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/replay | 
[**postPipelineRuns**](BlueOceanApi.md#postPipelineRuns) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**postPipelineRunsWithHttpInfo**](BlueOceanApi.md#postPipelineRunsWithHttpInfo) | **POST** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs | 
[**putPipelineFavorite**](BlueOceanApi.md#putPipelineFavorite) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite | 
[**putPipelineFavoriteWithHttpInfo**](BlueOceanApi.md#putPipelineFavoriteWithHttpInfo) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/favorite | 
[**putPipelineRun**](BlueOceanApi.md#putPipelineRun) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop | 
[**putPipelineRunWithHttpInfo**](BlueOceanApi.md#putPipelineRunWithHttpInfo) | **PUT** /blue/rest/organizations/{organization}/pipelines/{pipeline}/runs/{run}/stop | 
[**search**](BlueOceanApi.md#search) | **GET** /blue/rest/search/ | 
[**searchWithHttpInfo**](BlueOceanApi.md#searchWithHttpInfo) | **GET** /blue/rest/search/ | 
[**searchClasses**](BlueOceanApi.md#searchClasses) | **GET** /blue/rest/classes/ | 
[**searchClassesWithHttpInfo**](BlueOceanApi.md#searchClassesWithHttpInfo) | **GET** /blue/rest/classes/ | 



## deletePipelineQueueItem

> deletePipelineQueueItem(deletePipelineQueueItemRequest): ApiRequest[Unit]



Delete queue item from an organization pipeline queue

### Example

```scala
// Import classes:
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure HTTP basic authorization: jenkins_auth
    implicit val jenkins_auth: BasicCredentials = BasicCredentials("YOUR USERNAME", "YOUR PASSWORD")

    val apiInvoker = ApiInvoker()
    val apiInstance = BlueOceanApi("http://localhost")
    val organization: String = organization_example // String | Name of the organization

    val pipeline: String = pipeline_example // String | Name of the pipeline

    val queue: String = queue_example // String | Name of the queue item
    
    val request = apiInstance.deletePipelineQueueItem(organization, pipeline, queue)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling BlueOceanApi#deletePipelineQueueItem")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling BlueOceanApi#deletePipelineQueueItem")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |
 **queue** | **String**| Name of the queue item |

### Return type


ApiRequest[Unit] (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully deleted queue item |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## getAuthenticatedUser

> getAuthenticatedUser(getAuthenticatedUserRequest): ApiRequest[User]



Retrieve authenticated user details for an organization

### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure HTTP basic authorization: jenkins_auth
    implicit val jenkins_auth: BasicCredentials = BasicCredentials("YOUR USERNAME", "YOUR PASSWORD")

    val apiInvoker = ApiInvoker()
    val apiInstance = BlueOceanApi("http://localhost")
    val organization: String = organization_example // String | Name of the organization
    
    val request = apiInstance.getAuthenticatedUser(organization)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling BlueOceanApi#getAuthenticatedUser")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling BlueOceanApi#getAuthenticatedUser")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |

### Return type

ApiRequest[[**User**](User.md)]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved authenticated user details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## getClasses

> getClasses(getClassesRequest): ApiRequest[String]



Get a list of class names supported by a given class

### Example

```scala
// Import classes:
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure HTTP basic authorization: jenkins_auth
    implicit val jenkins_auth: BasicCredentials = BasicCredentials("YOUR USERNAME", "YOUR PASSWORD")

    val apiInvoker = ApiInvoker()
    val apiInstance = BlueOceanApi("http://localhost")
    val `class`: String = `class`_example // String | Name of the class
    
    val request = apiInstance.getClasses(`class`)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling BlueOceanApi#getClasses")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling BlueOceanApi#getClasses")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`class`** | **String**| Name of the class |

### Return type

ApiRequest[**String**]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved class names |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## getJsonWebKey

> getJsonWebKey(getJsonWebKeyRequest): ApiRequest[String]



Retrieve JSON Web Key

### Example

```scala
// Import classes:
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher

    val apiInvoker = ApiInvoker()
    val apiInstance = BlueOceanApi("http://localhost")
    val key: Int = 56 // Int | Key ID received as part of JWT header field kid
    
    val request = apiInstance.getJsonWebKey(key)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling BlueOceanApi#getJsonWebKey")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling BlueOceanApi#getJsonWebKey")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **key** | **Int**| Key ID received as part of JWT header field kid |

### Return type

ApiRequest[**String**]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved JWT token |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## getJsonWebToken

> getJsonWebToken(getJsonWebTokenRequest): ApiRequest[String]



Retrieve JSON Web Token

### Example

```scala
// Import classes:
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher

    val apiInvoker = ApiInvoker()
    val apiInstance = BlueOceanApi("http://localhost")
    val expiryTimeInMins: Int = 56 // Int | Token expiry time in minutes, default: 30 minutes

    val maxExpiryTimeInMins: Int = 56 // Int | Maximum token expiry time in minutes, default: 480 minutes
    
    val request = apiInstance.getJsonWebToken(expiryTimeInMins, maxExpiryTimeInMins)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling BlueOceanApi#getJsonWebToken")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling BlueOceanApi#getJsonWebToken")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expiryTimeInMins** | **Int**| Token expiry time in minutes, default: 30 minutes | [optional]
 **maxExpiryTimeInMins** | **Int**| Maximum token expiry time in minutes, default: 480 minutes | [optional]

### Return type

ApiRequest[**String**]


### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved JWT token |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## getOrganisation

> getOrganisation(getOrganisationRequest): ApiRequest[Organisation]



Retrieve organization details

### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure HTTP basic authorization: jenkins_auth
    implicit val jenkins_auth: BasicCredentials = BasicCredentials("YOUR USERNAME", "YOUR PASSWORD")

    val apiInvoker = ApiInvoker()
    val apiInstance = BlueOceanApi("http://localhost")
    val organization: String = organization_example // String | Name of the organization
    
    val request = apiInstance.getOrganisation(organization)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling BlueOceanApi#getOrganisation")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling BlueOceanApi#getOrganisation")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |

### Return type

ApiRequest[[**Organisation**](Organisation.md)]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved pipeline details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Pipeline cannot be found on Jenkins instance |  -  |


## getOrganisations

> getOrganisations(): ApiRequest[Seq[Organisation]]



Retrieve all organizations details

### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure HTTP basic authorization: jenkins_auth
    implicit val jenkins_auth: BasicCredentials = BasicCredentials("YOUR USERNAME", "YOUR PASSWORD")

    val apiInvoker = ApiInvoker()
    val apiInstance = BlueOceanApi("http://localhost")    
    val request = apiInstance.getOrganisations()
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling BlueOceanApi#getOrganisations")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling BlueOceanApi#getOrganisations")
            exception.printStackTrace();
    }
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

ApiRequest[[**Seq[Organisation]**](Organisation.md)]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved pipelines details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## getPipeline

> getPipeline(getPipelineRequest): ApiRequest[Pipeline]



Retrieve pipeline details for an organization

### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure HTTP basic authorization: jenkins_auth
    implicit val jenkins_auth: BasicCredentials = BasicCredentials("YOUR USERNAME", "YOUR PASSWORD")

    val apiInvoker = ApiInvoker()
    val apiInstance = BlueOceanApi("http://localhost")
    val organization: String = organization_example // String | Name of the organization

    val pipeline: String = pipeline_example // String | Name of the pipeline
    
    val request = apiInstance.getPipeline(organization, pipeline)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling BlueOceanApi#getPipeline")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling BlueOceanApi#getPipeline")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |

### Return type

ApiRequest[[**Pipeline**](Pipeline.md)]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved pipeline details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Pipeline cannot be found on Jenkins instance |  -  |


## getPipelineActivities

> getPipelineActivities(getPipelineActivitiesRequest): ApiRequest[Seq[PipelineActivity]]



Retrieve all activities details for an organization pipeline

### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure HTTP basic authorization: jenkins_auth
    implicit val jenkins_auth: BasicCredentials = BasicCredentials("YOUR USERNAME", "YOUR PASSWORD")

    val apiInvoker = ApiInvoker()
    val apiInstance = BlueOceanApi("http://localhost")
    val organization: String = organization_example // String | Name of the organization

    val pipeline: String = pipeline_example // String | Name of the pipeline
    
    val request = apiInstance.getPipelineActivities(organization, pipeline)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling BlueOceanApi#getPipelineActivities")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling BlueOceanApi#getPipelineActivities")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |

### Return type

ApiRequest[[**Seq[PipelineActivity]**](PipelineActivity.md)]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved all activities details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## getPipelineBranch

> getPipelineBranch(getPipelineBranchRequest): ApiRequest[BranchImpl]



Retrieve branch details for an organization pipeline

### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure HTTP basic authorization: jenkins_auth
    implicit val jenkins_auth: BasicCredentials = BasicCredentials("YOUR USERNAME", "YOUR PASSWORD")

    val apiInvoker = ApiInvoker()
    val apiInstance = BlueOceanApi("http://localhost")
    val organization: String = organization_example // String | Name of the organization

    val pipeline: String = pipeline_example // String | Name of the pipeline

    val branch: String = branch_example // String | Name of the branch
    
    val request = apiInstance.getPipelineBranch(organization, pipeline, branch)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling BlueOceanApi#getPipelineBranch")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling BlueOceanApi#getPipelineBranch")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |
 **branch** | **String**| Name of the branch |

### Return type

ApiRequest[[**BranchImpl**](BranchImpl.md)]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved branch details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## getPipelineBranchRun

> getPipelineBranchRun(getPipelineBranchRunRequest): ApiRequest[PipelineRun]



Retrieve branch run details for an organization pipeline

### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure HTTP basic authorization: jenkins_auth
    implicit val jenkins_auth: BasicCredentials = BasicCredentials("YOUR USERNAME", "YOUR PASSWORD")

    val apiInvoker = ApiInvoker()
    val apiInstance = BlueOceanApi("http://localhost")
    val organization: String = organization_example // String | Name of the organization

    val pipeline: String = pipeline_example // String | Name of the pipeline

    val branch: String = branch_example // String | Name of the branch

    val run: String = run_example // String | Name of the run
    
    val request = apiInstance.getPipelineBranchRun(organization, pipeline, branch, run)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling BlueOceanApi#getPipelineBranchRun")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling BlueOceanApi#getPipelineBranchRun")
            exception.printStackTrace();
    }
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

ApiRequest[[**PipelineRun**](PipelineRun.md)]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved run details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## getPipelineBranches

> getPipelineBranches(getPipelineBranchesRequest): ApiRequest[MultibranchPipeline]



Retrieve all branches details for an organization pipeline

### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure HTTP basic authorization: jenkins_auth
    implicit val jenkins_auth: BasicCredentials = BasicCredentials("YOUR USERNAME", "YOUR PASSWORD")

    val apiInvoker = ApiInvoker()
    val apiInstance = BlueOceanApi("http://localhost")
    val organization: String = organization_example // String | Name of the organization

    val pipeline: String = pipeline_example // String | Name of the pipeline
    
    val request = apiInstance.getPipelineBranches(organization, pipeline)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling BlueOceanApi#getPipelineBranches")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling BlueOceanApi#getPipelineBranches")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |

### Return type

ApiRequest[[**MultibranchPipeline**](MultibranchPipeline.md)]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved all branches details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## getPipelineFolder

> getPipelineFolder(getPipelineFolderRequest): ApiRequest[PipelineFolderImpl]



Retrieve pipeline folder for an organization

### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure HTTP basic authorization: jenkins_auth
    implicit val jenkins_auth: BasicCredentials = BasicCredentials("YOUR USERNAME", "YOUR PASSWORD")

    val apiInvoker = ApiInvoker()
    val apiInstance = BlueOceanApi("http://localhost")
    val organization: String = organization_example // String | Name of the organization

    val folder: String = folder_example // String | Name of the folder
    
    val request = apiInstance.getPipelineFolder(organization, folder)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling BlueOceanApi#getPipelineFolder")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling BlueOceanApi#getPipelineFolder")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **folder** | **String**| Name of the folder |

### Return type

ApiRequest[[**PipelineFolderImpl**](PipelineFolderImpl.md)]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved folder details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## getPipelineFolderPipeline

> getPipelineFolderPipeline(getPipelineFolderPipelineRequest): ApiRequest[PipelineImpl]



Retrieve pipeline details for an organization folder

### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure HTTP basic authorization: jenkins_auth
    implicit val jenkins_auth: BasicCredentials = BasicCredentials("YOUR USERNAME", "YOUR PASSWORD")

    val apiInvoker = ApiInvoker()
    val apiInstance = BlueOceanApi("http://localhost")
    val organization: String = organization_example // String | Name of the organization

    val pipeline: String = pipeline_example // String | Name of the pipeline

    val folder: String = folder_example // String | Name of the folder
    
    val request = apiInstance.getPipelineFolderPipeline(organization, pipeline, folder)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling BlueOceanApi#getPipelineFolderPipeline")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling BlueOceanApi#getPipelineFolderPipeline")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |
 **folder** | **String**| Name of the folder |

### Return type

ApiRequest[[**PipelineImpl**](PipelineImpl.md)]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved pipeline details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## getPipelineQueue

> getPipelineQueue(getPipelineQueueRequest): ApiRequest[Seq[QueueItemImpl]]



Retrieve queue details for an organization pipeline

### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure HTTP basic authorization: jenkins_auth
    implicit val jenkins_auth: BasicCredentials = BasicCredentials("YOUR USERNAME", "YOUR PASSWORD")

    val apiInvoker = ApiInvoker()
    val apiInstance = BlueOceanApi("http://localhost")
    val organization: String = organization_example // String | Name of the organization

    val pipeline: String = pipeline_example // String | Name of the pipeline
    
    val request = apiInstance.getPipelineQueue(organization, pipeline)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling BlueOceanApi#getPipelineQueue")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling BlueOceanApi#getPipelineQueue")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |

### Return type

ApiRequest[[**Seq[QueueItemImpl]**](QueueItemImpl.md)]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved queue details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## getPipelineRun

> getPipelineRun(getPipelineRunRequest): ApiRequest[PipelineRun]



Retrieve run details for an organization pipeline

### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure HTTP basic authorization: jenkins_auth
    implicit val jenkins_auth: BasicCredentials = BasicCredentials("YOUR USERNAME", "YOUR PASSWORD")

    val apiInvoker = ApiInvoker()
    val apiInstance = BlueOceanApi("http://localhost")
    val organization: String = organization_example // String | Name of the organization

    val pipeline: String = pipeline_example // String | Name of the pipeline

    val run: String = run_example // String | Name of the run
    
    val request = apiInstance.getPipelineRun(organization, pipeline, run)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling BlueOceanApi#getPipelineRun")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling BlueOceanApi#getPipelineRun")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |
 **run** | **String**| Name of the run |

### Return type

ApiRequest[[**PipelineRun**](PipelineRun.md)]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved run details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## getPipelineRunLog

> getPipelineRunLog(getPipelineRunLogRequest): ApiRequest[String]



Get log for a pipeline run

### Example

```scala
// Import classes:
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure HTTP basic authorization: jenkins_auth
    implicit val jenkins_auth: BasicCredentials = BasicCredentials("YOUR USERNAME", "YOUR PASSWORD")

    val apiInvoker = ApiInvoker()
    val apiInstance = BlueOceanApi("http://localhost")
    val organization: String = organization_example // String | Name of the organization

    val pipeline: String = pipeline_example // String | Name of the pipeline

    val run: String = run_example // String | Name of the run

    val start: Int = 56 // Int | Start position of the log

    val download: Boolean = true // Boolean | Set to true in order to download the file, otherwise it's passed as a response body
    
    val request = apiInstance.getPipelineRunLog(organization, pipeline, run, start, download)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling BlueOceanApi#getPipelineRunLog")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling BlueOceanApi#getPipelineRunLog")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |
 **run** | **String**| Name of the run |
 **start** | **Int**| Start position of the log | [optional]
 **download** | **Boolean**| Set to true in order to download the file, otherwise it&#39;s passed as a response body | [optional]

### Return type

ApiRequest[**String**]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved pipeline run log |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## getPipelineRunNode

> getPipelineRunNode(getPipelineRunNodeRequest): ApiRequest[PipelineRunNode]



Retrieve run node details for an organization pipeline

### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure HTTP basic authorization: jenkins_auth
    implicit val jenkins_auth: BasicCredentials = BasicCredentials("YOUR USERNAME", "YOUR PASSWORD")

    val apiInvoker = ApiInvoker()
    val apiInstance = BlueOceanApi("http://localhost")
    val organization: String = organization_example // String | Name of the organization

    val pipeline: String = pipeline_example // String | Name of the pipeline

    val run: String = run_example // String | Name of the run

    val node: String = node_example // String | Name of the node
    
    val request = apiInstance.getPipelineRunNode(organization, pipeline, run, node)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling BlueOceanApi#getPipelineRunNode")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling BlueOceanApi#getPipelineRunNode")
            exception.printStackTrace();
    }
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

ApiRequest[[**PipelineRunNode**](PipelineRunNode.md)]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved run node details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## getPipelineRunNodeStep

> getPipelineRunNodeStep(getPipelineRunNodeStepRequest): ApiRequest[PipelineStepImpl]



Retrieve run node details for an organization pipeline

### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure HTTP basic authorization: jenkins_auth
    implicit val jenkins_auth: BasicCredentials = BasicCredentials("YOUR USERNAME", "YOUR PASSWORD")

    val apiInvoker = ApiInvoker()
    val apiInstance = BlueOceanApi("http://localhost")
    val organization: String = organization_example // String | Name of the organization

    val pipeline: String = pipeline_example // String | Name of the pipeline

    val run: String = run_example // String | Name of the run

    val node: String = node_example // String | Name of the node

    val step: String = step_example // String | Name of the step
    
    val request = apiInstance.getPipelineRunNodeStep(organization, pipeline, run, node, step)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling BlueOceanApi#getPipelineRunNodeStep")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling BlueOceanApi#getPipelineRunNodeStep")
            exception.printStackTrace();
    }
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

ApiRequest[[**PipelineStepImpl**](PipelineStepImpl.md)]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved run node step details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## getPipelineRunNodeStepLog

> getPipelineRunNodeStepLog(getPipelineRunNodeStepLogRequest): ApiRequest[String]



Get log for a pipeline run node step

### Example

```scala
// Import classes:
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure HTTP basic authorization: jenkins_auth
    implicit val jenkins_auth: BasicCredentials = BasicCredentials("YOUR USERNAME", "YOUR PASSWORD")

    val apiInvoker = ApiInvoker()
    val apiInstance = BlueOceanApi("http://localhost")
    val organization: String = organization_example // String | Name of the organization

    val pipeline: String = pipeline_example // String | Name of the pipeline

    val run: String = run_example // String | Name of the run

    val node: String = node_example // String | Name of the node

    val step: String = step_example // String | Name of the step
    
    val request = apiInstance.getPipelineRunNodeStepLog(organization, pipeline, run, node, step)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling BlueOceanApi#getPipelineRunNodeStepLog")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling BlueOceanApi#getPipelineRunNodeStepLog")
            exception.printStackTrace();
    }
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

ApiRequest[**String**]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved pipeline run node step log |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## getPipelineRunNodeSteps

> getPipelineRunNodeSteps(getPipelineRunNodeStepsRequest): ApiRequest[Seq[PipelineStepImpl]]



Retrieve run node steps details for an organization pipeline

### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure HTTP basic authorization: jenkins_auth
    implicit val jenkins_auth: BasicCredentials = BasicCredentials("YOUR USERNAME", "YOUR PASSWORD")

    val apiInvoker = ApiInvoker()
    val apiInstance = BlueOceanApi("http://localhost")
    val organization: String = organization_example // String | Name of the organization

    val pipeline: String = pipeline_example // String | Name of the pipeline

    val run: String = run_example // String | Name of the run

    val node: String = node_example // String | Name of the node
    
    val request = apiInstance.getPipelineRunNodeSteps(organization, pipeline, run, node)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling BlueOceanApi#getPipelineRunNodeSteps")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling BlueOceanApi#getPipelineRunNodeSteps")
            exception.printStackTrace();
    }
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

ApiRequest[[**Seq[PipelineStepImpl]**](PipelineStepImpl.md)]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved run node steps details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## getPipelineRunNodes

> getPipelineRunNodes(getPipelineRunNodesRequest): ApiRequest[Seq[PipelineRunNode]]



Retrieve run nodes details for an organization pipeline

### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure HTTP basic authorization: jenkins_auth
    implicit val jenkins_auth: BasicCredentials = BasicCredentials("YOUR USERNAME", "YOUR PASSWORD")

    val apiInvoker = ApiInvoker()
    val apiInstance = BlueOceanApi("http://localhost")
    val organization: String = organization_example // String | Name of the organization

    val pipeline: String = pipeline_example // String | Name of the pipeline

    val run: String = run_example // String | Name of the run
    
    val request = apiInstance.getPipelineRunNodes(organization, pipeline, run)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling BlueOceanApi#getPipelineRunNodes")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling BlueOceanApi#getPipelineRunNodes")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |
 **run** | **String**| Name of the run |

### Return type

ApiRequest[[**Seq[PipelineRunNode]**](PipelineRunNode.md)]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved run nodes details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## getPipelineRuns

> getPipelineRuns(getPipelineRunsRequest): ApiRequest[Seq[PipelineRun]]



Retrieve all runs details for an organization pipeline

### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure HTTP basic authorization: jenkins_auth
    implicit val jenkins_auth: BasicCredentials = BasicCredentials("YOUR USERNAME", "YOUR PASSWORD")

    val apiInvoker = ApiInvoker()
    val apiInstance = BlueOceanApi("http://localhost")
    val organization: String = organization_example // String | Name of the organization

    val pipeline: String = pipeline_example // String | Name of the pipeline
    
    val request = apiInstance.getPipelineRuns(organization, pipeline)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling BlueOceanApi#getPipelineRuns")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling BlueOceanApi#getPipelineRuns")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |

### Return type

ApiRequest[[**Seq[PipelineRun]**](PipelineRun.md)]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved runs details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## getPipelines

> getPipelines(getPipelinesRequest): ApiRequest[Seq[Pipeline]]



Retrieve all pipelines details for an organization

### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure HTTP basic authorization: jenkins_auth
    implicit val jenkins_auth: BasicCredentials = BasicCredentials("YOUR USERNAME", "YOUR PASSWORD")

    val apiInvoker = ApiInvoker()
    val apiInstance = BlueOceanApi("http://localhost")
    val organization: String = organization_example // String | Name of the organization
    
    val request = apiInstance.getPipelines(organization)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling BlueOceanApi#getPipelines")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling BlueOceanApi#getPipelines")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |

### Return type

ApiRequest[[**Seq[Pipeline]**](Pipeline.md)]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved pipelines details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## getSCM

> getSCM(getSCMRequest): ApiRequest[GithubScm]



Retrieve SCM details for an organization

### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure HTTP basic authorization: jenkins_auth
    implicit val jenkins_auth: BasicCredentials = BasicCredentials("YOUR USERNAME", "YOUR PASSWORD")

    val apiInvoker = ApiInvoker()
    val apiInstance = BlueOceanApi("http://localhost")
    val organization: String = organization_example // String | Name of the organization

    val scm: String = scm_example // String | Name of SCM
    
    val request = apiInstance.getSCM(organization, scm)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling BlueOceanApi#getSCM")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling BlueOceanApi#getSCM")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **scm** | **String**| Name of SCM |

### Return type

ApiRequest[[**GithubScm**](GithubScm.md)]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved SCM details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## getSCMOrganisationRepositories

> getSCMOrganisationRepositories(getSCMOrganisationRepositoriesRequest): ApiRequest[Seq[GithubOrganization]]



Retrieve SCM organization repositories details for an organization

### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure HTTP basic authorization: jenkins_auth
    implicit val jenkins_auth: BasicCredentials = BasicCredentials("YOUR USERNAME", "YOUR PASSWORD")

    val apiInvoker = ApiInvoker()
    val apiInstance = BlueOceanApi("http://localhost")
    val organization: String = organization_example // String | Name of the organization

    val scm: String = scm_example // String | Name of SCM

    val scmOrganisation: String = scmOrganisation_example // String | Name of the SCM organization

    val credentialId: String = credentialId_example // String | Credential ID

    val pageSize: Int = 56 // Int | Number of items in a page

    val pageNumber: Int = 56 // Int | Page number
    
    val request = apiInstance.getSCMOrganisationRepositories(organization, scm, scmOrganisation, credentialId, pageSize, pageNumber)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling BlueOceanApi#getSCMOrganisationRepositories")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling BlueOceanApi#getSCMOrganisationRepositories")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **scm** | **String**| Name of SCM |
 **scmOrganisation** | **String**| Name of the SCM organization |
 **credentialId** | **String**| Credential ID | [optional]
 **pageSize** | **Int**| Number of items in a page | [optional]
 **pageNumber** | **Int**| Page number | [optional]

### Return type

ApiRequest[[**Seq[GithubOrganization]**](GithubOrganization.md)]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved SCM organization repositories details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## getSCMOrganisationRepository

> getSCMOrganisationRepository(getSCMOrganisationRepositoryRequest): ApiRequest[Seq[GithubOrganization]]



Retrieve SCM organization repository details for an organization

### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure HTTP basic authorization: jenkins_auth
    implicit val jenkins_auth: BasicCredentials = BasicCredentials("YOUR USERNAME", "YOUR PASSWORD")

    val apiInvoker = ApiInvoker()
    val apiInstance = BlueOceanApi("http://localhost")
    val organization: String = organization_example // String | Name of the organization

    val scm: String = scm_example // String | Name of SCM

    val scmOrganisation: String = scmOrganisation_example // String | Name of the SCM organization

    val repository: String = repository_example // String | Name of the SCM repository

    val credentialId: String = credentialId_example // String | Credential ID
    
    val request = apiInstance.getSCMOrganisationRepository(organization, scm, scmOrganisation, repository, credentialId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling BlueOceanApi#getSCMOrganisationRepository")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling BlueOceanApi#getSCMOrganisationRepository")
            exception.printStackTrace();
    }
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

ApiRequest[[**Seq[GithubOrganization]**](GithubOrganization.md)]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved SCM organizations details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## getSCMOrganisations

> getSCMOrganisations(getSCMOrganisationsRequest): ApiRequest[Seq[GithubOrganization]]



Retrieve SCM organizations details for an organization

### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure HTTP basic authorization: jenkins_auth
    implicit val jenkins_auth: BasicCredentials = BasicCredentials("YOUR USERNAME", "YOUR PASSWORD")

    val apiInvoker = ApiInvoker()
    val apiInstance = BlueOceanApi("http://localhost")
    val organization: String = organization_example // String | Name of the organization

    val scm: String = scm_example // String | Name of SCM

    val credentialId: String = credentialId_example // String | Credential ID
    
    val request = apiInstance.getSCMOrganisations(organization, scm, credentialId)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling BlueOceanApi#getSCMOrganisations")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling BlueOceanApi#getSCMOrganisations")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **scm** | **String**| Name of SCM |
 **credentialId** | **String**| Credential ID | [optional]

### Return type

ApiRequest[[**Seq[GithubOrganization]**](GithubOrganization.md)]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved SCM organizations details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## getUser

> getUser(getUserRequest): ApiRequest[User]



Retrieve user details for an organization

### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure HTTP basic authorization: jenkins_auth
    implicit val jenkins_auth: BasicCredentials = BasicCredentials("YOUR USERNAME", "YOUR PASSWORD")

    val apiInvoker = ApiInvoker()
    val apiInstance = BlueOceanApi("http://localhost")
    val organization: String = organization_example // String | Name of the organization

    val user: String = user_example // String | Name of the user
    
    val request = apiInstance.getUser(organization, user)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling BlueOceanApi#getUser")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling BlueOceanApi#getUser")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **user** | **String**| Name of the user |

### Return type

ApiRequest[[**User**](User.md)]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved users details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## getUserFavorites

> getUserFavorites(getUserFavoritesRequest): ApiRequest[Seq[FavoriteImpl]]



Retrieve user favorites details for an organization

### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure HTTP basic authorization: jenkins_auth
    implicit val jenkins_auth: BasicCredentials = BasicCredentials("YOUR USERNAME", "YOUR PASSWORD")

    val apiInvoker = ApiInvoker()
    val apiInstance = BlueOceanApi("http://localhost")
    val user: String = user_example // String | Name of the user
    
    val request = apiInstance.getUserFavorites(user)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling BlueOceanApi#getUserFavorites")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling BlueOceanApi#getUserFavorites")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user** | **String**| Name of the user |

### Return type

ApiRequest[[**Seq[FavoriteImpl]**](FavoriteImpl.md)]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved users favorites details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## getUsers

> getUsers(getUsersRequest): ApiRequest[User]



Retrieve users details for an organization

### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure HTTP basic authorization: jenkins_auth
    implicit val jenkins_auth: BasicCredentials = BasicCredentials("YOUR USERNAME", "YOUR PASSWORD")

    val apiInvoker = ApiInvoker()
    val apiInstance = BlueOceanApi("http://localhost")
    val organization: String = organization_example // String | Name of the organization
    
    val request = apiInstance.getUsers(organization)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling BlueOceanApi#getUsers")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling BlueOceanApi#getUsers")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |

### Return type

ApiRequest[[**User**](User.md)]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved users details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## postPipelineRun

> postPipelineRun(postPipelineRunRequest): ApiRequest[QueueItemImpl]



Replay an organization pipeline run

### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure HTTP basic authorization: jenkins_auth
    implicit val jenkins_auth: BasicCredentials = BasicCredentials("YOUR USERNAME", "YOUR PASSWORD")

    val apiInvoker = ApiInvoker()
    val apiInstance = BlueOceanApi("http://localhost")
    val organization: String = organization_example // String | Name of the organization

    val pipeline: String = pipeline_example // String | Name of the pipeline

    val run: String = run_example // String | Name of the run
    
    val request = apiInstance.postPipelineRun(organization, pipeline, run)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling BlueOceanApi#postPipelineRun")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling BlueOceanApi#postPipelineRun")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |
 **run** | **String**| Name of the run |

### Return type

ApiRequest[[**QueueItemImpl**](QueueItemImpl.md)]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully replayed a pipeline run |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## postPipelineRuns

> postPipelineRuns(postPipelineRunsRequest): ApiRequest[QueueItemImpl]



Start a build for an organization pipeline

### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure HTTP basic authorization: jenkins_auth
    implicit val jenkins_auth: BasicCredentials = BasicCredentials("YOUR USERNAME", "YOUR PASSWORD")

    val apiInvoker = ApiInvoker()
    val apiInstance = BlueOceanApi("http://localhost")
    val organization: String = organization_example // String | Name of the organization

    val pipeline: String = pipeline_example // String | Name of the pipeline
    
    val request = apiInstance.postPipelineRuns(organization, pipeline)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling BlueOceanApi#postPipelineRuns")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling BlueOceanApi#postPipelineRuns")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |

### Return type

ApiRequest[[**QueueItemImpl**](QueueItemImpl.md)]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully started a build |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## putPipelineFavorite

> putPipelineFavorite(putPipelineFavoriteRequest): ApiRequest[FavoriteImpl]



Favorite/unfavorite a pipeline

### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure HTTP basic authorization: jenkins_auth
    implicit val jenkins_auth: BasicCredentials = BasicCredentials("YOUR USERNAME", "YOUR PASSWORD")

    val apiInvoker = ApiInvoker()
    val apiInstance = BlueOceanApi("http://localhost")
    val organization: String = organization_example // String | Name of the organization

    val pipeline: String = pipeline_example // String | Name of the pipeline

    val body: Boolean = true // Boolean | Set JSON string body to {\"favorite\": true} to favorite, set value to false to unfavorite
    
    val request = apiInstance.putPipelineFavorite(organization, pipeline, body)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling BlueOceanApi#putPipelineFavorite")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling BlueOceanApi#putPipelineFavorite")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |
 **body** | **Boolean**| Set JSON string body to {\&quot;favorite\&quot;: true} to favorite, set value to false to unfavorite |

### Return type

ApiRequest[[**FavoriteImpl**](FavoriteImpl.md)]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully favorited/unfavorited a pipeline |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## putPipelineRun

> putPipelineRun(putPipelineRunRequest): ApiRequest[PipelineRun]



Stop a build of an organization pipeline

### Example

```scala
// Import classes:
import 
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure HTTP basic authorization: jenkins_auth
    implicit val jenkins_auth: BasicCredentials = BasicCredentials("YOUR USERNAME", "YOUR PASSWORD")

    val apiInvoker = ApiInvoker()
    val apiInstance = BlueOceanApi("http://localhost")
    val organization: String = organization_example // String | Name of the organization

    val pipeline: String = pipeline_example // String | Name of the pipeline

    val run: String = run_example // String | Name of the run

    val blocking: String = blocking_example // String | Set to true to make blocking stop, default: false

    val timeOutInSecs: Int = 56 // Int | Timeout in seconds, default: 10 seconds
    
    val request = apiInstance.putPipelineRun(organization, pipeline, run, blocking, timeOutInSecs)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling BlueOceanApi#putPipelineRun")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling BlueOceanApi#putPipelineRun")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **organization** | **String**| Name of the organization |
 **pipeline** | **String**| Name of the pipeline |
 **run** | **String**| Name of the run |
 **blocking** | **String**| Set to true to make blocking stop, default: false | [optional]
 **timeOutInSecs** | **Int**| Timeout in seconds, default: 10 seconds | [optional]

### Return type

ApiRequest[[**PipelineRun**](PipelineRun.md)]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully stopped a build |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## search

> search(searchRequest): ApiRequest[String]



Search for any resource details

### Example

```scala
// Import classes:
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure HTTP basic authorization: jenkins_auth
    implicit val jenkins_auth: BasicCredentials = BasicCredentials("YOUR USERNAME", "YOUR PASSWORD")

    val apiInvoker = ApiInvoker()
    val apiInstance = BlueOceanApi("http://localhost")
    val `q`: String = `q`_example // String | Query string
    
    val request = apiInstance.search(`q`)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling BlueOceanApi#search")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling BlueOceanApi#search")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`q`** | **String**| Query string |

### Return type

ApiRequest[**String**]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved search result |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## searchClasses

> searchClasses(searchClassesRequest): ApiRequest[String]



Get classes details

### Example

```scala
// Import classes:
import org.openapitools.client.core._
import org.openapitools.client.core.CollectionFormats._
import org.openapitools.client.core.ApiKeyLocations._

import akka.actor.ActorSystem
import scala.concurrent.Future
import scala.util.{Failure, Success}

object Example extends App {
    
    implicit val system: ActorSystem = ActorSystem()
    import system.dispatcher
    
    // Configure HTTP basic authorization: jenkins_auth
    implicit val jenkins_auth: BasicCredentials = BasicCredentials("YOUR USERNAME", "YOUR PASSWORD")

    val apiInvoker = ApiInvoker()
    val apiInstance = BlueOceanApi("http://localhost")
    val `q`: String = `q`_example // String | Query string containing an array of class names
    
    val request = apiInstance.searchClasses(`q`)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling BlueOceanApi#searchClasses")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling BlueOceanApi#searchClasses")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`q`** | **String**| Query string containing an array of class names |

### Return type

ApiRequest[**String**]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved search result |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |

