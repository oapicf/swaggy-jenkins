# RemoteAccessApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getComputer**](RemoteAccessApi.md#getComputer) | **GET** /computer/api/json | 
[**getJenkins**](RemoteAccessApi.md#getJenkins) | **GET** /api/json | 
[**getJob**](RemoteAccessApi.md#getJob) | **GET** /job/{name}/api/json | 
[**getJobConfig**](RemoteAccessApi.md#getJobConfig) | **GET** /job/{name}/config.xml | 
[**getJobLastBuild**](RemoteAccessApi.md#getJobLastBuild) | **GET** /job/{name}/lastBuild/api/json | 
[**getJobProgressiveText**](RemoteAccessApi.md#getJobProgressiveText) | **GET** /job/{name}/{number}/logText/progressiveText | 
[**getQueue**](RemoteAccessApi.md#getQueue) | **GET** /queue/api/json | 
[**getQueueItem**](RemoteAccessApi.md#getQueueItem) | **GET** /queue/item/{number}/api/json | 
[**getView**](RemoteAccessApi.md#getView) | **GET** /view/{name}/api/json | 
[**getViewConfig**](RemoteAccessApi.md#getViewConfig) | **GET** /view/{name}/config.xml | 
[**headJenkins**](RemoteAccessApi.md#headJenkins) | **HEAD** /api/json | 
[**postCreateItem**](RemoteAccessApi.md#postCreateItem) | **POST** /createItem | 
[**postCreateView**](RemoteAccessApi.md#postCreateView) | **POST** /createView | 
[**postJobBuild**](RemoteAccessApi.md#postJobBuild) | **POST** /job/{name}/build | 
[**postJobConfig**](RemoteAccessApi.md#postJobConfig) | **POST** /job/{name}/config.xml | 
[**postJobDelete**](RemoteAccessApi.md#postJobDelete) | **POST** /job/{name}/doDelete | 
[**postJobDisable**](RemoteAccessApi.md#postJobDisable) | **POST** /job/{name}/disable | 
[**postJobEnable**](RemoteAccessApi.md#postJobEnable) | **POST** /job/{name}/enable | 
[**postJobLastBuildStop**](RemoteAccessApi.md#postJobLastBuildStop) | **POST** /job/{name}/lastBuild/stop | 
[**postViewConfig**](RemoteAccessApi.md#postViewConfig) | **POST** /view/{name}/config.xml | 


<a name="getComputer"></a>
# **getComputer**
> ComputerSet getComputer(depth)



Retrieve computer details

### Example
```java
// Import classes:
import com.cliffano.swaggyjenkins.ApiClient;
import com.cliffano.swaggyjenkins.ApiException;
import com.cliffano.swaggyjenkins.Configuration;
import com.cliffano.swaggyjenkins.auth.*;
import com.cliffano.swaggyjenkins.models.*;
import com.cliffano.swaggyjenkins.api.RemoteAccessApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    RemoteAccessApi apiInstance = new RemoteAccessApi(defaultClient);
    Integer depth = 56; // Integer | Recursion depth in response model
    try {
      ComputerSet result = apiInstance.getComputer(depth);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RemoteAccessApi#getComputer");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **depth** | **Integer**| Recursion depth in response model |

### Return type

[**ComputerSet**](ComputerSet.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved computer details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

<a name="getJenkins"></a>
# **getJenkins**
> Hudson getJenkins()



Retrieve Jenkins details

### Example
```java
// Import classes:
import com.cliffano.swaggyjenkins.ApiClient;
import com.cliffano.swaggyjenkins.ApiException;
import com.cliffano.swaggyjenkins.Configuration;
import com.cliffano.swaggyjenkins.auth.*;
import com.cliffano.swaggyjenkins.models.*;
import com.cliffano.swaggyjenkins.api.RemoteAccessApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    RemoteAccessApi apiInstance = new RemoteAccessApi(defaultClient);
    try {
      Hudson result = apiInstance.getJenkins();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RemoteAccessApi#getJenkins");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Hudson**](Hudson.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved Jenkins details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

<a name="getJob"></a>
# **getJob**
> FreeStyleProject getJob(name)



Retrieve job details

### Example
```java
// Import classes:
import com.cliffano.swaggyjenkins.ApiClient;
import com.cliffano.swaggyjenkins.ApiException;
import com.cliffano.swaggyjenkins.Configuration;
import com.cliffano.swaggyjenkins.auth.*;
import com.cliffano.swaggyjenkins.models.*;
import com.cliffano.swaggyjenkins.api.RemoteAccessApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    RemoteAccessApi apiInstance = new RemoteAccessApi(defaultClient);
    String name = "name_example"; // String | Name of the job
    try {
      FreeStyleProject result = apiInstance.getJob(name);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RemoteAccessApi#getJob");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job |

### Return type

[**FreeStyleProject**](FreeStyleProject.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved job details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | Job cannot be found on Jenkins instance |  -  |

<a name="getJobConfig"></a>
# **getJobConfig**
> String getJobConfig(name)



Retrieve job configuration

### Example
```java
// Import classes:
import com.cliffano.swaggyjenkins.ApiClient;
import com.cliffano.swaggyjenkins.ApiException;
import com.cliffano.swaggyjenkins.Configuration;
import com.cliffano.swaggyjenkins.auth.*;
import com.cliffano.swaggyjenkins.models.*;
import com.cliffano.swaggyjenkins.api.RemoteAccessApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    RemoteAccessApi apiInstance = new RemoteAccessApi(defaultClient);
    String name = "name_example"; // String | Name of the job
    try {
      String result = apiInstance.getJobConfig(name);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RemoteAccessApi#getJobConfig");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job |

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved job configuration in config.xml format |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | Job cannot be found on Jenkins instance |  -  |

<a name="getJobLastBuild"></a>
# **getJobLastBuild**
> FreeStyleBuild getJobLastBuild(name)



Retrieve job&#39;s last build details

### Example
```java
// Import classes:
import com.cliffano.swaggyjenkins.ApiClient;
import com.cliffano.swaggyjenkins.ApiException;
import com.cliffano.swaggyjenkins.Configuration;
import com.cliffano.swaggyjenkins.auth.*;
import com.cliffano.swaggyjenkins.models.*;
import com.cliffano.swaggyjenkins.api.RemoteAccessApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    RemoteAccessApi apiInstance = new RemoteAccessApi(defaultClient);
    String name = "name_example"; // String | Name of the job
    try {
      FreeStyleBuild result = apiInstance.getJobLastBuild(name);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RemoteAccessApi#getJobLastBuild");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job |

### Return type

[**FreeStyleBuild**](FreeStyleBuild.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved job&#39;s last build details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | Job cannot be found on Jenkins instance |  -  |

<a name="getJobProgressiveText"></a>
# **getJobProgressiveText**
> getJobProgressiveText(name, number, start)



Retrieve job&#39;s build progressive text output

### Example
```java
// Import classes:
import com.cliffano.swaggyjenkins.ApiClient;
import com.cliffano.swaggyjenkins.ApiException;
import com.cliffano.swaggyjenkins.Configuration;
import com.cliffano.swaggyjenkins.auth.*;
import com.cliffano.swaggyjenkins.models.*;
import com.cliffano.swaggyjenkins.api.RemoteAccessApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    RemoteAccessApi apiInstance = new RemoteAccessApi(defaultClient);
    String name = "name_example"; // String | Name of the job
    String number = "number_example"; // String | Build number
    String start = "start_example"; // String | Starting point of progressive text output
    try {
      apiInstance.getJobProgressiveText(name, number, start);
    } catch (ApiException e) {
      System.err.println("Exception when calling RemoteAccessApi#getJobProgressiveText");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
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

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved job&#39;s build progressive text output |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | Job cannot be found on Jenkins instance |  -  |

<a name="getQueue"></a>
# **getQueue**
> Queue getQueue()



Retrieve queue details

### Example
```java
// Import classes:
import com.cliffano.swaggyjenkins.ApiClient;
import com.cliffano.swaggyjenkins.ApiException;
import com.cliffano.swaggyjenkins.Configuration;
import com.cliffano.swaggyjenkins.auth.*;
import com.cliffano.swaggyjenkins.models.*;
import com.cliffano.swaggyjenkins.api.RemoteAccessApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    RemoteAccessApi apiInstance = new RemoteAccessApi(defaultClient);
    try {
      Queue result = apiInstance.getQueue();
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RemoteAccessApi#getQueue");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Queue**](Queue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved queue details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

<a name="getQueueItem"></a>
# **getQueueItem**
> Queue getQueueItem(number)



Retrieve queued item details

### Example
```java
// Import classes:
import com.cliffano.swaggyjenkins.ApiClient;
import com.cliffano.swaggyjenkins.ApiException;
import com.cliffano.swaggyjenkins.Configuration;
import com.cliffano.swaggyjenkins.auth.*;
import com.cliffano.swaggyjenkins.models.*;
import com.cliffano.swaggyjenkins.api.RemoteAccessApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    RemoteAccessApi apiInstance = new RemoteAccessApi(defaultClient);
    String number = "number_example"; // String | Queue number
    try {
      Queue result = apiInstance.getQueueItem(number);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RemoteAccessApi#getQueueItem");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **number** | **String**| Queue number |

### Return type

[**Queue**](Queue.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved queued item details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

<a name="getView"></a>
# **getView**
> ListView getView(name)



Retrieve view details

### Example
```java
// Import classes:
import com.cliffano.swaggyjenkins.ApiClient;
import com.cliffano.swaggyjenkins.ApiException;
import com.cliffano.swaggyjenkins.Configuration;
import com.cliffano.swaggyjenkins.auth.*;
import com.cliffano.swaggyjenkins.models.*;
import com.cliffano.swaggyjenkins.api.RemoteAccessApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    RemoteAccessApi apiInstance = new RemoteAccessApi(defaultClient);
    String name = "name_example"; // String | Name of the view
    try {
      ListView result = apiInstance.getView(name);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RemoteAccessApi#getView");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the view |

### Return type

[**ListView**](ListView.md)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved view details |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | View cannot be found on Jenkins instance |  -  |

<a name="getViewConfig"></a>
# **getViewConfig**
> String getViewConfig(name)



Retrieve view configuration

### Example
```java
// Import classes:
import com.cliffano.swaggyjenkins.ApiClient;
import com.cliffano.swaggyjenkins.ApiException;
import com.cliffano.swaggyjenkins.Configuration;
import com.cliffano.swaggyjenkins.auth.*;
import com.cliffano.swaggyjenkins.models.*;
import com.cliffano.swaggyjenkins.api.RemoteAccessApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    RemoteAccessApi apiInstance = new RemoteAccessApi(defaultClient);
    String name = "name_example"; // String | Name of the view
    try {
      String result = apiInstance.getViewConfig(name);
      System.out.println(result);
    } catch (ApiException e) {
      System.err.println("Exception when calling RemoteAccessApi#getViewConfig");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the view |

### Return type

**String**

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/xml

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved view configuration in config.xml format |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | View cannot be found on Jenkins instance |  -  |

<a name="headJenkins"></a>
# **headJenkins**
> headJenkins()



Retrieve Jenkins headers

### Example
```java
// Import classes:
import com.cliffano.swaggyjenkins.ApiClient;
import com.cliffano.swaggyjenkins.ApiException;
import com.cliffano.swaggyjenkins.Configuration;
import com.cliffano.swaggyjenkins.auth.*;
import com.cliffano.swaggyjenkins.models.*;
import com.cliffano.swaggyjenkins.api.RemoteAccessApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    RemoteAccessApi apiInstance = new RemoteAccessApi(defaultClient);
    try {
      apiInstance.headJenkins();
    } catch (ApiException e) {
      System.err.println("Exception when calling RemoteAccessApi#headJenkins");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved Jenkins headers |  * x-jenkins - Jenkins version number <br>  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

<a name="postCreateItem"></a>
# **postCreateItem**
> postCreateItem(name, from, mode, jenkinsCrumb, contentType, body)



Create a new job using job configuration, or copied from an existing job

### Example
```java
// Import classes:
import com.cliffano.swaggyjenkins.ApiClient;
import com.cliffano.swaggyjenkins.ApiException;
import com.cliffano.swaggyjenkins.Configuration;
import com.cliffano.swaggyjenkins.auth.*;
import com.cliffano.swaggyjenkins.models.*;
import com.cliffano.swaggyjenkins.api.RemoteAccessApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    RemoteAccessApi apiInstance = new RemoteAccessApi(defaultClient);
    String name = "name_example"; // String | Name of the new job
    String from = "from_example"; // String | Existing job to copy from
    String mode = "mode_example"; // String | Set to 'copy' for copying an existing job
    String jenkinsCrumb = "jenkinsCrumb_example"; // String | CSRF protection token
    String contentType = "contentType_example"; // String | Content type header application/xml
    String body = "body_example"; // String | Job configuration in config.xml format
    try {
      apiInstance.postCreateItem(name, from, mode, jenkinsCrumb, contentType, body);
    } catch (ApiException e) {
      System.err.println("Exception when calling RemoteAccessApi#postCreateItem");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
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

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully created a new job |  -  |
**400** | An error has occurred - error message is embedded inside the HTML response |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

<a name="postCreateView"></a>
# **postCreateView**
> postCreateView(name, jenkinsCrumb, contentType, body)



Create a new view using view configuration

### Example
```java
// Import classes:
import com.cliffano.swaggyjenkins.ApiClient;
import com.cliffano.swaggyjenkins.ApiException;
import com.cliffano.swaggyjenkins.Configuration;
import com.cliffano.swaggyjenkins.auth.*;
import com.cliffano.swaggyjenkins.models.*;
import com.cliffano.swaggyjenkins.api.RemoteAccessApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    RemoteAccessApi apiInstance = new RemoteAccessApi(defaultClient);
    String name = "name_example"; // String | Name of the new view
    String jenkinsCrumb = "jenkinsCrumb_example"; // String | CSRF protection token
    String contentType = "contentType_example"; // String | Content type header application/xml
    String body = "body_example"; // String | View configuration in config.xml format
    try {
      apiInstance.postCreateView(name, jenkinsCrumb, contentType, body);
    } catch (ApiException e) {
      System.err.println("Exception when calling RemoteAccessApi#postCreateView");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
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

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully created the view |  -  |
**400** | An error has occurred - error message is embedded inside the HTML response |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |

<a name="postJobBuild"></a>
# **postJobBuild**
> postJobBuild(name, json, token, jenkinsCrumb)



Build a job

### Example
```java
// Import classes:
import com.cliffano.swaggyjenkins.ApiClient;
import com.cliffano.swaggyjenkins.ApiException;
import com.cliffano.swaggyjenkins.Configuration;
import com.cliffano.swaggyjenkins.auth.*;
import com.cliffano.swaggyjenkins.models.*;
import com.cliffano.swaggyjenkins.api.RemoteAccessApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    RemoteAccessApi apiInstance = new RemoteAccessApi(defaultClient);
    String name = "name_example"; // String | Name of the job
    String json = "json_example"; // String | 
    String token = "token_example"; // String | 
    String jenkinsCrumb = "jenkinsCrumb_example"; // String | CSRF protection token
    try {
      apiInstance.postJobBuild(name, json, token, jenkinsCrumb);
    } catch (ApiException e) {
      System.err.println("Exception when calling RemoteAccessApi#postJobBuild");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
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

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully built the job (backward compatibility for older versions of Jenkins) |  -  |
**201** | Successfully built the job |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | Job cannot be found on Jenkins instance |  -  |

<a name="postJobConfig"></a>
# **postJobConfig**
> postJobConfig(name, body, jenkinsCrumb)



Update job configuration

### Example
```java
// Import classes:
import com.cliffano.swaggyjenkins.ApiClient;
import com.cliffano.swaggyjenkins.ApiException;
import com.cliffano.swaggyjenkins.Configuration;
import com.cliffano.swaggyjenkins.auth.*;
import com.cliffano.swaggyjenkins.models.*;
import com.cliffano.swaggyjenkins.api.RemoteAccessApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    RemoteAccessApi apiInstance = new RemoteAccessApi(defaultClient);
    String name = "name_example"; // String | Name of the job
    String body = "body_example"; // String | Job configuration in config.xml format
    String jenkinsCrumb = "jenkinsCrumb_example"; // String | CSRF protection token
    try {
      apiInstance.postJobConfig(name, body, jenkinsCrumb);
    } catch (ApiException e) {
      System.err.println("Exception when calling RemoteAccessApi#postJobConfig");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
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

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully retrieved job configuration in config.xml format |  -  |
**400** | An error has occurred - error message is embedded inside the HTML response |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | Job cannot be found on Jenkins instance |  -  |

<a name="postJobDelete"></a>
# **postJobDelete**
> postJobDelete(name, jenkinsCrumb)



Delete a job

### Example
```java
// Import classes:
import com.cliffano.swaggyjenkins.ApiClient;
import com.cliffano.swaggyjenkins.ApiException;
import com.cliffano.swaggyjenkins.Configuration;
import com.cliffano.swaggyjenkins.auth.*;
import com.cliffano.swaggyjenkins.models.*;
import com.cliffano.swaggyjenkins.api.RemoteAccessApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    RemoteAccessApi apiInstance = new RemoteAccessApi(defaultClient);
    String name = "name_example"; // String | Name of the job
    String jenkinsCrumb = "jenkinsCrumb_example"; // String | CSRF protection token
    try {
      apiInstance.postJobDelete(name, jenkinsCrumb);
    } catch (ApiException e) {
      System.err.println("Exception when calling RemoteAccessApi#postJobDelete");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job |
 **jenkinsCrumb** | **String**| CSRF protection token | [optional]

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully deleted the job |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | Job cannot be found on Jenkins instance |  -  |

<a name="postJobDisable"></a>
# **postJobDisable**
> postJobDisable(name, jenkinsCrumb)



Disable a job

### Example
```java
// Import classes:
import com.cliffano.swaggyjenkins.ApiClient;
import com.cliffano.swaggyjenkins.ApiException;
import com.cliffano.swaggyjenkins.Configuration;
import com.cliffano.swaggyjenkins.auth.*;
import com.cliffano.swaggyjenkins.models.*;
import com.cliffano.swaggyjenkins.api.RemoteAccessApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    RemoteAccessApi apiInstance = new RemoteAccessApi(defaultClient);
    String name = "name_example"; // String | Name of the job
    String jenkinsCrumb = "jenkinsCrumb_example"; // String | CSRF protection token
    try {
      apiInstance.postJobDisable(name, jenkinsCrumb);
    } catch (ApiException e) {
      System.err.println("Exception when calling RemoteAccessApi#postJobDisable");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job |
 **jenkinsCrumb** | **String**| CSRF protection token | [optional]

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully disabled the job |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | Job cannot be found on Jenkins instance |  -  |

<a name="postJobEnable"></a>
# **postJobEnable**
> postJobEnable(name, jenkinsCrumb)



Enable a job

### Example
```java
// Import classes:
import com.cliffano.swaggyjenkins.ApiClient;
import com.cliffano.swaggyjenkins.ApiException;
import com.cliffano.swaggyjenkins.Configuration;
import com.cliffano.swaggyjenkins.auth.*;
import com.cliffano.swaggyjenkins.models.*;
import com.cliffano.swaggyjenkins.api.RemoteAccessApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    RemoteAccessApi apiInstance = new RemoteAccessApi(defaultClient);
    String name = "name_example"; // String | Name of the job
    String jenkinsCrumb = "jenkinsCrumb_example"; // String | CSRF protection token
    try {
      apiInstance.postJobEnable(name, jenkinsCrumb);
    } catch (ApiException e) {
      System.err.println("Exception when calling RemoteAccessApi#postJobEnable");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job |
 **jenkinsCrumb** | **String**| CSRF protection token | [optional]

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully enabled the job |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | Job cannot be found on Jenkins instance |  -  |

<a name="postJobLastBuildStop"></a>
# **postJobLastBuildStop**
> postJobLastBuildStop(name, jenkinsCrumb)



Stop a job

### Example
```java
// Import classes:
import com.cliffano.swaggyjenkins.ApiClient;
import com.cliffano.swaggyjenkins.ApiException;
import com.cliffano.swaggyjenkins.Configuration;
import com.cliffano.swaggyjenkins.auth.*;
import com.cliffano.swaggyjenkins.models.*;
import com.cliffano.swaggyjenkins.api.RemoteAccessApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    RemoteAccessApi apiInstance = new RemoteAccessApi(defaultClient);
    String name = "name_example"; // String | Name of the job
    String jenkinsCrumb = "jenkinsCrumb_example"; // String | CSRF protection token
    try {
      apiInstance.postJobLastBuildStop(name, jenkinsCrumb);
    } catch (ApiException e) {
      System.err.println("Exception when calling RemoteAccessApi#postJobLastBuildStop");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
  }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the job |
 **jenkinsCrumb** | **String**| CSRF protection token | [optional]

### Return type

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully stopped the job |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | Job cannot be found on Jenkins instance |  -  |

<a name="postViewConfig"></a>
# **postViewConfig**
> postViewConfig(name, body, jenkinsCrumb)



Update view configuration

### Example
```java
// Import classes:
import com.cliffano.swaggyjenkins.ApiClient;
import com.cliffano.swaggyjenkins.ApiException;
import com.cliffano.swaggyjenkins.Configuration;
import com.cliffano.swaggyjenkins.auth.*;
import com.cliffano.swaggyjenkins.models.*;
import com.cliffano.swaggyjenkins.api.RemoteAccessApi;

public class Example {
  public static void main(String[] args) {
    ApiClient defaultClient = Configuration.getDefaultApiClient();
    defaultClient.setBasePath("http://localhost");
    
    // Configure HTTP basic authorization: jenkins_auth
    HttpBasicAuth jenkins_auth = (HttpBasicAuth) defaultClient.getAuthentication("jenkins_auth");
    jenkins_auth.setUsername("YOUR USERNAME");
    jenkins_auth.setPassword("YOUR PASSWORD");

    RemoteAccessApi apiInstance = new RemoteAccessApi(defaultClient);
    String name = "name_example"; // String | Name of the view
    String body = "body_example"; // String | View configuration in config.xml format
    String jenkinsCrumb = "jenkinsCrumb_example"; // String | CSRF protection token
    try {
      apiInstance.postViewConfig(name, body, jenkinsCrumb);
    } catch (ApiException e) {
      System.err.println("Exception when calling RemoteAccessApi#postViewConfig");
      System.err.println("Status code: " + e.getCode());
      System.err.println("Reason: " + e.getResponseBody());
      System.err.println("Response headers: " + e.getResponseHeaders());
      e.printStackTrace();
    }
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

null (empty response body)

### Authorization

[jenkins_auth](../README.md#jenkins_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: */*

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Successfully updated view configuration |  -  |
**400** | An error has occurred - error message is embedded inside the HTML response |  -  |
**401** | Authentication failed - incorrect username and/or password |  -  |
**403** | Jenkins requires authentication - please set username and password |  -  |
**404** | View cannot be found on Jenkins instance |  -  |

