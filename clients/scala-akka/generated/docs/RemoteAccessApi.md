# RemoteAccessApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getComputer**](RemoteAccessApi.md#getComputer) | **GET** /computer/api/json | 
[**getComputerWithHttpInfo**](RemoteAccessApi.md#getComputerWithHttpInfo) | **GET** /computer/api/json | 
[**getJenkins**](RemoteAccessApi.md#getJenkins) | **GET** /api/json | 
[**getJenkinsWithHttpInfo**](RemoteAccessApi.md#getJenkinsWithHttpInfo) | **GET** /api/json | 
[**getJob**](RemoteAccessApi.md#getJob) | **GET** /job/{name}/api/json | 
[**getJobWithHttpInfo**](RemoteAccessApi.md#getJobWithHttpInfo) | **GET** /job/{name}/api/json | 
[**getJobConfig**](RemoteAccessApi.md#getJobConfig) | **GET** /job/{name}/config.xml | 
[**getJobConfigWithHttpInfo**](RemoteAccessApi.md#getJobConfigWithHttpInfo) | **GET** /job/{name}/config.xml | 
[**getJobLastBuild**](RemoteAccessApi.md#getJobLastBuild) | **GET** /job/{name}/lastBuild/api/json | 
[**getJobLastBuildWithHttpInfo**](RemoteAccessApi.md#getJobLastBuildWithHttpInfo) | **GET** /job/{name}/lastBuild/api/json | 
[**getJobProgressiveText**](RemoteAccessApi.md#getJobProgressiveText) | **GET** /job/{name}/{number}/logText/progressiveText | 
[**getJobProgressiveTextWithHttpInfo**](RemoteAccessApi.md#getJobProgressiveTextWithHttpInfo) | **GET** /job/{name}/{number}/logText/progressiveText | 
[**getQueue**](RemoteAccessApi.md#getQueue) | **GET** /queue/api/json | 
[**getQueueWithHttpInfo**](RemoteAccessApi.md#getQueueWithHttpInfo) | **GET** /queue/api/json | 
[**getQueueItem**](RemoteAccessApi.md#getQueueItem) | **GET** /queue/item/{number}/api/json | 
[**getQueueItemWithHttpInfo**](RemoteAccessApi.md#getQueueItemWithHttpInfo) | **GET** /queue/item/{number}/api/json | 
[**getView**](RemoteAccessApi.md#getView) | **GET** /view/{name}/api/json | 
[**getViewWithHttpInfo**](RemoteAccessApi.md#getViewWithHttpInfo) | **GET** /view/{name}/api/json | 
[**getViewConfig**](RemoteAccessApi.md#getViewConfig) | **GET** /view/{name}/config.xml | 
[**getViewConfigWithHttpInfo**](RemoteAccessApi.md#getViewConfigWithHttpInfo) | **GET** /view/{name}/config.xml | 
[**headJenkins**](RemoteAccessApi.md#headJenkins) | **HEAD** /api/json | 
[**headJenkinsWithHttpInfo**](RemoteAccessApi.md#headJenkinsWithHttpInfo) | **HEAD** /api/json | 
[**postCreateItem**](RemoteAccessApi.md#postCreateItem) | **POST** /createItem | 
[**postCreateItemWithHttpInfo**](RemoteAccessApi.md#postCreateItemWithHttpInfo) | **POST** /createItem | 
[**postCreateView**](RemoteAccessApi.md#postCreateView) | **POST** /createView | 
[**postCreateViewWithHttpInfo**](RemoteAccessApi.md#postCreateViewWithHttpInfo) | **POST** /createView | 
[**postJobBuild**](RemoteAccessApi.md#postJobBuild) | **POST** /job/{name}/build | 
[**postJobBuildWithHttpInfo**](RemoteAccessApi.md#postJobBuildWithHttpInfo) | **POST** /job/{name}/build | 
[**postJobConfig**](RemoteAccessApi.md#postJobConfig) | **POST** /job/{name}/config.xml | 
[**postJobConfigWithHttpInfo**](RemoteAccessApi.md#postJobConfigWithHttpInfo) | **POST** /job/{name}/config.xml | 
[**postJobDelete**](RemoteAccessApi.md#postJobDelete) | **POST** /job/{name}/doDelete | 
[**postJobDeleteWithHttpInfo**](RemoteAccessApi.md#postJobDeleteWithHttpInfo) | **POST** /job/{name}/doDelete | 
[**postJobDisable**](RemoteAccessApi.md#postJobDisable) | **POST** /job/{name}/disable | 
[**postJobDisableWithHttpInfo**](RemoteAccessApi.md#postJobDisableWithHttpInfo) | **POST** /job/{name}/disable | 
[**postJobEnable**](RemoteAccessApi.md#postJobEnable) | **POST** /job/{name}/enable | 
[**postJobEnableWithHttpInfo**](RemoteAccessApi.md#postJobEnableWithHttpInfo) | **POST** /job/{name}/enable | 
[**postJobLastBuildStop**](RemoteAccessApi.md#postJobLastBuildStop) | **POST** /job/{name}/lastBuild/stop | 
[**postJobLastBuildStopWithHttpInfo**](RemoteAccessApi.md#postJobLastBuildStopWithHttpInfo) | **POST** /job/{name}/lastBuild/stop | 
[**postViewConfig**](RemoteAccessApi.md#postViewConfig) | **POST** /view/{name}/config.xml | 
[**postViewConfigWithHttpInfo**](RemoteAccessApi.md#postViewConfigWithHttpInfo) | **POST** /view/{name}/config.xml | 



## getComputer

> getComputer(getComputerRequest): ApiRequest[ComputerSet]



Retrieve computer details

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
    val apiInstance = RemoteAccessApi("http://localhost")
    val depth: Int = 56 // Int | Recursion depth in response model
    
    val request = apiInstance.getComputer(depth)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling RemoteAccessApi#getComputer")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling RemoteAccessApi#getComputer")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **depth** | **Int**| Recursion depth in response model |

### Return type

ApiRequest[[**ComputerSet**](ComputerSet.md)]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved computer details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## getJenkins

> getJenkins(): ApiRequest[Hudson]



Retrieve Jenkins details

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
    val apiInstance = RemoteAccessApi("http://localhost")    
    val request = apiInstance.getJenkins()
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling RemoteAccessApi#getJenkins")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling RemoteAccessApi#getJenkins")
            exception.printStackTrace();
    }
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

ApiRequest[[**Hudson**](Hudson.md)]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved Jenkins details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## getJob

> getJob(getJobRequest): ApiRequest[FreeStyleProject]



Retrieve job details

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
    val apiInstance = RemoteAccessApi("http://localhost")
    val name: String = name_example // String | Name of the job
    
    val request = apiInstance.getJob(name)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling RemoteAccessApi#getJob")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling RemoteAccessApi#getJob")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job |

### Return type

ApiRequest[[**FreeStyleProject**](FreeStyleProject.md)]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved job details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Job cannot be found on Jenkins instance |  -  |


## getJobConfig

> getJobConfig(getJobConfigRequest): ApiRequest[String]



Retrieve job configuration

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
    val apiInstance = RemoteAccessApi("http://localhost")
    val name: String = name_example // String | Name of the job
    
    val request = apiInstance.getJobConfig(name)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling RemoteAccessApi#getJobConfig")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling RemoteAccessApi#getJobConfig")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job |

### Return type

ApiRequest[**String**]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/xml

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved job configuration in config.xml format |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Job cannot be found on Jenkins instance |  -  |


## getJobLastBuild

> getJobLastBuild(getJobLastBuildRequest): ApiRequest[FreeStyleBuild]



Retrieve job&#39;s last build details

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
    val apiInstance = RemoteAccessApi("http://localhost")
    val name: String = name_example // String | Name of the job
    
    val request = apiInstance.getJobLastBuild(name)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling RemoteAccessApi#getJobLastBuild")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling RemoteAccessApi#getJobLastBuild")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job |

### Return type

ApiRequest[[**FreeStyleBuild**](FreeStyleBuild.md)]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved job&#39;s last build details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Job cannot be found on Jenkins instance |  -  |


## getJobProgressiveText

> getJobProgressiveText(getJobProgressiveTextRequest): ApiRequest[Unit]



Retrieve job&#39;s build progressive text output

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
    val apiInstance = RemoteAccessApi("http://localhost")
    val name: String = name_example // String | Name of the job

    val number: String = number_example // String | Build number

    val start: String = start_example // String | Starting point of progressive text output
    
    val request = apiInstance.getJobProgressiveText(name, number, start)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling RemoteAccessApi#getJobProgressiveText")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling RemoteAccessApi#getJobProgressiveText")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job |
 **number** | **String**| Build number |
 **start** | **String**| Starting point of progressive text output |

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
| **200** | Successfully retrieved job&#39;s build progressive text output |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Job cannot be found on Jenkins instance |  -  |


## getQueue

> getQueue(): ApiRequest[Queue]



Retrieve queue details

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
    val apiInstance = RemoteAccessApi("http://localhost")    
    val request = apiInstance.getQueue()
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling RemoteAccessApi#getQueue")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling RemoteAccessApi#getQueue")
            exception.printStackTrace();
    }
}
```

### Parameters

This endpoint does not need any parameter.

### Return type

ApiRequest[[**Queue**](Queue.md)]


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


## getQueueItem

> getQueueItem(getQueueItemRequest): ApiRequest[Queue]



Retrieve queued item details

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
    val apiInstance = RemoteAccessApi("http://localhost")
    val number: String = number_example // String | Queue number
    
    val request = apiInstance.getQueueItem(number)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling RemoteAccessApi#getQueueItem")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling RemoteAccessApi#getQueueItem")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **String**| Queue number |

### Return type

ApiRequest[[**Queue**](Queue.md)]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved queued item details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## getView

> getView(getViewRequest): ApiRequest[ListView]



Retrieve view details

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
    val apiInstance = RemoteAccessApi("http://localhost")
    val name: String = name_example // String | Name of the view
    
    val request = apiInstance.getView(name)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling RemoteAccessApi#getView")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling RemoteAccessApi#getView")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the view |

### Return type

ApiRequest[[**ListView**](ListView.md)]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved view details |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | View cannot be found on Jenkins instance |  -  |


## getViewConfig

> getViewConfig(getViewConfigRequest): ApiRequest[String]



Retrieve view configuration

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
    val apiInstance = RemoteAccessApi("http://localhost")
    val name: String = name_example // String | Name of the view
    
    val request = apiInstance.getViewConfig(name)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
            System.out.println(s"Response body: $content")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling RemoteAccessApi#getViewConfig")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling RemoteAccessApi#getViewConfig")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the view |

### Return type

ApiRequest[**String**]


### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/xml

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved view configuration in config.xml format |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | View cannot be found on Jenkins instance |  -  |


## headJenkins

> headJenkins(): ApiRequest[Unit]



Retrieve Jenkins headers

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
    val apiInstance = RemoteAccessApi("http://localhost")    
    val request = apiInstance.headJenkins()
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling RemoteAccessApi#headJenkins")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling RemoteAccessApi#headJenkins")
            exception.printStackTrace();
    }
}
```

### Parameters

This endpoint does not need any parameter.

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
| **200** | Successfully retrieved Jenkins headers |  * x-jenkins - Jenkins version number <br>  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## postCreateItem

> postCreateItem(postCreateItemRequest): ApiRequest[Unit]



Create a new job using job configuration, or copied from an existing job

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
    val apiInstance = RemoteAccessApi("http://localhost")
    val name: String = name_example // String | Name of the new job

    val from: String = from_example // String | Existing job to copy from

    val mode: String = mode_example // String | Set to 'copy' for copying an existing job

    val jenkinsCrumb: String = jenkinsCrumb_example // String | CSRF protection token

    val contentType: String = contentType_example // String | Content type header application/xml

    val body: String = body_example // String | Job configuration in config.xml format
    
    val request = apiInstance.postCreateItem(name, from, mode, jenkinsCrumb, contentType, body)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling RemoteAccessApi#postCreateItem")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling RemoteAccessApi#postCreateItem")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the new job |
 **from** | **String**| Existing job to copy from | [optional]
 **mode** | **String**| Set to &#39;copy&#39; for copying an existing job | [optional]
 **jenkinsCrumb** | **String**| CSRF protection token | [optional]
 **contentType** | **String**| Content type header application/xml | [optional]
 **body** | **String**| Job configuration in config.xml format | [optional]

### Return type


ApiRequest[Unit] (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully created a new job |  -  |
| **400** | An error has occurred - error message is embedded inside the HTML response |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## postCreateView

> postCreateView(postCreateViewRequest): ApiRequest[Unit]



Create a new view using view configuration

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
    val apiInstance = RemoteAccessApi("http://localhost")
    val name: String = name_example // String | Name of the new view

    val jenkinsCrumb: String = jenkinsCrumb_example // String | CSRF protection token

    val contentType: String = contentType_example // String | Content type header application/xml

    val body: String = body_example // String | View configuration in config.xml format
    
    val request = apiInstance.postCreateView(name, jenkinsCrumb, contentType, body)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling RemoteAccessApi#postCreateView")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling RemoteAccessApi#postCreateView")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the new view |
 **jenkinsCrumb** | **String**| CSRF protection token | [optional]
 **contentType** | **String**| Content type header application/xml | [optional]
 **body** | **String**| View configuration in config.xml format | [optional]

### Return type


ApiRequest[Unit] (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully created the view |  -  |
| **400** | An error has occurred - error message is embedded inside the HTML response |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |


## postJobBuild

> postJobBuild(postJobBuildRequest): ApiRequest[Unit]



Build a job

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
    val apiInstance = RemoteAccessApi("http://localhost")
    val name: String = name_example // String | Name of the job

    val json: String = json_example // String | 

    val token: String = token_example // String | 

    val jenkinsCrumb: String = jenkinsCrumb_example // String | CSRF protection token
    
    val request = apiInstance.postJobBuild(name, json, token, jenkinsCrumb)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling RemoteAccessApi#postJobBuild")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling RemoteAccessApi#postJobBuild")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job |
 **json** | **String**|  |
 **token** | **String**|  | [optional]
 **jenkinsCrumb** | **String**| CSRF protection token | [optional]

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
| **200** | Successfully built the job (backward compatibility for older versions of Jenkins) |  -  |
| **201** | Successfully built the job |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Job cannot be found on Jenkins instance |  -  |


## postJobConfig

> postJobConfig(postJobConfigRequest): ApiRequest[Unit]



Update job configuration

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
    val apiInstance = RemoteAccessApi("http://localhost")
    val name: String = name_example // String | Name of the job

    val body: String = body_example // String | Job configuration in config.xml format

    val jenkinsCrumb: String = jenkinsCrumb_example // String | CSRF protection token
    
    val request = apiInstance.postJobConfig(name, body, jenkinsCrumb)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling RemoteAccessApi#postJobConfig")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling RemoteAccessApi#postJobConfig")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job |
 **body** | **String**| Job configuration in config.xml format |
 **jenkinsCrumb** | **String**| CSRF protection token | [optional]

### Return type


ApiRequest[Unit] (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully retrieved job configuration in config.xml format |  -  |
| **400** | An error has occurred - error message is embedded inside the HTML response |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Job cannot be found on Jenkins instance |  -  |


## postJobDelete

> postJobDelete(postJobDeleteRequest): ApiRequest[Unit]



Delete a job

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
    val apiInstance = RemoteAccessApi("http://localhost")
    val name: String = name_example // String | Name of the job

    val jenkinsCrumb: String = jenkinsCrumb_example // String | CSRF protection token
    
    val request = apiInstance.postJobDelete(name, jenkinsCrumb)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling RemoteAccessApi#postJobDelete")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling RemoteAccessApi#postJobDelete")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job |
 **jenkinsCrumb** | **String**| CSRF protection token | [optional]

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
| **200** | Successfully deleted the job |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Job cannot be found on Jenkins instance |  -  |


## postJobDisable

> postJobDisable(postJobDisableRequest): ApiRequest[Unit]



Disable a job

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
    val apiInstance = RemoteAccessApi("http://localhost")
    val name: String = name_example // String | Name of the job

    val jenkinsCrumb: String = jenkinsCrumb_example // String | CSRF protection token
    
    val request = apiInstance.postJobDisable(name, jenkinsCrumb)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling RemoteAccessApi#postJobDisable")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling RemoteAccessApi#postJobDisable")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job |
 **jenkinsCrumb** | **String**| CSRF protection token | [optional]

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
| **200** | Successfully disabled the job |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Job cannot be found on Jenkins instance |  -  |


## postJobEnable

> postJobEnable(postJobEnableRequest): ApiRequest[Unit]



Enable a job

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
    val apiInstance = RemoteAccessApi("http://localhost")
    val name: String = name_example // String | Name of the job

    val jenkinsCrumb: String = jenkinsCrumb_example // String | CSRF protection token
    
    val request = apiInstance.postJobEnable(name, jenkinsCrumb)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling RemoteAccessApi#postJobEnable")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling RemoteAccessApi#postJobEnable")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job |
 **jenkinsCrumb** | **String**| CSRF protection token | [optional]

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
| **200** | Successfully enabled the job |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Job cannot be found on Jenkins instance |  -  |


## postJobLastBuildStop

> postJobLastBuildStop(postJobLastBuildStopRequest): ApiRequest[Unit]



Stop a job

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
    val apiInstance = RemoteAccessApi("http://localhost")
    val name: String = name_example // String | Name of the job

    val jenkinsCrumb: String = jenkinsCrumb_example // String | CSRF protection token
    
    val request = apiInstance.postJobLastBuildStop(name, jenkinsCrumb)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling RemoteAccessApi#postJobLastBuildStop")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling RemoteAccessApi#postJobLastBuildStop")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job |
 **jenkinsCrumb** | **String**| CSRF protection token | [optional]

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
| **200** | Successfully stopped the job |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | Job cannot be found on Jenkins instance |  -  |


## postViewConfig

> postViewConfig(postViewConfigRequest): ApiRequest[Unit]



Update view configuration

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
    val apiInstance = RemoteAccessApi("http://localhost")
    val name: String = name_example // String | Name of the view

    val body: String = body_example // String | View configuration in config.xml format

    val jenkinsCrumb: String = jenkinsCrumb_example // String | CSRF protection token
    
    val request = apiInstance.postViewConfig(name, body, jenkinsCrumb)
    val response = apiInvoker.execute(request)

    response.onComplete {
        case Success(ApiResponse(code, content, headers)) =>
            System.out.println(s"Status code: $code}")
            System.out.println(s"Response headers: ${headers.mkString(", ")}")
        
        case Failure(error @ ApiError(code, message, responseContent, cause, headers)) =>
            System.err.println("Exception when calling RemoteAccessApi#postViewConfig")
            System.err.println(s"Status code: $code}")
            System.err.println(s"Reason: $responseContent")
            System.err.println(s"Response headers: ${headers.mkString(", ")}")
            error.printStackTrace();

        case Failure(exception) => 
            System.err.println("Exception when calling RemoteAccessApi#postViewConfig")
            exception.printStackTrace();
    }
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the view |
 **body** | **String**| View configuration in config.xml format |
 **jenkinsCrumb** | **String**| CSRF protection token | [optional]

### Return type


ApiRequest[Unit] (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: */*

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successfully updated view configuration |  -  |
| **400** | An error has occurred - error message is embedded inside the HTML response |  -  |
| **401** | Authentication failed - incorrect username and/or password |  -  |
| **403** | Jenkins requires authentication - please set username and password |  -  |
| **404** | View cannot be found on Jenkins instance |  -  |

